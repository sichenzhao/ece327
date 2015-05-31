// Copyright (C) 1991-2011 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

// DATE "05/31/2015 15:49:25"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module fir_top_chip (	clock_50,
	clock_27,
	key,
	sw,
	ledg,
	ledr,
	hex0,
	hex1,
	hex2,
	hex3,
	hex4,
	hex5,
	hex6,
	hex7,
	aud_xck,
	aud_bclk,
	aud_dacdat,
	aud_daclrck,
	aud_adclrck,
	i2c_sdat,
	i2c_sclk);
input 	clock_50;
input 	clock_27;
input 	[3:0] key;
input 	[17:0] sw;
output 	[8:0] ledg;
output 	[17:0] ledr;
output 	[6:0] hex0;
output 	[6:0] hex1;
output 	[6:0] hex2;
output 	[6:0] hex3;
output 	[6:0] hex4;
output 	[6:0] hex5;
output 	[6:0] hex6;
output 	[6:0] hex7;
output 	aud_xck;
inout 	aud_bclk;
output 	aud_dacdat;
output 	aud_daclrck;
output 	aud_adclrck;
inout 	i2c_sdat;
output 	i2c_sclk;

// Design Ports Information
// ledg[0]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[1]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[2]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[4]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[5]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[6]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledg[8]	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ledr[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// hex7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_xck	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_dacdat	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_daclrck	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// aud_adclrck	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// i2c_sclk	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// sw[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i2c_sdat	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// clock_27	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// aud_bclk	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// clock_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[2]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// key[3]	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// sw[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("fir_top_v.sdo");
// synopsys translate_on

wire nx38664z2;
wire nx38664z3;
wire nx38664z5;
wire nx38664z6;
wire nx38664z9;
wire nx38664z8;
wire nx4119z1;
wire nx4119z7;
wire nx4119z6;
wire nx4119z8;
wire nx4119z10;
wire nx4119z14;
wire nx4119z15;
wire nx4119z13;
wire nx17637z2;
wire \u_audio_dac_p1_altpll|pll~clk ;
wire \u_audio_dac_p1_altpll|pll~CLK2 ;
wire audio_out_4_;
wire audio_out_6_;
wire audio_out_1_;
wire audio_out_0_;
wire nx24999z5;
wire audio_out_2_;
wire audio_out_3_;
wire nx24999z4;
wire audio_out_9_;
wire audio_out_11_;
wire audio_out_12_;
wire audio_out_15_;
wire \low_pass|prod_4__mults20_3|nx43955z1 ;
wire \low_pass|prod_4__mults20_3|nx62798z1 ;
wire \low_pass|modgen_add_10|nx38970z1 ;
wire \low_pass|modgen_add_10|nx39967z1 ;
wire \low_pass|modgen_add_10|nx40964z1 ;
wire \low_pass|prod_2__mults20_2|d_8_ ;
wire \low_pass|prod_0__mults21_0|nx45949z1 ;
wire \low_pass|prod_0__mults21_0|nx46946z1 ;
wire \low_pass|prod_0__mults21_0|nx62798z1 ;
wire \low_pass|modgen_add_11|nx37973z1 ;
wire \low_pass|modgen_add_11|nx38970z1 ;
wire \low_pass|modgen_add_11|nx41961z1 ;
wire \low_pass|modgen_add_11|nx42958z1 ;
wire \low_pass|modgen_add_12|nx37973z1 ;
wire \low_pass|modgen_add_12|nx41961z1 ;
wire \low_pass|modgen_add_12|nx42958z1 ;
wire \low_pass|modgen_add_13|nx37973z1 ;
wire \low_pass|modgen_add_13|nx38970z1 ;
wire \low_pass|modgen_add_13|nx39967z1 ;
wire \low_pass|modgen_add_13|nx42958z1 ;
wire \low_pass|prod_6__mults19_5|nx41961z3 ;
wire \low_pass|modgen_add_4|nx40964z1 ;
wire \low_pass|modgen_add_4|nx42958z1 ;
wire \low_pass|prod_5__mults21_4|d_2_ ;
wire \low_pass|prod_5__mults21_4|d_7_ ;
wire \low_pass|prod_5__mults21_4|d_5__dup_191 ;
wire \low_pass|prod_5__mults21_4|d_6__dup_190 ;
wire \low_pass|prod_5__mults21_4|d_7__dup_189 ;
wire \low_pass|modgen_add_8|nx37973z1 ;
wire \low_pass|modgen_add_8|nx38970z1 ;
wire \low_pass|modgen_add_8|nx41961z1 ;
wire \low_pass|modgen_add_9|nx40964z1 ;
wire \low_pass|modgen_add_9|nx41961z1 ;
wire \low_pass|modgen_add_14|nx39967z1 ;
wire \low_pass|modgen_add_14|nx40964z1 ;
wire \low_pass|modgen_add_3|nx37973z1 ;
wire \low_pass|modgen_add_3|nx38970z1 ;
wire \low_pass|modgen_add_3|nx39967z1 ;
wire \low_pass|modgen_add_3|nx41961z1 ;
wire \low_pass|modgen_add_5|nx38970z1 ;
wire \low_pass|modgen_add_5|nx39967z1 ;
wire \low_pass|modgen_add_5|nx40964z1 ;
wire \low_pass|modgen_add_0|nx37973z1 ;
wire \low_pass|modgen_add_0|nx38970z1 ;
wire \low_pass|modgen_add_0|nx39967z1 ;
wire \low_pass|modgen_add_0|nx40964z1 ;
wire \low_pass|modgen_add_1|nx41961z1 ;
wire \low_pass|modgen_add_1|nx42958z1 ;
wire \low_pass|modgen_add_2|nx37973z1 ;
wire \low_pass|modgen_add_2|nx41961z1 ;
wire \low_pass|modgen_add_2|nx42958z1 ;
wire \low_pass|modgen_add_6|nx37973z1 ;
wire \low_pass|modgen_add_6|nx38970z1 ;
wire \low_pass|modgen_add_6|nx41961z1 ;
wire \low_pass|modgen_add_6|nx42958z1 ;
wire \low_pass|modgen_add_15|nx37973z1 ;
wire \low_pass|modgen_add_15|nx38970z1 ;
wire \low_pass|modgen_add_15|nx39967z1 ;
wire \low_pass|modgen_add_15|nx40964z1 ;
wire \low_pass|modgen_add_15|nx41961z1 ;
wire audio_out_1n1ss1_4_;
wire audio_out_1n1ss1_6_;
wire \low_pass|prod_4__mults20_3|nx63795z1 ;
wire \low_pass|modgen_add_11|nx43955z1 ;
wire \low_pass|modgen_add_12|nx43955z1 ;
wire \low_pass|prod_5__mults21_4|b_10_ ;
wire \low_pass|modgen_add_8|nx43955z1 ;
wire \low_pass|modgen_add_9|nx43955z1 ;
wire \low_pass|modgen_add_14|nx43955z1 ;
wire \low_pass|modgen_add_3|nx43955z1 ;
wire \low_pass|modgen_add_1|nx43955z1 ;
wire \low_pass|modgen_add_2|nx43955z1 ;
wire \low_pass|modgen_add_15|nx43955z1 ;
wire \low_pass|prod_0__mults21_0|nx253z1 ;
wire \low_pass|modgen_add_11|nx44952z1 ;
wire \low_pass|modgen_add_12|nx44952z1 ;
wire \low_pass|modgen_add_4|nx44952z1 ;
wire \low_pass|prod_5__mults21_4|nx3244z5 ;
wire \low_pass|modgen_add_9|nx44952z1 ;
wire \low_pass|modgen_add_1|nx44952z1 ;
wire \low_pass|modgen_add_2|nx44952z1 ;
wire \low_pass|modgen_add_6|nx44952z1 ;
wire audio_out_1n1ss1_9_;
wire \low_pass|modgen_add_10|nx45949z1 ;
wire \low_pass|prod_0__mults21_0|nx5238z8 ;
wire \low_pass|prod_0__mults21_0|nx5238z6 ;
wire \low_pass|prod_0__mults21_0|nx2247z1 ;
wire \low_pass|modgen_add_11|nx2247z21 ;
wire \low_pass|modgen_add_11|nx2247z18 ;
wire \low_pass|modgen_add_11|nx46946z1 ;
wire \low_pass|modgen_add_12|nx2247z21 ;
wire \low_pass|modgen_add_12|nx2247z18 ;
wire \low_pass|modgen_add_12|nx46946z1 ;
wire \low_pass|prod_5__mults21_4|d_12_ ;
wire \low_pass|modgen_add_8|nx45949z1 ;
wire \low_pass|modgen_add_8|nx2247z19 ;
wire \low_pass|modgen_add_9|nx45949z1 ;
wire \low_pass|modgen_add_9|nx46946z1 ;
wire \low_pass|modgen_add_14|nx45949z1 ;
wire \low_pass|modgen_add_3|nx46946z1 ;
wire \low_pass|modgen_add_5|nx45949z1 ;
wire \low_pass|modgen_add_0|nx2247z21 ;
wire \low_pass|modgen_add_0|nx2247z18 ;
wire \low_pass|modgen_add_0|nx46946z1 ;
wire \low_pass|modgen_add_1|nx45949z1 ;
wire \low_pass|modgen_add_2|nx46946z1 ;
wire \low_pass|modgen_add_6|nx46946z1 ;
wire \low_pass|modgen_add_15|nx46946z1 ;
wire \low_pass|prod_0__mults21_0|nx5238z4 ;
wire \low_pass|prod_0__mults21_0|nx3244z1 ;
wire \low_pass|prod_1__mults19_1|nx2247z1 ;
wire \low_pass|modgen_add_11|nx2247z15 ;
wire \low_pass|modgen_add_11|nx62798z1 ;
wire \low_pass|modgen_add_12|nx2247z15 ;
wire \low_pass|modgen_add_12|nx62798z1 ;
wire \low_pass|modgen_add_13|nx62798z1 ;
wire \low_pass|modgen_add_8|nx2247z16 ;
wire \low_pass|modgen_add_8|nx62798z1 ;
wire \low_pass|modgen_add_14|nx62798z1 ;
wire \low_pass|modgen_add_3|nx62798z1 ;
wire \low_pass|modgen_add_0|nx2247z15 ;
wire \low_pass|modgen_add_0|nx62798z1 ;
wire \low_pass|modgen_add_2|nx62798z1 ;
wire \low_pass|prod_2__mults20_2|nx6235z2 ;
wire \low_pass|prod_0__mults21_0|nx5238z2 ;
wire \low_pass|prod_0__mults21_0|nx4241z1 ;
wire \low_pass|modgen_add_11|nx2247z12 ;
wire \low_pass|modgen_add_11|nx63795z1 ;
wire \low_pass|modgen_add_12|nx2247z12 ;
wire \low_pass|modgen_add_12|nx63795z1 ;
wire \low_pass|modgen_add_13|nx63795z1 ;
wire \low_pass|modgen_add_8|nx2247z13 ;
wire \low_pass|modgen_add_8|nx63795z1 ;
wire \low_pass|modgen_add_0|nx2247z12 ;
wire \low_pass|modgen_add_0|nx63795z1 ;
wire \low_pass|modgen_add_2|nx63795z1 ;
wire \low_pass|modgen_add_6|nx63795z1 ;
wire \low_pass|modgen_add_15|nx63795z1 ;
wire \low_pass|modgen_add_10|nx2247z8 ;
wire \low_pass|modgen_add_10|nx2247z6 ;
wire \low_pass|modgen_add_10|nx253z1 ;
wire \low_pass|prod_2__mults20_2|nx6235z1 ;
wire \low_pass|prod_0__mults21_0|nx5238z1 ;
wire \low_pass|modgen_add_11|nx2247z9 ;
wire \low_pass|modgen_add_11|nx64792z1 ;
wire \low_pass|modgen_add_11|nx2247z6 ;
wire \low_pass|modgen_add_11|nx253z1 ;
wire \low_pass|modgen_add_12|nx2247z9 ;
wire \low_pass|modgen_add_12|nx64792z1 ;
wire \low_pass|modgen_add_12|nx2247z6 ;
wire \low_pass|modgen_add_12|nx253z1 ;
wire \low_pass|modgen_add_13|nx2247z10 ;
wire \low_pass|modgen_add_13|nx2247z7 ;
wire \low_pass|modgen_add_13|nx253z1 ;
wire \low_pass|modgen_add_8|nx2247z10 ;
wire \low_pass|modgen_add_8|nx64792z1 ;
wire \low_pass|modgen_add_8|nx2247z7 ;
wire \low_pass|modgen_add_8|nx253z1 ;
wire \low_pass|modgen_add_9|nx64792z1 ;
wire \low_pass|modgen_add_9|nx2247z7 ;
wire \low_pass|modgen_add_14|nx2247z7 ;
wire \low_pass|modgen_add_3|nx2247z7 ;
wire \low_pass|modgen_add_5|nx253z1 ;
wire \low_pass|modgen_add_0|nx2247z9 ;
wire \low_pass|modgen_add_0|nx64792z1 ;
wire \low_pass|modgen_add_0|nx2247z6 ;
wire \low_pass|modgen_add_0|nx253z1 ;
wire \low_pass|modgen_add_1|nx2247z5 ;
wire \low_pass|modgen_add_2|nx64792z1 ;
wire \low_pass|modgen_add_2|nx2247z7 ;
wire \low_pass|modgen_add_6|nx64792z1 ;
wire \low_pass|modgen_add_6|nx253z1 ;
wire \low_pass|modgen_add_15|nx64792z1 ;
wire \low_pass|modgen_add_10|nx2247z4 ;
wire \low_pass|modgen_add_10|nx1250z1 ;
wire \low_pass|modgen_add_11|nx2247z4 ;
wire \low_pass|modgen_add_11|nx1250z1 ;
wire \low_pass|modgen_add_12|nx2247z4 ;
wire \low_pass|modgen_add_12|nx1250z1 ;
wire \low_pass|modgen_add_13|nx2247z4 ;
wire \low_pass|modgen_add_13|nx1250z1 ;
wire \low_pass|modgen_add_4|nx2247z4 ;
wire \low_pass|modgen_add_8|nx2247z4 ;
wire \low_pass|modgen_add_8|nx1250z1 ;
wire \low_pass|modgen_add_9|nx2247z4 ;
wire \low_pass|modgen_add_9|nx1250z1 ;
wire \low_pass|modgen_add_14|nx2247z4 ;
wire \low_pass|modgen_add_14|nx1250z1 ;
wire \low_pass|modgen_add_3|nx2247z4 ;
wire \low_pass|modgen_add_3|nx1250z1 ;
wire \low_pass|modgen_add_5|nx2247z4 ;
wire \low_pass|modgen_add_0|nx2247z4 ;
wire \low_pass|modgen_add_0|nx1250z1 ;
wire \low_pass|modgen_add_1|nx2247z4 ;
wire \low_pass|modgen_add_1|nx1250z1 ;
wire \low_pass|modgen_add_2|nx2247z4 ;
wire \low_pass|modgen_add_2|nx1250z1 ;
wire \low_pass|modgen_add_6|nx2247z4 ;
wire \low_pass|modgen_add_15|nx2247z4 ;
wire \low_pass|modgen_add_10|nx2247z1 ;
wire \low_pass|modgen_add_11|nx2247z1 ;
wire \low_pass|modgen_add_12|nx2247z1 ;
wire \low_pass|modgen_add_13|nx2247z1 ;
wire \low_pass|modgen_add_4|nx2247z1 ;
wire \low_pass|modgen_add_8|nx2247z1 ;
wire \low_pass|modgen_add_9|nx2247z1 ;
wire \low_pass|modgen_add_14|nx2247z1 ;
wire \low_pass|modgen_add_3|nx2247z1 ;
wire \low_pass|modgen_add_5|nx2247z1 ;
wire \low_pass|modgen_add_0|nx2247z1 ;
wire \low_pass|modgen_add_1|nx2247z1 ;
wire \low_pass|modgen_add_2|nx2247z1 ;
wire \low_pass|modgen_add_6|nx2247z1 ;
wire \low_pass|modgen_add_15|nx2247z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ;
wire nx50205z4;
wire nx50205z3;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ;
wire \u_i2c_av_config|nx2692z5 ;
wire \u_i2c_av_config|u0|nx7286z2 ;
wire u_sine_address_3_;
wire u_sine_address_2_;
wire u_sine_address_1_;
wire \u_sine_address_add9_0i1|nx38970z1 ;
wire \u_sine_address_add9_0i1|nx39967z1 ;
wire u_sine_address_4_;
wire u_sine_address_5_;
wire u_sine_address_7_;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_3_ ;
wire \u_i2c_av_config|modgen_counter_cont|q_5_ ;
wire \u_i2c_av_config|modgen_counter_cont|q_6_ ;
wire \u_i2c_av_config|nx35560z2 ;
wire \u_i2c_av_config|modgen_counter_cont|q_10_ ;
wire \u_i2c_av_config|modgen_counter_cont|q_15_ ;
wire \u_i2c_av_config|u0|sdo_5n5s2f1_1_ ;
wire \u_i2c_av_config|u0|nx22137z2 ;
wire \u_i2c_av_config|u0|sdo_5n5s2f1_0_ ;
wire \u_i2c_av_config|u0|nx41315z5 ;
wire \u_i2c_av_config|u0|nx41315z9 ;
wire \u_i2c_av_config|u0|nx41315z8 ;
wire \u_i2c_av_config|u0|nx41315z18 ;
wire \u_i2c_av_config|u0|nx41315z21 ;
wire \u_i2c_av_config|u0|nx41315z22 ;
wire \u_i2c_av_config|u0|nx41315z20 ;
wire \u_i2c_av_config|modgen_counter_cont|nx54262z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx56256z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx57253z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx17096z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z2 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z1 ;
wire \aud_bclk_dup0~clkctrl_outclk ;
wire \audio_out_15_~feeder_combout ;
wire \audio_out_12_~feeder_combout ;
wire nx49625z3;
wire nx49625z1;
wire nx55607z1;
wire nx49625z2;
wire display_freq_2_;
wire display_freq_3_;
wire nx49625z4;
wire display_freq_0_;
wire nx55607z2;
wire hex4_dup0_0_;
wire display_freq_1_;
wire hex4_dup0_1_;
wire hex4_dup0_2_;
wire hex4_dup0_3_;
wire hex4_dup0_4_;
wire hex4_dup0_5_;
wire hex4_dup0_6_;
wire nx38664z4;
wire display_freq_6_;
wire nx38664z1;
wire display_freq_7_;
wire display_freq_4_;
wire nx38664z7;
wire display_freq_5_;
wire hex5_dup0_0_;
wire hex5_dup0_1_;
wire hex5_dup0_2_;
wire hex5_dup0_3_;
wire hex5_dup0_4_;
wire hex5_dup0_5_;
wire hex5_dup0_6_;
wire nx4119z11;
wire nx4119z9;
wire display_freq_9_;
wire nx4119z4;
wire nx4119z3;
wire nx4119z2;
wire display_freq_11_;
wire nx4119z5;
wire display_freq_10_;
wire nx10101z2;
wire nx10101z1;
wire hex6_dup0_0_;
wire nx4119z12;
wire display_freq_8_;
wire hex6_dup0_1_;
wire hex6_dup0_2_;
wire hex6_dup0_3_;
wire hex6_dup0_4_;
wire hex6_dup0_5_;
wire hex6_dup0_6_;
wire nx17637z1;
wire hex7_dup0_0_;
wire \clock_27~combout ;
wire \u_audio_dac_p1_altpll|_clk1 ;
wire \u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ;
wire NOT_bit_position_0_;
wire bit_position_0_;
wire nx50814z1;
wire bit_position_1_;
wire nx49817z1;
wire bit_position_2_;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1 ;
wire nx48238z1;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1 ;
wire \u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ;
wire nx50205z2;
wire nx50205z1;
wire aud_adclrck_dup0;
wire \aud_adclrck_dup0~clkctrl_outclk ;
wire \u_noise_modgen_counter_address|nx51271z1 ;
wire \u_noise_modgen_counter_address|q_0_ ;
wire \u_noise_modgen_counter_address|nx60244z10 ;
wire \u_noise_modgen_counter_address|nx52268z1 ;
wire \u_noise_modgen_counter_address|q_1_ ;
wire \u_noise_modgen_counter_address|nx60244z9 ;
wire \u_noise_modgen_counter_address|nx53265z1 ;
wire \u_noise_modgen_counter_address|q_2_ ;
wire \u_noise_modgen_counter_address|nx60244z8 ;
wire \u_noise_modgen_counter_address|nx54262z1 ;
wire \u_noise_modgen_counter_address|q_3_ ;
wire \u_noise_modgen_counter_address|nx60244z7 ;
wire \u_noise_modgen_counter_address|nx55259z1 ;
wire \u_noise_modgen_counter_address|q_4_ ;
wire \u_noise_modgen_counter_address|nx60244z6 ;
wire \u_noise_modgen_counter_address|nx56256z1 ;
wire \u_noise_modgen_counter_address|q_5_ ;
wire \u_noise_modgen_counter_address|nx60244z5 ;
wire \u_noise_modgen_counter_address|nx57253z1 ;
wire \u_noise_modgen_counter_address|q_6_ ;
wire \u_noise_modgen_counter_address|nx60244z4 ;
wire \u_noise_modgen_counter_address|nx58250z1 ;
wire \u_noise_modgen_counter_address|q_7_ ;
wire \u_noise_modgen_counter_address|nx60244z3 ;
wire \u_noise_modgen_counter_address|nx59247z1 ;
wire \u_noise_modgen_counter_address|q_8_ ;
wire \u_noise_modgen_counter_address|nx60244z2 ;
wire \u_noise_modgen_counter_address|nx60244z1 ;
wire \u_noise_modgen_counter_address|q_9_ ;
wire audio_out_1n1ss1_5_;
wire \u_sine_address_add9_0i1|nx37973z1 ;
wire u_sine_address_0_;
wire \u_sine_address_add9_0i1|nx45949z23 ;
wire \u_sine_address_add9_0i1|nx45949z20 ;
wire \u_sine_address_add9_0i1|nx45949z17 ;
wire \u_sine_address_add9_0i1|nx40964z1 ;
wire \u_sine_address_add9_0i1|nx45949z14 ;
wire \u_sine_address_add9_0i1|nx41961z1 ;
wire \u_sine_address_add9_0i1|nx45949z11 ;
wire \u_sine_address_add9_0i1|nx42958z1 ;
wire u_sine_address_6_;
wire \u_sine_address_add9_0i1|nx45949z8 ;
wire \u_sine_address_add9_0i1|nx43955z1 ;
wire \u_sine_address_add9_0i1|nx45949z5 ;
wire \u_sine_address_add9_0i1|nx44952z1 ;
wire u_sine_address_8_;
wire \u_sine_address_add9_0i1|nx45949z3 ;
wire \u_sine_address_add9_0i1|nx45949z1 ;
wire \low_pass_in_15_~feeder_combout ;
wire low_pass_in_15_;
wire \low_pass_in_10_~feeder_combout ;
wire low_pass_in_10_;
wire \low_pass_in_8_~feeder_combout ;
wire low_pass_in_8_;
wire \low_pass_in_7_~feeder_combout ;
wire low_pass_in_7_;
wire \low_pass_in_5_~feeder_combout ;
wire low_pass_in_5_;
wire \low_pass_in_4_~feeder_combout ;
wire low_pass_in_4_;
wire audio_out_1n1ss1_2_;
wire low_pass_in_2_;
wire audio_out_1n1ss1_0_;
wire low_pass_in_0_;
wire \low_pass|prod_5__mults21_4|nx3244z16 ;
wire \low_pass|prod_5__mults21_4|nx3244z15 ;
wire \low_pass|prod_5__mults21_4|nx3244z14 ;
wire \low_pass|prod_5__mults21_4|nx3244z13 ;
wire \low_pass|prod_5__mults21_4|nx3244z12 ;
wire \low_pass|prod_5__mults21_4|nx3244z11 ;
wire \low_pass|prod_5__mults21_4|nx3244z10 ;
wire \low_pass|prod_5__mults21_4|nx3244z9 ;
wire \low_pass|prod_5__mults21_4|nx3244z8 ;
wire \low_pass|prod_5__mults21_4|nx3244z7 ;
wire \low_pass|prod_5__mults21_4|d_10_ ;
wire \low_pass|prod_5__mults21_4|d_9_ ;
wire \low_pass|prod_5__mults21_4|d_8_ ;
wire \low_pass|prod_5__mults21_4|d_6_ ;
wire \low_pass|prod_5__mults21_4|d_5_ ;
wire \low_pass|prod_5__mults21_4|d_4_ ;
wire \low_pass|prod_5__mults21_4|d_3_ ;
wire \low_pass|prod_5__mults21_4|nx3244z26 ;
wire \low_pass|prod_5__mults21_4|nx3244z25 ;
wire \low_pass|prod_5__mults21_4|nx3244z24 ;
wire \low_pass|prod_5__mults21_4|nx3244z23 ;
wire \low_pass|prod_5__mults21_4|nx3244z22 ;
wire \low_pass|prod_5__mults21_4|nx3244z21 ;
wire \low_pass|prod_5__mults21_4|nx3244z20 ;
wire \low_pass|prod_5__mults21_4|nx3244z19 ;
wire \low_pass|prod_5__mults21_4|d_8__dup_188 ;
wire \low_pass_in_6_~feeder_combout ;
wire low_pass_in_6_;
wire audio_out_1n1ss1_3_;
wire low_pass_in_3_;
wire audio_out_1n1ss1_1_;
wire low_pass_in_1_;
wire \low_pass|prod_1__mults19_1|nx3244z30 ;
wire \low_pass|prod_1__mults19_1|nx3244z28 ;
wire \low_pass|prod_1__mults19_1|nx3244z26 ;
wire \low_pass|prod_1__mults19_1|nx3244z24 ;
wire \low_pass|prod_1__mults19_1|nx3244z22 ;
wire \low_pass|prod_1__mults19_1|nx3244z20 ;
wire \low_pass|prod_1__mults19_1|nx3244z18 ;
wire \low_pass|prod_1__mults19_1|nx45949z1 ;
wire \low_pass|prod_1__mults19_1|nx44952z1 ;
wire \low_pass|prod_1__mults19_1|nx43955z1 ;
wire \low_pass|prod_5__mults21_4|d_4__dup_192 ;
wire \low_pass|prod_6__mults19_5|nx44471z1 ;
wire \low_pass|modgen_add_8|nx2247z49 ;
wire \low_pass|modgen_add_8|nx2247z46 ;
wire \low_pass|modgen_add_8|nx2247z43 ;
wire \low_pass|modgen_add_8|nx2247z40 ;
wire \low_pass|modgen_add_8|nx2247z37 ;
wire \low_pass|modgen_add_8|nx2247z34 ;
wire \low_pass|modgen_add_8|nx42958z1 ;
wire \low_pass|prod_1__mults19_1|nx42958z1 ;
wire \low_pass|prod_6__mults19_5|nx44479z1 ;
wire \low_pass|prod_6__mults19_5|nx41961z2 ;
wire \low_pass|prod_6__mults19_5|nx41961z5 ;
wire \low_pass|prod_6__mults19_5|nx41961z4 ;
wire \low_pass|prod_6__mults19_5|nx41961z1 ;
wire \low_pass|modgen_add_4|nx2247z35 ;
wire \low_pass|modgen_add_4|nx2247z32 ;
wire \low_pass|modgen_add_4|nx2247z30 ;
wire \low_pass|modgen_add_4|nx2247z28 ;
wire \low_pass|modgen_add_4|nx2247z26 ;
wire \low_pass|modgen_add_4|nx41961z1 ;
wire \low_pass|modgen_add_8|nx40964z1 ;
wire \low_pass|modgen_add_8|nx39967z1 ;
wire \low_pass|modgen_add_4|nx38970z1 ;
wire \low_pass|modgen_add_4|nx37973z1 ;
wire \low_pass|modgen_add_9|nx2247z46 ;
wire \low_pass|modgen_add_9|nx2247z43 ;
wire \low_pass|modgen_add_9|nx2247z40 ;
wire \low_pass|modgen_add_9|nx2247z37 ;
wire \low_pass|modgen_add_9|nx2247z34 ;
wire \low_pass|modgen_add_9|nx42958z1 ;
wire \low_pass|prod_4__mults20_3|nx4241z30 ;
wire \low_pass|prod_4__mults20_3|nx4241z28 ;
wire \low_pass|prod_4__mults20_3|nx4241z26 ;
wire \low_pass|prod_4__mults20_3|nx4241z24 ;
wire \low_pass|prod_4__mults20_3|nx4241z22 ;
wire \low_pass|prod_4__mults20_3|nx4241z20 ;
wire \low_pass|prod_4__mults20_3|nx4241z18 ;
wire \low_pass|prod_4__mults20_3|nx46946z1 ;
wire \low_pass|prod_4__mults20_3|nx45949z1 ;
wire \low_pass|prod_4__mults20_3|nx44952z1 ;
wire \low_pass|prod_4__mults20_3|nx42958z1 ;
wire \low_pass|modgen_add_10|nx2247z41 ;
wire \low_pass|modgen_add_10|nx2247z38 ;
wire \low_pass|modgen_add_10|nx2247z35 ;
wire \low_pass|modgen_add_10|nx2247z32 ;
wire \low_pass|modgen_add_10|nx41961z1 ;
wire \low_pass|prod_0__mults21_0|nx5238z30 ;
wire \low_pass|prod_0__mults21_0|nx5238z28 ;
wire \low_pass|prod_0__mults21_0|nx5238z26 ;
wire \low_pass|prod_0__mults21_0|nx5238z24 ;
wire \low_pass|prod_0__mults21_0|nx44952z1 ;
wire \low_pass|prod_0__mults21_0|nx43955z1 ;
wire \low_pass|modgen_add_11|nx2247z45 ;
wire \low_pass|modgen_add_11|nx2247z42 ;
wire \low_pass|modgen_add_11|nx2247z39 ;
wire \low_pass|modgen_add_11|nx40964z1 ;
wire \low_pass|modgen_add_11|nx39967z1 ;
wire \low_pass|prod_2__mults20_2|nx6235z18 ;
wire \low_pass|prod_2__mults20_2|nx6235z17 ;
wire \low_pass|prod_2__mults20_2|nx6235z16 ;
wire \low_pass|prod_2__mults20_2|nx6235z15 ;
wire \low_pass|prod_2__mults20_2|nx6235z14 ;
wire \low_pass|prod_2__mults20_2|nx6235z13 ;
wire \low_pass|prod_2__mults20_2|d_6_ ;
wire \low_pass|prod_2__mults20_2|d_5_ ;
wire \low_pass|modgen_add_12|nx2247z45 ;
wire \low_pass|modgen_add_12|nx2247z42 ;
wire \low_pass|modgen_add_12|nx2247z39 ;
wire \low_pass|modgen_add_12|nx40964z1 ;
wire \low_pass|modgen_add_12|nx39967z1 ;
wire \low_pass|modgen_add_12|nx38970z1 ;
wire \low_pass|modgen_add_10|nx37973z1 ;
wire \low_pass|modgen_add_13|nx2247z46 ;
wire \low_pass|modgen_add_13|nx2247z43 ;
wire \low_pass|modgen_add_13|nx2247z40 ;
wire \low_pass|modgen_add_13|nx2247z37 ;
wire \low_pass|modgen_add_13|nx41961z1 ;
wire \low_pass|modgen_add_13|nx40964z1 ;
wire \low_pass|modgen_add_9|nx39967z1 ;
wire \low_pass|modgen_add_9|nx38970z1 ;
wire \low_pass|modgen_add_9|nx37973z1 ;
wire \low_pass|modgen_add_14|nx2247z46 ;
wire \low_pass|modgen_add_14|nx2247z43 ;
wire \low_pass|modgen_add_14|nx2247z40 ;
wire \low_pass|modgen_add_14|nx2247z37 ;
wire \low_pass|modgen_add_14|nx2247z34 ;
wire \low_pass|modgen_add_14|nx42958z1 ;
wire \low_pass|modgen_add_14|nx41961z1 ;
wire \low_pass|prod_2__mults20_2|nx6235z12 ;
wire \low_pass|prod_2__mults20_2|d_7_ ;
wire \low_pass|modgen_add_1|nx2247z41 ;
wire \low_pass|modgen_add_1|nx2247z38 ;
wire \low_pass|modgen_add_1|nx2247z35 ;
wire \low_pass|modgen_add_1|nx40964z1 ;
wire \low_pass|modgen_add_1|nx39967z1 ;
wire \low_pass|modgen_add_1|nx38970z1 ;
wire \low_pass|modgen_add_1|nx37973z1 ;
wire \low_pass|modgen_add_2|nx2247z46 ;
wire \low_pass|modgen_add_2|nx2247z43 ;
wire \low_pass|modgen_add_2|nx2247z40 ;
wire \low_pass|modgen_add_2|nx40964z1 ;
wire \low_pass|modgen_add_2|nx39967z1 ;
wire \low_pass|modgen_add_2|nx38970z1 ;
wire \low_pass|modgen_add_5|nx37973z1 ;
wire \low_pass|modgen_add_6|nx2247z46 ;
wire \low_pass|modgen_add_6|nx2247z43 ;
wire \low_pass|modgen_add_6|nx2247z40 ;
wire \low_pass|modgen_add_6|nx40964z1 ;
wire \low_pass|modgen_add_6|nx39967z1 ;
wire \low_pass|modgen_add_14|nx38970z1 ;
wire \low_pass|modgen_add_14|nx37973z1 ;
wire \low_pass|modgen_add_15|nx2247z46 ;
wire \low_pass|modgen_add_15|nx2247z43 ;
wire \low_pass|modgen_add_15|nx2247z40 ;
wire \low_pass|modgen_add_15|nx2247z37 ;
wire \low_pass|modgen_add_15|nx2247z34 ;
wire \low_pass|modgen_add_15|nx42958z1 ;
wire audio_out_5_;
wire nx24999z3;
wire audio_out_1n1ss1_7_;
wire \low_pass_in_9_~feeder_combout ;
wire low_pass_in_9_;
wire \low_pass|prod_4__mults20_3|nx4241z16 ;
wire \low_pass|prod_4__mults20_3|nx4241z14 ;
wire \low_pass|prod_4__mults20_3|nx4241z12 ;
wire \low_pass|prod_4__mults20_3|nx64792z1 ;
wire \low_pass|modgen_add_10|nx2247z29 ;
wire \low_pass|modgen_add_10|nx2247z26 ;
wire \low_pass|modgen_add_10|nx2247z23 ;
wire \low_pass|modgen_add_10|nx44952z1 ;
wire \low_pass|modgen_add_10|nx43955z1 ;
wire \low_pass|modgen_add_10|nx42958z1 ;
wire \low_pass|modgen_add_13|nx2247z34 ;
wire \low_pass|modgen_add_13|nx2247z31 ;
wire \low_pass|modgen_add_13|nx2247z28 ;
wire \low_pass|modgen_add_13|nx44952z1 ;
wire \low_pass|modgen_add_13|nx43955z1 ;
wire \low_pass|modgen_add_14|nx2247z31 ;
wire \low_pass|modgen_add_14|nx2247z28 ;
wire \low_pass|modgen_add_14|nx44952z1 ;
wire \low_pass|modgen_add_4|nx2247z24 ;
wire \low_pass|modgen_add_4|nx2247z22 ;
wire \low_pass|modgen_add_4|nx43955z1 ;
wire \low_pass|prod_5__mults21_4|d_3__dup_193 ;
wire \low_pass|modgen_add_3|nx2247z46 ;
wire \low_pass|modgen_add_3|nx2247z43 ;
wire \low_pass|modgen_add_3|nx2247z40 ;
wire \low_pass|modgen_add_3|nx2247z37 ;
wire \low_pass|modgen_add_3|nx2247z34 ;
wire \low_pass|modgen_add_3|nx42958z1 ;
wire \low_pass|modgen_add_3|nx40964z1 ;
wire \low_pass|modgen_add_4|nx39967z1 ;
wire \low_pass|modgen_add_5|nx2247z46 ;
wire \low_pass|modgen_add_5|nx2247z43 ;
wire \low_pass|modgen_add_5|nx2247z40 ;
wire \low_pass|modgen_add_5|nx2247z37 ;
wire \low_pass|modgen_add_5|nx2247z34 ;
wire \low_pass|modgen_add_5|nx2247z31 ;
wire \low_pass|modgen_add_5|nx43955z1 ;
wire \low_pass|modgen_add_5|nx42958z1 ;
wire \low_pass|modgen_add_5|nx41961z1 ;
wire \low_pass|modgen_add_6|nx2247z37 ;
wire \low_pass|modgen_add_6|nx2247z34 ;
wire \low_pass|modgen_add_6|nx2247z31 ;
wire \low_pass|modgen_add_6|nx43955z1 ;
wire \low_pass|modgen_add_15|nx2247z31 ;
wire \low_pass|modgen_add_15|nx2247z28 ;
wire \low_pass|modgen_add_15|nx44952z1 ;
wire audio_out_7_;
wire nx24999z2;
wire nx48820z1;
wire bit_position_3_;
wire nx24999z1;
wire audio_out_1n1ss1_10_;
wire \low_pass|prod_1__mults19_1|nx3244z16 ;
wire \low_pass|prod_1__mults19_1|nx3244z14 ;
wire \low_pass|prod_1__mults19_1|nx3244z12 ;
wire \low_pass|prod_1__mults19_1|nx3244z10 ;
wire \low_pass|prod_1__mults19_1|nx3244z8 ;
wire \low_pass|prod_1__mults19_1|nx3244z6 ;
wire \low_pass|prod_1__mults19_1|nx1250z1 ;
wire \low_pass|prod_1__mults19_1|nx253z1 ;
wire \low_pass|prod_1__mults19_1|nx63795z1 ;
wire \low_pass|modgen_add_4|nx2247z20 ;
wire \low_pass|modgen_add_4|nx2247z18 ;
wire \low_pass|modgen_add_4|nx2247z16 ;
wire \low_pass|modgen_add_4|nx2247z14 ;
wire \low_pass|modgen_add_4|nx62798z1 ;
wire \low_pass|modgen_add_4|nx46946z1 ;
wire \low_pass|prod_4__mults20_3|nx4241z10 ;
wire \low_pass|prod_4__mults20_3|nx253z1 ;
wire \low_pass|prod_5__mults21_4|nx3244z6 ;
wire \low_pass|prod_5__mults21_4|d_11_ ;
wire \low_pass|prod_5__mults21_4|nx3244z18 ;
wire \low_pass|prod_5__mults21_4|d_9__dup_187 ;
wire \low_pass|modgen_add_3|nx2247z31 ;
wire \low_pass|modgen_add_3|nx2247z28 ;
wire \low_pass|modgen_add_3|nx2247z25 ;
wire \low_pass|modgen_add_3|nx45949z1 ;
wire \low_pass|modgen_add_3|nx44952z1 ;
wire \low_pass|modgen_add_5|nx2247z28 ;
wire \low_pass|modgen_add_5|nx2247z25 ;
wire \low_pass|modgen_add_5|nx2247z22 ;
wire \low_pass|modgen_add_5|nx2247z19 ;
wire \low_pass|modgen_add_5|nx62798z1 ;
wire \low_pass|modgen_add_5|nx46946z1 ;
wire \low_pass|prod_0__mults21_0|nx5238z22 ;
wire \low_pass|prod_0__mults21_0|nx5238z20 ;
wire \low_pass|prod_0__mults21_0|nx5238z18 ;
wire \low_pass|prod_0__mults21_0|nx5238z16 ;
wire \low_pass|prod_0__mults21_0|nx5238z14 ;
wire \low_pass|prod_0__mults21_0|nx5238z12 ;
wire \low_pass|prod_0__mults21_0|nx5238z10 ;
wire \low_pass|prod_0__mults21_0|nx1250z1 ;
wire \low_pass|prod_1__mults19_1|nx64792z1 ;
wire \low_pass|prod_0__mults21_0|nx64792z1 ;
wire \low_pass|prod_0__mults21_0|nx63795z1 ;
wire \low_pass|prod_1__mults19_1|nx46946z1 ;
wire \low_pass|modgen_add_0|nx2247z45 ;
wire \low_pass|modgen_add_0|nx2247z42 ;
wire \low_pass|modgen_add_0|nx2247z39 ;
wire \low_pass|modgen_add_0|nx2247z36 ;
wire \low_pass|modgen_add_0|nx2247z33 ;
wire \low_pass|modgen_add_0|nx2247z30 ;
wire \low_pass|modgen_add_0|nx2247z27 ;
wire \low_pass|modgen_add_0|nx2247z24 ;
wire \low_pass|modgen_add_0|nx45949z1 ;
wire \low_pass|modgen_add_0|nx44952z1 ;
wire \low_pass|modgen_add_0|nx43955z1 ;
wire \low_pass|modgen_add_0|nx42958z1 ;
wire \low_pass|modgen_add_0|nx41961z1 ;
wire \low_pass|modgen_add_2|nx2247z37 ;
wire \low_pass|modgen_add_2|nx2247z34 ;
wire \low_pass|modgen_add_2|nx2247z31 ;
wire \low_pass|modgen_add_2|nx2247z28 ;
wire \low_pass|modgen_add_2|nx2247z25 ;
wire \low_pass|modgen_add_2|nx45949z1 ;
wire \low_pass|modgen_add_5|nx44952z1 ;
wire \low_pass|modgen_add_6|nx2247z28 ;
wire \low_pass|modgen_add_6|nx2247z25 ;
wire \low_pass|modgen_add_6|nx2247z22 ;
wire \low_pass|modgen_add_6|nx2247z19 ;
wire \low_pass|modgen_add_6|nx62798z1 ;
wire \low_pass|prod_4__mults20_3|nx4241z8 ;
wire \low_pass|prod_4__mults20_3|nx1250z1 ;
wire \low_pass|modgen_add_10|nx2247z20 ;
wire \low_pass|modgen_add_10|nx2247z17 ;
wire \low_pass|modgen_add_10|nx46946z1 ;
wire \low_pass|prod_1__mults19_1|nx62798z1 ;
wire \low_pass|modgen_add_11|nx2247z36 ;
wire \low_pass|modgen_add_11|nx2247z33 ;
wire \low_pass|modgen_add_11|nx2247z30 ;
wire \low_pass|modgen_add_11|nx2247z27 ;
wire \low_pass|modgen_add_11|nx2247z24 ;
wire \low_pass|modgen_add_11|nx45949z1 ;
wire \low_pass|prod_2__mults20_2|nx6235z11 ;
wire \low_pass|prod_2__mults20_2|nx6235z10 ;
wire \low_pass|prod_2__mults20_2|nx6235z9 ;
wire \low_pass|prod_2__mults20_2|nx6235z8 ;
wire \low_pass|prod_2__mults20_2|nx6235z7 ;
wire \low_pass|prod_2__mults20_2|d_12_ ;
wire \low_pass|prod_2__mults20_2|d_11_ ;
wire \low_pass|prod_2__mults20_2|d_10_ ;
wire \low_pass|prod_2__mults20_2|d_9_ ;
wire \low_pass|modgen_add_12|nx2247z36 ;
wire \low_pass|modgen_add_12|nx2247z33 ;
wire \low_pass|modgen_add_12|nx2247z30 ;
wire \low_pass|modgen_add_12|nx2247z27 ;
wire \low_pass|modgen_add_12|nx2247z24 ;
wire \low_pass|modgen_add_12|nx45949z1 ;
wire \low_pass|modgen_add_13|nx2247z25 ;
wire \low_pass|modgen_add_13|nx2247z22 ;
wire \low_pass|modgen_add_13|nx46946z1 ;
wire \low_pass|modgen_add_13|nx45949z1 ;
wire \low_pass|modgen_add_14|nx2247z25 ;
wire \low_pass|modgen_add_14|nx2247z22 ;
wire \low_pass|modgen_add_14|nx46946z1 ;
wire \low_pass|modgen_add_6|nx45949z1 ;
wire \low_pass|modgen_add_15|nx2247z25 ;
wire \low_pass|modgen_add_15|nx2247z22 ;
wire \low_pass|modgen_add_15|nx2247z19 ;
wire \low_pass|modgen_add_15|nx62798z1 ;
wire audio_out_10_;
wire audio_out_1n1ss1_8_;
wire \low_pass|modgen_add_15|nx45949z1 ;
wire audio_out_8_;
wire nx24999z7;
wire nx24999z6;
wire audio_out_1n1ss1_11_;
wire \audio_out_14_~feeder_combout ;
wire \low_pass|prod_1__mults19_1|nx3244z4 ;
wire \low_pass|prod_1__mults19_1|nx3244z2 ;
wire \low_pass|prod_1__mults19_1|nx3244z1 ;
wire \low_pass|modgen_add_4|nx2247z12 ;
wire \low_pass|modgen_add_4|nx2247z10 ;
wire \low_pass|modgen_add_4|nx2247z8 ;
wire \low_pass|modgen_add_4|nx2247z6 ;
wire \low_pass|modgen_add_4|nx1250z1 ;
wire \low_pass|prod_4__mults20_3|nx4241z6 ;
wire \low_pass|prod_4__mults20_3|nx4241z4 ;
wire \low_pass|prod_4__mults20_3|nx4241z2 ;
wire \low_pass|prod_4__mults20_3|nx4241z1 ;
wire \low_pass|prod_4__mults20_3|nx3244z1 ;
wire \low_pass|prod_5__mults21_4|nx3244z17 ;
wire \low_pass|prod_5__mults21_4|nx3244z4 ;
wire \low_pass|prod_5__mults21_4|nx3244z3 ;
wire \low_pass|prod_5__mults21_4|nx3244z2 ;
wire \low_pass|prod_5__mults21_4|nx3244z1 ;
wire \low_pass|modgen_add_3|nx2247z22 ;
wire \low_pass|modgen_add_3|nx2247z19 ;
wire \low_pass|modgen_add_3|nx2247z16 ;
wire \low_pass|modgen_add_3|nx2247z13 ;
wire \low_pass|modgen_add_3|nx2247z10 ;
wire \low_pass|modgen_add_3|nx253z1 ;
wire \low_pass|modgen_add_3|nx64792z1 ;
wire \low_pass|modgen_add_3|nx63795z1 ;
wire \low_pass|modgen_add_5|nx2247z16 ;
wire \low_pass|modgen_add_5|nx2247z13 ;
wire \low_pass|modgen_add_5|nx2247z10 ;
wire \low_pass|modgen_add_5|nx2247z7 ;
wire \low_pass|modgen_add_5|nx1250z1 ;
wire \low_pass|prod_2__mults20_2|nx6235z6 ;
wire \low_pass|prod_2__mults20_2|nx6235z5 ;
wire \low_pass|prod_2__mults20_2|nx6235z4 ;
wire \low_pass|prod_2__mults20_2|nx6235z3 ;
wire \low_pass|prod_2__mults20_2|d_16_ ;
wire \low_pass|prod_2__mults20_2|d_15_ ;
wire \low_pass|prod_2__mults20_2|d_14_ ;
wire \low_pass|prod_2__mults20_2|d_13_ ;
wire \low_pass|modgen_add_1|nx2247z32 ;
wire \low_pass|modgen_add_1|nx2247z29 ;
wire \low_pass|modgen_add_1|nx2247z26 ;
wire \low_pass|modgen_add_1|nx2247z23 ;
wire \low_pass|modgen_add_1|nx2247z20 ;
wire \low_pass|modgen_add_1|nx2247z17 ;
wire \low_pass|modgen_add_1|nx2247z14 ;
wire \low_pass|modgen_add_1|nx2247z11 ;
wire \low_pass|modgen_add_1|nx2247z8 ;
wire \low_pass|modgen_add_1|nx2247z6 ;
wire \low_pass|modgen_add_1|nx253z1 ;
wire \low_pass|modgen_add_1|nx64792z1 ;
wire \low_pass|modgen_add_1|nx63795z1 ;
wire \low_pass|modgen_add_1|nx62798z1 ;
wire \low_pass|modgen_add_1|nx46946z1 ;
wire \low_pass|modgen_add_2|nx2247z22 ;
wire \low_pass|modgen_add_2|nx2247z19 ;
wire \low_pass|modgen_add_2|nx2247z16 ;
wire \low_pass|modgen_add_2|nx2247z13 ;
wire \low_pass|modgen_add_2|nx2247z10 ;
wire \low_pass|modgen_add_2|nx253z1 ;
wire \low_pass|modgen_add_5|nx64792z1 ;
wire \low_pass|modgen_add_5|nx63795z1 ;
wire \low_pass|modgen_add_6|nx2247z16 ;
wire \low_pass|modgen_add_6|nx2247z13 ;
wire \low_pass|modgen_add_6|nx2247z10 ;
wire \low_pass|modgen_add_6|nx2247z7 ;
wire \low_pass|modgen_add_6|nx1250z1 ;
wire \low_pass|modgen_add_4|nx253z1 ;
wire \low_pass|modgen_add_4|nx64792z1 ;
wire \low_pass|modgen_add_4|nx63795z1 ;
wire \low_pass|prod_5__mults21_4|d_11__dup_185 ;
wire \low_pass|prod_5__mults21_4|d_10__dup_186 ;
wire \low_pass|modgen_add_8|nx2247z31 ;
wire \low_pass|modgen_add_8|nx2247z28 ;
wire \low_pass|modgen_add_8|nx2247z25 ;
wire \low_pass|modgen_add_8|nx2247z22 ;
wire \low_pass|modgen_add_8|nx46946z1 ;
wire \low_pass|modgen_add_4|nx45949z1 ;
wire \low_pass|modgen_add_8|nx44952z1 ;
wire \low_pass|modgen_add_9|nx2247z31 ;
wire \low_pass|modgen_add_9|nx2247z28 ;
wire \low_pass|modgen_add_9|nx2247z25 ;
wire \low_pass|modgen_add_9|nx2247z22 ;
wire \low_pass|modgen_add_9|nx2247z19 ;
wire \low_pass|modgen_add_9|nx2247z16 ;
wire \low_pass|modgen_add_9|nx2247z13 ;
wire \low_pass|modgen_add_9|nx2247z10 ;
wire \low_pass|modgen_add_9|nx253z1 ;
wire \low_pass|prod_4__mults20_3|nx2247z1 ;
wire \low_pass|modgen_add_10|nx2247z15 ;
wire \low_pass|modgen_add_10|nx2247z13 ;
wire \low_pass|modgen_add_10|nx2247z10 ;
wire \low_pass|modgen_add_10|nx64792z1 ;
wire \low_pass|modgen_add_10|nx63795z1 ;
wire \low_pass|modgen_add_10|nx62798z1 ;
wire \low_pass|modgen_add_13|nx2247z19 ;
wire \low_pass|modgen_add_13|nx2247z16 ;
wire \low_pass|modgen_add_13|nx2247z13 ;
wire \low_pass|modgen_add_13|nx64792z1 ;
wire \low_pass|modgen_add_9|nx63795z1 ;
wire \low_pass|modgen_add_9|nx62798z1 ;
wire \low_pass|modgen_add_14|nx2247z19 ;
wire \low_pass|modgen_add_14|nx2247z16 ;
wire \low_pass|modgen_add_14|nx2247z13 ;
wire \low_pass|modgen_add_14|nx2247z10 ;
wire \low_pass|modgen_add_14|nx253z1 ;
wire \low_pass|modgen_add_14|nx64792z1 ;
wire \low_pass|modgen_add_14|nx63795z1 ;
wire \low_pass|modgen_add_15|nx2247z16 ;
wire \low_pass|modgen_add_15|nx2247z13 ;
wire \low_pass|modgen_add_15|nx2247z10 ;
wire \low_pass|modgen_add_15|nx2247z7 ;
wire \low_pass|modgen_add_15|nx1250z1 ;
wire audio_out_14_;
wire \audio_out_13_~feeder_combout ;
wire \low_pass|modgen_add_15|nx253z1 ;
wire audio_out_13_;
wire nx24999z9;
wire nx24999z8;
wire aud_dacdat_dup0;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx51271z1 ;
wire \u_i2c_av_config|modgen_counter_cont|nx59247z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_8_ ;
wire \u_i2c_av_config|nx35560z3 ;
wire \u_i2c_av_config|nx17807z2 ;
wire \u_i2c_av_config|nx35560z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_0_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z16 ;
wire \u_i2c_av_config|modgen_counter_cont|nx52268z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_1_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z15 ;
wire \u_i2c_av_config|modgen_counter_cont|nx53265z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_2_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z14 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z13 ;
wire \u_i2c_av_config|modgen_counter_cont|nx55259z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_4_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z12 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z11 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z10 ;
wire \u_i2c_av_config|modgen_counter_cont|nx58250z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_7_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z9 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z8 ;
wire \u_i2c_av_config|modgen_counter_cont|nx60244z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_9_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z7 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z6 ;
wire \u_i2c_av_config|modgen_counter_cont|nx18093z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_11_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z5 ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z4 ;
wire \u_i2c_av_config|modgen_counter_cont|nx20087z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_13_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx22081z3 ;
wire \u_i2c_av_config|modgen_counter_cont|nx21084z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_14_ ;
wire \u_i2c_av_config|modgen_counter_cont|nx19090z1 ;
wire \u_i2c_av_config|modgen_counter_cont|q_12_ ;
wire \u_i2c_av_config|nx35560z4 ;
wire \u_i2c_av_config|nx17807z1 ;
wire \u_i2c_av_config|reset_n ;
wire \u_i2c_av_config|nx2692z1 ;
wire \u_i2c_av_config|m_i2c_ctrl_clk ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ;
wire \u_i2c_av_config|u0|nx7286z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1 ;
wire \u_i2c_av_config|nx23875z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ;
wire \u_i2c_av_config|nx2692z4 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ;
wire \u_i2c_av_config|nx2692z3 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1 ;
wire \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ;
wire \u_i2c_av_config|nx2692z2 ;
wire \u_i2c_av_config|nx51161z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1 ;
wire \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ;
wire \u_i2c_av_config|u0|nx43379z4 ;
wire \u_i2c_av_config|u0|nx43379z3 ;
wire \u_i2c_av_config|u0|nx44942z1 ;
wire \u_i2c_av_config|u0|nx44942z4 ;
wire \u_i2c_av_config|u0|nx44942z5 ;
wire \u_i2c_av_config|u0|nx44942z8 ;
wire \u_i2c_av_config|u0|nx44942z6 ;
wire \u_i2c_av_config|u0|nx44942z3 ;
wire \u_i2c_av_config|u0|nx44942z2 ;
wire \u_i2c_av_config|u0|nx43379z1 ;
wire \u_i2c_av_config|u0|nx43379z2 ;
wire \u_i2c_av_config|u0|p_i2c_sclk ;
wire \clock_27~clkctrl_outclk ;
wire \u_i2c_av_config|u0|nx22137z1 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ;
wire \u_i2c_av_config|u0|nx41315z10 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ;
wire \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ;
wire \u_i2c_av_config|u0|nx41315z6 ;
wire \u_i2c_av_config|u0|nx41315z4 ;
wire \u_i2c_av_config|u0|nx41315z3 ;
wire \u_i2c_av_config|u0|nx41315z2 ;
wire \u_i2c_av_config|u0|nx41315z7 ;
wire \u_i2c_av_config|u0|nx41315z14 ;
wire \u_i2c_av_config|u0|nx41315z13 ;
wire \u_i2c_av_config|u0|nx41315z17 ;
wire \u_i2c_av_config|u0|nx41315z16 ;
wire \u_i2c_av_config|u0|nx41315z15 ;
wire \u_i2c_av_config|u0|nx44942z7 ;
wire \u_i2c_av_config|u0|nx41315z12 ;
wire \u_i2c_av_config|u0|nx41315z11 ;
wire \u_i2c_av_config|u0|nx41315z1 ;
wire \u_i2c_av_config|u0|nx41315z19 ;
wire \u_i2c_av_config|u0|nx51857z1 ;
wire nx30102z1;
wire nx32096z1;
wire u_audio_dac_bck_div_0_;
wire nx30102z2;
wire u_audio_dac_bck_div_2_;
wire nx31099z1;
wire nx31099z2;
wire u_audio_dac_bck_div_1_;
wire nx15494z1;
wire aud_bclk_dup0;
wire [3:0] \key~combout ;
wire [17:0] \sw~combout ;
wire [11:0] \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a ;
wire [7:0] \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a ;

wire [2:0] \u_audio_dac_p1_altpll|pll_CLK_bus ;
wire [3:0] \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus ;
wire [11:0] \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus ;
wire [3:0] \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus ;

assign \u_audio_dac_p1_altpll|pll~clk  = \u_audio_dac_p1_altpll|pll_CLK_bus [0];
assign \u_audio_dac_p1_altpll|_clk1  = \u_audio_dac_p1_altpll|pll_CLK_bus [1];
assign \u_audio_dac_p1_altpll|pll~CLK2  = \u_audio_dac_p1_altpll|pll_CLK_bus [2];

assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [0] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [1] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [2] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [3] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];

assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [0] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [0];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [1] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [1];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [2] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [2];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [3] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [3];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [4] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [4];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [5] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [5];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [6] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [6];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [7] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [7];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [8] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [8];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [9] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [9];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [10] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [10];
assign \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [11] = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus [11];

assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [4] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus [0];
assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [5] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus [1];
assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [6] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus [2];
assign \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [7] = \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus [3];

// Location: LCCOMB_X23_Y17_N24
cycloneii_lcell_comb ix38664z52926(
// Equation(s):
// nx38664z2 = (\sw~combout [2] & (!\sw~combout [3] & (\sw~combout [1] & \sw~combout [0]))) # (!\sw~combout [2] & (\sw~combout [3] & (!\sw~combout [1] & !\sw~combout [0])))

	.dataa(\sw~combout [2]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [1]),
	.datad(\sw~combout [0]),
	.cin(gnd),
	.combout(nx38664z2),
	.cout());
// synopsys translate_off
defparam ix38664z52926.lut_mask = 16'h2004;
defparam ix38664z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N24
cycloneii_lcell_comb ix38664z52928(
// Equation(s):
// nx38664z3 = (\sw~combout [0] & (\sw~combout [2] $ (((!\sw~combout [3] & \sw~combout [1]))))) # (!\sw~combout [0] & (\sw~combout [2] & ((\sw~combout [1]) # (!\sw~combout [3]))))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx38664z3),
	.cout());
// synopsys translate_off
defparam ix38664z52928.lut_mask = 16'hD2B0;
defparam ix38664z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N26
cycloneii_lcell_comb ix38664z52930(
// Equation(s):
// nx38664z5 = (!\sw~combout [2] & (((\sw~combout [5]) # (!\sw~combout [6])) # (!\sw~combout [0])))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [6]),
	.datad(\sw~combout [5]),
	.cin(gnd),
	.combout(nx38664z5),
	.cout());
// synopsys translate_off
defparam ix38664z52930.lut_mask = 16'h3313;
defparam ix38664z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N8
cycloneii_lcell_comb ix38664z52932(
// Equation(s):
// nx38664z6 = (\sw~combout [3] & (\sw~combout [1] & !\sw~combout [2])) # (!\sw~combout [3] & (\sw~combout [1] $ (!\sw~combout [2])))

	.dataa(\sw~combout [3]),
	.datab(vcc),
	.datac(\sw~combout [1]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx38664z6),
	.cout());
// synopsys translate_off
defparam ix38664z52932.lut_mask = 16'h50A5;
defparam ix38664z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N16
cycloneii_lcell_comb ix38664z52936(
// Equation(s):
// nx38664z9 = (\sw~combout [2] & (((!\sw~combout [4])))) # (!\sw~combout [2] & (\sw~combout [4] & ((\sw~combout [5]) # (!\sw~combout [6]))))

	.dataa(\sw~combout [6]),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(nx38664z9),
	.cout());
// synopsys translate_off
defparam ix38664z52936.lut_mask = 16'h0DF0;
defparam ix38664z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N10
cycloneii_lcell_comb ix38664z52935(
// Equation(s):
// nx38664z8 = (\sw~combout [3] & ((\sw~combout [1] & (nx38664z9)) # (!\sw~combout [1] & ((\sw~combout [4]))))) # (!\sw~combout [3] & (((\sw~combout [4]))))

	.dataa(nx38664z9),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [1]),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(nx38664z8),
	.cout());
// synopsys translate_off
defparam ix38664z52935.lut_mask = 16'hBF80;
defparam ix38664z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N4
cycloneii_lcell_comb ix4119z52925(
// Equation(s):
// nx4119z1 = (\sw~combout [5] & (!\sw~combout [4])) # (!\sw~combout [5] & (\sw~combout [4] & \sw~combout [2]))

	.dataa(vcc),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [4]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z1),
	.cout());
// synopsys translate_off
defparam ix4119z52925.lut_mask = 16'h3C0C;
defparam ix4119z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N26
cycloneii_lcell_comb ix4119z52932(
// Equation(s):
// nx4119z7 = (\sw~combout [3] & ((\sw~combout [1]) # ((\sw~combout [2]) # (\sw~combout [0]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [3]),
	.cin(gnd),
	.combout(nx4119z7),
	.cout());
// synopsys translate_off
defparam ix4119z52932.lut_mask = 16'hFE00;
defparam ix4119z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N20
cycloneii_lcell_comb ix4119z52931(
// Equation(s):
// nx4119z6 = (\sw~combout [5] & (!\sw~combout [6] & ((\sw~combout [4]) # (nx4119z7))))

	.dataa(\sw~combout [4]),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [6]),
	.datad(nx4119z7),
	.cin(gnd),
	.combout(nx4119z6),
	.cout());
// synopsys translate_off
defparam ix4119z52931.lut_mask = 16'h0C08;
defparam ix4119z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N16
cycloneii_lcell_comb ix4119z52934(
// Equation(s):
// nx4119z8 = \sw~combout [6] $ (((\sw~combout [4] & ((\sw~combout [3]) # (\sw~combout [2])))))

	.dataa(\sw~combout [4]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [6]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z8),
	.cout());
// synopsys translate_off
defparam ix4119z52934.lut_mask = 16'h5A78;
defparam ix4119z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N12
cycloneii_lcell_comb ix4119z52936(
// Equation(s):
// nx4119z10 = (\sw~combout [3] & (\sw~combout [4] & ((\sw~combout [2])))) # (!\sw~combout [3] & (!\sw~combout [4] & (!\sw~combout [6])))

	.dataa(\sw~combout [3]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [6]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z10),
	.cout());
// synopsys translate_off
defparam ix4119z52936.lut_mask = 16'h8901;
defparam ix4119z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N20
cycloneii_lcell_comb ix4119z52941(
// Equation(s):
// nx4119z14 = \sw~combout [5] $ (((\sw~combout [2]) # (!\sw~combout [4])))

	.dataa(vcc),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [5]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z14),
	.cout());
// synopsys translate_off
defparam ix4119z52941.lut_mask = 16'h0FC3;
defparam ix4119z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N2
cycloneii_lcell_comb ix4119z52942(
// Equation(s):
// nx4119z15 = \sw~combout [5] $ (((!\sw~combout [4] & ((\sw~combout [0]) # (\sw~combout [2])))))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [5]),
	.cin(gnd),
	.combout(nx4119z15),
	.cout());
// synopsys translate_off
defparam ix4119z52942.lut_mask = 16'hCD32;
defparam ix4119z52942.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N6
cycloneii_lcell_comb ix4119z52940(
// Equation(s):
// nx4119z13 = (\sw~combout [3] & ((\sw~combout [1] & (nx4119z14)) # (!\sw~combout [1] & ((nx4119z15)))))

	.dataa(nx4119z14),
	.datab(nx4119z15),
	.datac(\sw~combout [1]),
	.datad(\sw~combout [3]),
	.cin(gnd),
	.combout(nx4119z13),
	.cout());
// synopsys translate_off
defparam ix4119z52940.lut_mask = 16'hAC00;
defparam ix4119z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N28
cycloneii_lcell_comb ix17637z52925(
// Equation(s):
// nx17637z2 = (\sw~combout [5] & ((\sw~combout [0]) # ((\sw~combout [2]) # (\sw~combout [1]))))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx17637z2),
	.cout());
// synopsys translate_off
defparam ix17637z52925.lut_mask = 16'hCCC8;
defparam ix17637z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y20_N13
cycloneii_lcell_ff reg_audio_out_4_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_4_),
	.sdata(\low_pass|modgen_add_15|nx41961z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_4_));

// Location: LCFF_X27_Y20_N15
cycloneii_lcell_ff reg_audio_out_6_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_6_),
	.sdata(\low_pass|modgen_add_15|nx43955z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_6_));

// Location: LCFF_X27_Y20_N3
cycloneii_lcell_ff reg_audio_out_1_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_1_),
	.sdata(\low_pass|modgen_add_15|nx38970z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_1_));

// Location: LCFF_X27_Y20_N29
cycloneii_lcell_ff reg_audio_out_0_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_0_),
	.sdata(\low_pass|modgen_add_15|nx37973z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_0_));

// Location: LCCOMB_X28_Y20_N10
cycloneii_lcell_comb ix24999z52928(
// Equation(s):
// nx24999z5 = (bit_position_0_ & (((bit_position_1_ & audio_out_0_)))) # (!bit_position_0_ & ((audio_out_1_) # ((!bit_position_1_))))

	.dataa(audio_out_1_),
	.datab(bit_position_0_),
	.datac(bit_position_1_),
	.datad(audio_out_0_),
	.cin(gnd),
	.combout(nx24999z5),
	.cout());
// synopsys translate_off
defparam ix24999z52928.lut_mask = 16'hE323;
defparam ix24999z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y20_N23
cycloneii_lcell_ff reg_audio_out_2_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_2_),
	.sdata(\low_pass|modgen_add_15|nx39967z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_2_));

// Location: LCFF_X29_Y20_N3
cycloneii_lcell_ff reg_audio_out_3_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_3_),
	.sdata(\low_pass|modgen_add_15|nx40964z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_3_));

// Location: LCCOMB_X28_Y20_N20
cycloneii_lcell_comb ix24999z52927(
// Equation(s):
// nx24999z4 = (nx24999z5 & (((bit_position_1_) # (audio_out_3_)))) # (!nx24999z5 & (audio_out_2_ & (!bit_position_1_)))

	.dataa(nx24999z5),
	.datab(audio_out_2_),
	.datac(bit_position_1_),
	.datad(audio_out_3_),
	.cin(gnd),
	.combout(nx24999z4),
	.cout());
// synopsys translate_off
defparam ix24999z52927.lut_mask = 16'hAEA4;
defparam ix24999z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y20_N5
cycloneii_lcell_ff reg_audio_out_9_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_9_),
	.sdata(\low_pass|modgen_add_15|nx46946z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_9_));

// Location: LCFF_X27_Y20_N19
cycloneii_lcell_ff reg_audio_out_11_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_11_),
	.sdata(\low_pass|modgen_add_15|nx63795z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_11_));

// Location: LCFF_X28_Y20_N25
cycloneii_lcell_ff reg_audio_out_12_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\audio_out_12_~feeder_combout ),
	.sdata(\low_pass|modgen_add_15|nx64792z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_12_));

// Location: LCFF_X27_Y20_N31
cycloneii_lcell_ff reg_audio_out_15_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\audio_out_15_~feeder_combout ),
	.sdata(\low_pass|modgen_add_15|nx2247z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_15_));

// Location: LCCOMB_X30_Y18_N8
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52935 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx43955z1  = ((low_pass_in_6_ $ (low_pass_in_4_ $ (!\low_pass|prod_4__mults20_3|nx4241z24 )))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z22  = CARRY((low_pass_in_6_ & ((low_pass_in_4_) # (!\low_pass|prod_4__mults20_3|nx4241z24 ))) # (!low_pass_in_6_ & (low_pass_in_4_ & !\low_pass|prod_4__mults20_3|nx4241z24 )))

	.dataa(low_pass_in_6_),
	.datab(low_pass_in_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z24 ),
	.combout(\low_pass|prod_4__mults20_3|nx43955z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z22 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52935 .lut_mask = 16'h698E;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N16
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52931 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx62798z1  = ((low_pass_in_8_ $ (low_pass_in_10_ $ (!\low_pass|prod_4__mults20_3|nx4241z16 )))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z14  = CARRY((low_pass_in_8_ & ((low_pass_in_10_) # (!\low_pass|prod_4__mults20_3|nx4241z16 ))) # (!low_pass_in_8_ & (low_pass_in_10_ & !\low_pass|prod_4__mults20_3|nx4241z16 )))

	.dataa(low_pass_in_8_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z16 ),
	.combout(\low_pass|prod_4__mults20_3|nx62798z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z14 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52931 .lut_mask = 16'h698E;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N2
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_10|nx38970z1  = (\low_pass|prod_4__mults20_3|nx43955z1  & ((low_pass_in_4_ & (\low_pass|modgen_add_10|nx2247z41  & VCC)) # (!low_pass_in_4_ & (!\low_pass|modgen_add_10|nx2247z41 )))) # (!\low_pass|prod_4__mults20_3|nx43955z1  & 
// ((low_pass_in_4_ & (!\low_pass|modgen_add_10|nx2247z41 )) # (!low_pass_in_4_ & ((\low_pass|modgen_add_10|nx2247z41 ) # (GND)))))
// \low_pass|modgen_add_10|nx2247z38  = CARRY((\low_pass|prod_4__mults20_3|nx43955z1  & (!low_pass_in_4_ & !\low_pass|modgen_add_10|nx2247z41 )) # (!\low_pass|prod_4__mults20_3|nx43955z1  & ((!\low_pass|modgen_add_10|nx2247z41 ) # (!low_pass_in_4_))))

	.dataa(\low_pass|prod_4__mults20_3|nx43955z1 ),
	.datab(low_pass_in_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z41 ),
	.combout(\low_pass|modgen_add_10|nx38970z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z38 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_10|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N4
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_10|nx39967z1  = ((low_pass_in_5_ $ (\low_pass|prod_4__mults20_3|nx44952z1  $ (!\low_pass|modgen_add_10|nx2247z38 )))) # (GND)
// \low_pass|modgen_add_10|nx2247z35  = CARRY((low_pass_in_5_ & ((\low_pass|prod_4__mults20_3|nx44952z1 ) # (!\low_pass|modgen_add_10|nx2247z38 ))) # (!low_pass_in_5_ & (\low_pass|prod_4__mults20_3|nx44952z1  & !\low_pass|modgen_add_10|nx2247z38 )))

	.dataa(low_pass_in_5_),
	.datab(\low_pass|prod_4__mults20_3|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z38 ),
	.combout(\low_pass|modgen_add_10|nx39967z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z35 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_10|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N6
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_10|nx40964z1  = (low_pass_in_6_ & ((\low_pass|prod_4__mults20_3|nx45949z1  & (\low_pass|modgen_add_10|nx2247z35  & VCC)) # (!\low_pass|prod_4__mults20_3|nx45949z1  & (!\low_pass|modgen_add_10|nx2247z35 )))) # (!low_pass_in_6_ & 
// ((\low_pass|prod_4__mults20_3|nx45949z1  & (!\low_pass|modgen_add_10|nx2247z35 )) # (!\low_pass|prod_4__mults20_3|nx45949z1  & ((\low_pass|modgen_add_10|nx2247z35 ) # (GND)))))
// \low_pass|modgen_add_10|nx2247z32  = CARRY((low_pass_in_6_ & (!\low_pass|prod_4__mults20_3|nx45949z1  & !\low_pass|modgen_add_10|nx2247z35 )) # (!low_pass_in_6_ & ((!\low_pass|modgen_add_10|nx2247z35 ) # (!\low_pass|prod_4__mults20_3|nx45949z1 ))))

	.dataa(low_pass_in_6_),
	.datab(\low_pass|prod_4__mults20_3|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z35 ),
	.combout(\low_pass|modgen_add_10|nx40964z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z32 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_10|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N30
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52933 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_8_  = ((low_pass_in_9_ $ (low_pass_in_6_ $ (\low_pass|prod_2__mults20_2|nx6235z11 )))) # (GND)
// \low_pass|prod_2__mults20_2|nx6235z10  = CARRY((low_pass_in_9_ & (low_pass_in_6_ & !\low_pass|prod_2__mults20_2|nx6235z11 )) # (!low_pass_in_9_ & ((low_pass_in_6_) # (!\low_pass|prod_2__mults20_2|nx6235z11 ))))

	.dataa(low_pass_in_9_),
	.datab(low_pass_in_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z11 ),
	.combout(\low_pass|prod_2__mults20_2|d_8_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z10 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52933 .lut_mask = 16'h964D;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N10
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52934 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx45949z1  = (low_pass_in_5_ & ((low_pass_in_8_ & (\low_pass|prod_0__mults21_0|nx5238z22  & VCC)) # (!low_pass_in_8_ & (!\low_pass|prod_0__mults21_0|nx5238z22 )))) # (!low_pass_in_5_ & ((low_pass_in_8_ & 
// (!\low_pass|prod_0__mults21_0|nx5238z22 )) # (!low_pass_in_8_ & ((\low_pass|prod_0__mults21_0|nx5238z22 ) # (GND)))))
// \low_pass|prod_0__mults21_0|nx5238z20  = CARRY((low_pass_in_5_ & (!low_pass_in_8_ & !\low_pass|prod_0__mults21_0|nx5238z22 )) # (!low_pass_in_5_ & ((!\low_pass|prod_0__mults21_0|nx5238z22 ) # (!low_pass_in_8_))))

	.dataa(low_pass_in_5_),
	.datab(low_pass_in_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z22 ),
	.combout(\low_pass|prod_0__mults21_0|nx45949z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z20 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52934 .lut_mask = 16'h9617;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N12
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52933 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx46946z1  = ((low_pass_in_6_ $ (low_pass_in_9_ $ (!\low_pass|prod_0__mults21_0|nx5238z20 )))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z18  = CARRY((low_pass_in_6_ & ((low_pass_in_9_) # (!\low_pass|prod_0__mults21_0|nx5238z20 ))) # (!low_pass_in_6_ & (low_pass_in_9_ & !\low_pass|prod_0__mults21_0|nx5238z20 )))

	.dataa(low_pass_in_6_),
	.datab(low_pass_in_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z20 ),
	.combout(\low_pass|prod_0__mults21_0|nx46946z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z18 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52933 .lut_mask = 16'h698E;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N14
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52932 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx62798z1  = (low_pass_in_7_ & ((low_pass_in_10_ & (\low_pass|prod_0__mults21_0|nx5238z18  & VCC)) # (!low_pass_in_10_ & (!\low_pass|prod_0__mults21_0|nx5238z18 )))) # (!low_pass_in_7_ & ((low_pass_in_10_ & 
// (!\low_pass|prod_0__mults21_0|nx5238z18 )) # (!low_pass_in_10_ & ((\low_pass|prod_0__mults21_0|nx5238z18 ) # (GND)))))
// \low_pass|prod_0__mults21_0|nx5238z16  = CARRY((low_pass_in_7_ & (!low_pass_in_10_ & !\low_pass|prod_0__mults21_0|nx5238z18 )) # (!low_pass_in_7_ & ((!\low_pass|prod_0__mults21_0|nx5238z18 ) # (!low_pass_in_10_))))

	.dataa(low_pass_in_7_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z18 ),
	.combout(\low_pass|prod_0__mults21_0|nx62798z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z16 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52932 .lut_mask = 16'h9617;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N0
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_11|nx37973z1  = (\low_pass|prod_1__mults19_1|nx42958z1  & (\low_pass|prod_0__mults21_0|nx43955z1  $ (VCC))) # (!\low_pass|prod_1__mults19_1|nx42958z1  & (\low_pass|prod_0__mults21_0|nx43955z1  & VCC))
// \low_pass|modgen_add_11|nx2247z45  = CARRY((\low_pass|prod_1__mults19_1|nx42958z1  & \low_pass|prod_0__mults21_0|nx43955z1 ))

	.dataa(\low_pass|prod_1__mults19_1|nx42958z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_11|nx37973z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z45 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_11|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N2
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_11|nx38970z1  = (\low_pass|prod_1__mults19_1|nx43955z1  & ((\low_pass|prod_0__mults21_0|nx44952z1  & (\low_pass|modgen_add_11|nx2247z45  & VCC)) # (!\low_pass|prod_0__mults21_0|nx44952z1  & (!\low_pass|modgen_add_11|nx2247z45 )))) # 
// (!\low_pass|prod_1__mults19_1|nx43955z1  & ((\low_pass|prod_0__mults21_0|nx44952z1  & (!\low_pass|modgen_add_11|nx2247z45 )) # (!\low_pass|prod_0__mults21_0|nx44952z1  & ((\low_pass|modgen_add_11|nx2247z45 ) # (GND)))))
// \low_pass|modgen_add_11|nx2247z42  = CARRY((\low_pass|prod_1__mults19_1|nx43955z1  & (!\low_pass|prod_0__mults21_0|nx44952z1  & !\low_pass|modgen_add_11|nx2247z45 )) # (!\low_pass|prod_1__mults19_1|nx43955z1  & ((!\low_pass|modgen_add_11|nx2247z45 ) # 
// (!\low_pass|prod_0__mults21_0|nx44952z1 ))))

	.dataa(\low_pass|prod_1__mults19_1|nx43955z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z45 ),
	.combout(\low_pass|modgen_add_11|nx38970z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z42 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_11|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N8
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_11|nx41961z1  = ((\low_pass|prod_0__mults21_0|nx62798z1  $ (\low_pass|prod_1__mults19_1|nx46946z1  $ (!\low_pass|modgen_add_11|nx2247z36 )))) # (GND)
// \low_pass|modgen_add_11|nx2247z33  = CARRY((\low_pass|prod_0__mults21_0|nx62798z1  & ((\low_pass|prod_1__mults19_1|nx46946z1 ) # (!\low_pass|modgen_add_11|nx2247z36 ))) # (!\low_pass|prod_0__mults21_0|nx62798z1  & (\low_pass|prod_1__mults19_1|nx46946z1  & 
// !\low_pass|modgen_add_11|nx2247z36 )))

	.dataa(\low_pass|prod_0__mults21_0|nx62798z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z36 ),
	.combout(\low_pass|modgen_add_11|nx41961z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z33 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_11|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N10
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_11|nx42958z1  = (\low_pass|prod_0__mults21_0|nx63795z1  & ((\low_pass|prod_1__mults19_1|nx62798z1  & (\low_pass|modgen_add_11|nx2247z33  & VCC)) # (!\low_pass|prod_1__mults19_1|nx62798z1  & (!\low_pass|modgen_add_11|nx2247z33 )))) # 
// (!\low_pass|prod_0__mults21_0|nx63795z1  & ((\low_pass|prod_1__mults19_1|nx62798z1  & (!\low_pass|modgen_add_11|nx2247z33 )) # (!\low_pass|prod_1__mults19_1|nx62798z1  & ((\low_pass|modgen_add_11|nx2247z33 ) # (GND)))))
// \low_pass|modgen_add_11|nx2247z30  = CARRY((\low_pass|prod_0__mults21_0|nx63795z1  & (!\low_pass|prod_1__mults19_1|nx62798z1  & !\low_pass|modgen_add_11|nx2247z33 )) # (!\low_pass|prod_0__mults21_0|nx63795z1  & ((!\low_pass|modgen_add_11|nx2247z33 ) # 
// (!\low_pass|prod_1__mults19_1|nx62798z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx63795z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z33 ),
	.combout(\low_pass|modgen_add_11|nx42958z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z30 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_11|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N0
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_12|nx37973z1  = (\low_pass|modgen_add_11|nx37973z1  & (\low_pass|prod_2__mults20_2|d_5_  $ (VCC))) # (!\low_pass|modgen_add_11|nx37973z1  & (\low_pass|prod_2__mults20_2|d_5_  & VCC))
// \low_pass|modgen_add_12|nx2247z45  = CARRY((\low_pass|modgen_add_11|nx37973z1  & \low_pass|prod_2__mults20_2|d_5_ ))

	.dataa(\low_pass|modgen_add_11|nx37973z1 ),
	.datab(\low_pass|prod_2__mults20_2|d_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_12|nx37973z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z45 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_12|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N8
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_12|nx41961z1  = ((\low_pass|modgen_add_11|nx41961z1  $ (\low_pass|prod_2__mults20_2|d_9_  $ (!\low_pass|modgen_add_12|nx2247z36 )))) # (GND)
// \low_pass|modgen_add_12|nx2247z33  = CARRY((\low_pass|modgen_add_11|nx41961z1  & ((\low_pass|prod_2__mults20_2|d_9_ ) # (!\low_pass|modgen_add_12|nx2247z36 ))) # (!\low_pass|modgen_add_11|nx41961z1  & (\low_pass|prod_2__mults20_2|d_9_  & 
// !\low_pass|modgen_add_12|nx2247z36 )))

	.dataa(\low_pass|modgen_add_11|nx41961z1 ),
	.datab(\low_pass|prod_2__mults20_2|d_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z36 ),
	.combout(\low_pass|modgen_add_12|nx41961z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z33 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_12|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N10
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_12|nx42958z1  = (\low_pass|modgen_add_11|nx42958z1  & ((\low_pass|prod_2__mults20_2|d_10_  & (\low_pass|modgen_add_12|nx2247z33  & VCC)) # (!\low_pass|prod_2__mults20_2|d_10_  & (!\low_pass|modgen_add_12|nx2247z33 )))) # 
// (!\low_pass|modgen_add_11|nx42958z1  & ((\low_pass|prod_2__mults20_2|d_10_  & (!\low_pass|modgen_add_12|nx2247z33 )) # (!\low_pass|prod_2__mults20_2|d_10_  & ((\low_pass|modgen_add_12|nx2247z33 ) # (GND)))))
// \low_pass|modgen_add_12|nx2247z30  = CARRY((\low_pass|modgen_add_11|nx42958z1  & (!\low_pass|prod_2__mults20_2|d_10_  & !\low_pass|modgen_add_12|nx2247z33 )) # (!\low_pass|modgen_add_11|nx42958z1  & ((!\low_pass|modgen_add_12|nx2247z33 ) # 
// (!\low_pass|prod_2__mults20_2|d_10_ ))))

	.dataa(\low_pass|modgen_add_11|nx42958z1 ),
	.datab(\low_pass|prod_2__mults20_2|d_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z33 ),
	.combout(\low_pass|modgen_add_12|nx42958z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z30 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_12|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N0
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_13|nx37973z1  = (\low_pass|modgen_add_12|nx37973z1  & (\low_pass|modgen_add_10|nx37973z1  $ (VCC))) # (!\low_pass|modgen_add_12|nx37973z1  & (\low_pass|modgen_add_10|nx37973z1  & VCC))
// \low_pass|modgen_add_13|nx2247z46  = CARRY((\low_pass|modgen_add_12|nx37973z1  & \low_pass|modgen_add_10|nx37973z1 ))

	.dataa(\low_pass|modgen_add_12|nx37973z1 ),
	.datab(\low_pass|modgen_add_10|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_13|nx37973z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_13|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N2
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_13|nx38970z1  = (\low_pass|modgen_add_10|nx38970z1  & ((\low_pass|modgen_add_12|nx38970z1  & (\low_pass|modgen_add_13|nx2247z46  & VCC)) # (!\low_pass|modgen_add_12|nx38970z1  & (!\low_pass|modgen_add_13|nx2247z46 )))) # 
// (!\low_pass|modgen_add_10|nx38970z1  & ((\low_pass|modgen_add_12|nx38970z1  & (!\low_pass|modgen_add_13|nx2247z46 )) # (!\low_pass|modgen_add_12|nx38970z1  & ((\low_pass|modgen_add_13|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_13|nx2247z43  = CARRY((\low_pass|modgen_add_10|nx38970z1  & (!\low_pass|modgen_add_12|nx38970z1  & !\low_pass|modgen_add_13|nx2247z46 )) # (!\low_pass|modgen_add_10|nx38970z1  & ((!\low_pass|modgen_add_13|nx2247z46 ) # 
// (!\low_pass|modgen_add_12|nx38970z1 ))))

	.dataa(\low_pass|modgen_add_10|nx38970z1 ),
	.datab(\low_pass|modgen_add_12|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z46 ),
	.combout(\low_pass|modgen_add_13|nx38970z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_13|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N4
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_13|nx39967z1  = ((\low_pass|modgen_add_10|nx39967z1  $ (\low_pass|modgen_add_12|nx39967z1  $ (!\low_pass|modgen_add_13|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_13|nx2247z40  = CARRY((\low_pass|modgen_add_10|nx39967z1  & ((\low_pass|modgen_add_12|nx39967z1 ) # (!\low_pass|modgen_add_13|nx2247z43 ))) # (!\low_pass|modgen_add_10|nx39967z1  & (\low_pass|modgen_add_12|nx39967z1  & 
// !\low_pass|modgen_add_13|nx2247z43 )))

	.dataa(\low_pass|modgen_add_10|nx39967z1 ),
	.datab(\low_pass|modgen_add_12|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z43 ),
	.combout(\low_pass|modgen_add_13|nx39967z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_13|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N10
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_13|nx42958z1  = (\low_pass|modgen_add_12|nx42958z1  & ((\low_pass|modgen_add_10|nx42958z1  & (\low_pass|modgen_add_13|nx2247z34  & VCC)) # (!\low_pass|modgen_add_10|nx42958z1  & (!\low_pass|modgen_add_13|nx2247z34 )))) # 
// (!\low_pass|modgen_add_12|nx42958z1  & ((\low_pass|modgen_add_10|nx42958z1  & (!\low_pass|modgen_add_13|nx2247z34 )) # (!\low_pass|modgen_add_10|nx42958z1  & ((\low_pass|modgen_add_13|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_13|nx2247z31  = CARRY((\low_pass|modgen_add_12|nx42958z1  & (!\low_pass|modgen_add_10|nx42958z1  & !\low_pass|modgen_add_13|nx2247z34 )) # (!\low_pass|modgen_add_12|nx42958z1  & ((!\low_pass|modgen_add_13|nx2247z34 ) # 
// (!\low_pass|modgen_add_10|nx42958z1 ))))

	.dataa(\low_pass|modgen_add_12|nx42958z1 ),
	.datab(\low_pass|modgen_add_10|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z34 ),
	.combout(\low_pass|modgen_add_13|nx42958z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_13|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N30
cycloneii_lcell_comb \low_pass|prod_6__mults19_5|ix41961z52925 (
// Equation(s):
// \low_pass|prod_6__mults19_5|nx41961z3  = (low_pass_in_1_ & ((low_pass_in_2_) # ((low_pass_in_0_ & low_pass_in_3_))))

	.dataa(low_pass_in_1_),
	.datab(low_pass_in_2_),
	.datac(low_pass_in_0_),
	.datad(low_pass_in_3_),
	.cin(gnd),
	.combout(\low_pass|prod_6__mults19_5|nx41961z3 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_6__mults19_5|ix41961z52925 .lut_mask = 16'hA888;
defparam \low_pass|prod_6__mults19_5|ix41961z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N24
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_4|nx40964z1  = (((\low_pass|modgen_add_4|nx2247z28 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z26  = CARRY(\low_pass|prod_1__mults19_1|nx44952z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_1__mults19_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z28 ),
	.combout(\low_pass|modgen_add_4|nx40964z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z26 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52936 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_4|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N28
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_4|nx42958z1  = (((\low_pass|modgen_add_4|nx2247z24 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z22  = CARRY(\low_pass|prod_1__mults19_1|nx46946z1 )

	.dataa(\low_pass|prod_1__mults19_1|nx46946z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z24 ),
	.combout(\low_pass|modgen_add_4|nx42958z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52934 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_4|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N6
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52938 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_2_  = ((low_pass_in_3_ $ (low_pass_in_2_ $ (!\low_pass|prod_5__mults21_4|nx3244z15 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z14  = CARRY((low_pass_in_3_ & ((low_pass_in_2_) # (!\low_pass|prod_5__mults21_4|nx3244z15 ))) # (!low_pass_in_3_ & (low_pass_in_2_ & !\low_pass|prod_5__mults21_4|nx3244z15 )))

	.dataa(low_pass_in_3_),
	.datab(low_pass_in_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z15 ),
	.combout(\low_pass|prod_5__mults21_4|d_2_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z14 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52938 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N16
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52933 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_7_  = (low_pass_in_7_ & ((low_pass_in_8_ & (\low_pass|prod_5__mults21_4|nx3244z10  & VCC)) # (!low_pass_in_8_ & (!\low_pass|prod_5__mults21_4|nx3244z10 )))) # (!low_pass_in_7_ & ((low_pass_in_8_ & 
// (!\low_pass|prod_5__mults21_4|nx3244z10 )) # (!low_pass_in_8_ & ((\low_pass|prod_5__mults21_4|nx3244z10 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z9  = CARRY((low_pass_in_7_ & (!low_pass_in_8_ & !\low_pass|prod_5__mults21_4|nx3244z10 )) # (!low_pass_in_7_ & ((!\low_pass|prod_5__mults21_4|nx3244z10 ) # (!low_pass_in_8_))))

	.dataa(low_pass_in_7_),
	.datab(low_pass_in_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z10 ),
	.combout(\low_pass|prod_5__mults21_4|d_7_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z9 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52933 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N10
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52945 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_5__dup_191  = (\low_pass|prod_5__mults21_4|d_7_  & ((low_pass_in_5_ & (\low_pass|prod_5__mults21_4|nx3244z22  & VCC)) # (!low_pass_in_5_ & (!\low_pass|prod_5__mults21_4|nx3244z22 )))) # (!\low_pass|prod_5__mults21_4|d_7_  & 
// ((low_pass_in_5_ & (!\low_pass|prod_5__mults21_4|nx3244z22 )) # (!low_pass_in_5_ & ((\low_pass|prod_5__mults21_4|nx3244z22 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z21  = CARRY((\low_pass|prod_5__mults21_4|d_7_  & (!low_pass_in_5_ & !\low_pass|prod_5__mults21_4|nx3244z22 )) # (!\low_pass|prod_5__mults21_4|d_7_  & ((!\low_pass|prod_5__mults21_4|nx3244z22 ) # (!low_pass_in_5_))))

	.dataa(\low_pass|prod_5__mults21_4|d_7_ ),
	.datab(low_pass_in_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z22 ),
	.combout(\low_pass|prod_5__mults21_4|d_5__dup_191 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z21 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52945 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52945 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N12
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52944 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_6__dup_190  = ((low_pass_in_6_ $ (\low_pass|prod_5__mults21_4|d_8_  $ (!\low_pass|prod_5__mults21_4|nx3244z21 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z20  = CARRY((low_pass_in_6_ & ((\low_pass|prod_5__mults21_4|d_8_ ) # (!\low_pass|prod_5__mults21_4|nx3244z21 ))) # (!low_pass_in_6_ & (\low_pass|prod_5__mults21_4|d_8_  & !\low_pass|prod_5__mults21_4|nx3244z21 )))

	.dataa(low_pass_in_6_),
	.datab(\low_pass|prod_5__mults21_4|d_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z21 ),
	.combout(\low_pass|prod_5__mults21_4|d_6__dup_190 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z20 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52944 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52944 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N14
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52943 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_7__dup_189  = (low_pass_in_7_ & ((\low_pass|prod_5__mults21_4|d_9_  & (\low_pass|prod_5__mults21_4|nx3244z20  & VCC)) # (!\low_pass|prod_5__mults21_4|d_9_  & (!\low_pass|prod_5__mults21_4|nx3244z20 )))) # (!low_pass_in_7_ & 
// ((\low_pass|prod_5__mults21_4|d_9_  & (!\low_pass|prod_5__mults21_4|nx3244z20 )) # (!\low_pass|prod_5__mults21_4|d_9_  & ((\low_pass|prod_5__mults21_4|nx3244z20 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z19  = CARRY((low_pass_in_7_ & (!\low_pass|prod_5__mults21_4|d_9_  & !\low_pass|prod_5__mults21_4|nx3244z20 )) # (!low_pass_in_7_ & ((!\low_pass|prod_5__mults21_4|nx3244z20 ) # (!\low_pass|prod_5__mults21_4|d_9_ ))))

	.dataa(low_pass_in_7_),
	.datab(\low_pass|prod_5__mults21_4|d_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z20 ),
	.combout(\low_pass|prod_5__mults21_4|d_7__dup_189 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z19 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52943 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52943 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N18
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_8|nx37973z1  = (\low_pass|modgen_add_8|nx2247z49  & (\low_pass|prod_6__mults19_5|nx44479z1  $ ((!\low_pass|prod_6__mults19_5|nx44471z1 )))) # (!\low_pass|modgen_add_8|nx2247z49  & ((\low_pass|prod_6__mults19_5|nx44479z1  $ 
// (\low_pass|prod_6__mults19_5|nx44471z1 )) # (GND)))
// \low_pass|modgen_add_8|nx2247z46  = CARRY((\low_pass|prod_6__mults19_5|nx44479z1  $ (!\low_pass|prod_6__mults19_5|nx44471z1 )) # (!\low_pass|modgen_add_8|nx2247z49 ))

	.dataa(\low_pass|prod_6__mults19_5|nx44479z1 ),
	.datab(\low_pass|prod_6__mults19_5|nx44471z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z49 ),
	.combout(\low_pass|modgen_add_8|nx37973z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52939 .lut_mask = 16'h969F;
defparam \low_pass|modgen_add_8|ix2247z52939 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N20
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_8|nx38970z1  = ((\low_pass|prod_1__mults19_1|nx42958z1  $ (\low_pass|prod_5__mults21_4|d_4__dup_192  $ (!\low_pass|modgen_add_8|nx2247z46 )))) # (GND)
// \low_pass|modgen_add_8|nx2247z43  = CARRY((\low_pass|prod_1__mults19_1|nx42958z1  & ((\low_pass|prod_5__mults21_4|d_4__dup_192 ) # (!\low_pass|modgen_add_8|nx2247z46 ))) # (!\low_pass|prod_1__mults19_1|nx42958z1  & 
// (\low_pass|prod_5__mults21_4|d_4__dup_192  & !\low_pass|modgen_add_8|nx2247z46 )))

	.dataa(\low_pass|prod_1__mults19_1|nx42958z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_4__dup_192 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z46 ),
	.combout(\low_pass|modgen_add_8|nx38970z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52938 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_8|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N26
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_8|nx41961z1  = (\low_pass|prod_5__mults21_4|d_7__dup_189  & ((\low_pass|prod_1__mults19_1|nx45949z1  & (\low_pass|modgen_add_8|nx2247z37  & VCC)) # (!\low_pass|prod_1__mults19_1|nx45949z1  & (!\low_pass|modgen_add_8|nx2247z37 )))) # 
// (!\low_pass|prod_5__mults21_4|d_7__dup_189  & ((\low_pass|prod_1__mults19_1|nx45949z1  & (!\low_pass|modgen_add_8|nx2247z37 )) # (!\low_pass|prod_1__mults19_1|nx45949z1  & ((\low_pass|modgen_add_8|nx2247z37 ) # (GND)))))
// \low_pass|modgen_add_8|nx2247z34  = CARRY((\low_pass|prod_5__mults21_4|d_7__dup_189  & (!\low_pass|prod_1__mults19_1|nx45949z1  & !\low_pass|modgen_add_8|nx2247z37 )) # (!\low_pass|prod_5__mults21_4|d_7__dup_189  & ((!\low_pass|modgen_add_8|nx2247z37 ) # 
// (!\low_pass|prod_1__mults19_1|nx45949z1 ))))

	.dataa(\low_pass|prod_5__mults21_4|d_7__dup_189 ),
	.datab(\low_pass|prod_1__mults19_1|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z37 ),
	.combout(\low_pass|modgen_add_8|nx41961z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52935 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_8|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N6
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_9|nx40964z1  = (\low_pass|modgen_add_4|nx40964z1  & ((\low_pass|modgen_add_8|nx40964z1  & (\low_pass|modgen_add_9|nx2247z40  & VCC)) # (!\low_pass|modgen_add_8|nx40964z1  & (!\low_pass|modgen_add_9|nx2247z40 )))) # 
// (!\low_pass|modgen_add_4|nx40964z1  & ((\low_pass|modgen_add_8|nx40964z1  & (!\low_pass|modgen_add_9|nx2247z40 )) # (!\low_pass|modgen_add_8|nx40964z1  & ((\low_pass|modgen_add_9|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_9|nx2247z37  = CARRY((\low_pass|modgen_add_4|nx40964z1  & (!\low_pass|modgen_add_8|nx40964z1  & !\low_pass|modgen_add_9|nx2247z40 )) # (!\low_pass|modgen_add_4|nx40964z1  & ((!\low_pass|modgen_add_9|nx2247z40 ) # 
// (!\low_pass|modgen_add_8|nx40964z1 ))))

	.dataa(\low_pass|modgen_add_4|nx40964z1 ),
	.datab(\low_pass|modgen_add_8|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z40 ),
	.combout(\low_pass|modgen_add_9|nx40964z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_9|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N8
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_9|nx41961z1  = ((\low_pass|modgen_add_8|nx41961z1  $ (\low_pass|modgen_add_4|nx41961z1  $ (!\low_pass|modgen_add_9|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_9|nx2247z34  = CARRY((\low_pass|modgen_add_8|nx41961z1  & ((\low_pass|modgen_add_4|nx41961z1 ) # (!\low_pass|modgen_add_9|nx2247z37 ))) # (!\low_pass|modgen_add_8|nx41961z1  & (\low_pass|modgen_add_4|nx41961z1  & 
// !\low_pass|modgen_add_9|nx2247z37 )))

	.dataa(\low_pass|modgen_add_8|nx41961z1 ),
	.datab(\low_pass|modgen_add_4|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z37 ),
	.combout(\low_pass|modgen_add_9|nx41961z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_9|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N4
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_14|nx39967z1  = ((\low_pass|modgen_add_13|nx39967z1  $ (\low_pass|modgen_add_9|nx39967z1  $ (!\low_pass|modgen_add_14|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_14|nx2247z40  = CARRY((\low_pass|modgen_add_13|nx39967z1  & ((\low_pass|modgen_add_9|nx39967z1 ) # (!\low_pass|modgen_add_14|nx2247z43 ))) # (!\low_pass|modgen_add_13|nx39967z1  & (\low_pass|modgen_add_9|nx39967z1  & 
// !\low_pass|modgen_add_14|nx2247z43 )))

	.dataa(\low_pass|modgen_add_13|nx39967z1 ),
	.datab(\low_pass|modgen_add_9|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z43 ),
	.combout(\low_pass|modgen_add_14|nx39967z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_14|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N6
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_14|nx40964z1  = (\low_pass|modgen_add_9|nx40964z1  & ((\low_pass|modgen_add_13|nx40964z1  & (\low_pass|modgen_add_14|nx2247z40  & VCC)) # (!\low_pass|modgen_add_13|nx40964z1  & (!\low_pass|modgen_add_14|nx2247z40 )))) # 
// (!\low_pass|modgen_add_9|nx40964z1  & ((\low_pass|modgen_add_13|nx40964z1  & (!\low_pass|modgen_add_14|nx2247z40 )) # (!\low_pass|modgen_add_13|nx40964z1  & ((\low_pass|modgen_add_14|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_14|nx2247z37  = CARRY((\low_pass|modgen_add_9|nx40964z1  & (!\low_pass|modgen_add_13|nx40964z1  & !\low_pass|modgen_add_14|nx2247z40 )) # (!\low_pass|modgen_add_9|nx40964z1  & ((!\low_pass|modgen_add_14|nx2247z40 ) # 
// (!\low_pass|modgen_add_13|nx40964z1 ))))

	.dataa(\low_pass|modgen_add_9|nx40964z1 ),
	.datab(\low_pass|modgen_add_13|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z40 ),
	.combout(\low_pass|modgen_add_14|nx40964z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_14|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N0
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_3|nx37973z1  = (\low_pass|prod_4__mults20_3|nx42958z1  & (\low_pass|prod_5__mults21_4|d_3__dup_193  $ (VCC))) # (!\low_pass|prod_4__mults20_3|nx42958z1  & (\low_pass|prod_5__mults21_4|d_3__dup_193  & VCC))
// \low_pass|modgen_add_3|nx2247z46  = CARRY((\low_pass|prod_4__mults20_3|nx42958z1  & \low_pass|prod_5__mults21_4|d_3__dup_193 ))

	.dataa(\low_pass|prod_4__mults20_3|nx42958z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_3__dup_193 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_3|nx37973z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_3|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N2
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_3|nx38970z1  = (\low_pass|prod_4__mults20_3|nx43955z1  & ((\low_pass|prod_5__mults21_4|d_4__dup_192  & (\low_pass|modgen_add_3|nx2247z46  & VCC)) # (!\low_pass|prod_5__mults21_4|d_4__dup_192  & (!\low_pass|modgen_add_3|nx2247z46 )))) 
// # (!\low_pass|prod_4__mults20_3|nx43955z1  & ((\low_pass|prod_5__mults21_4|d_4__dup_192  & (!\low_pass|modgen_add_3|nx2247z46 )) # (!\low_pass|prod_5__mults21_4|d_4__dup_192  & ((\low_pass|modgen_add_3|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_3|nx2247z43  = CARRY((\low_pass|prod_4__mults20_3|nx43955z1  & (!\low_pass|prod_5__mults21_4|d_4__dup_192  & !\low_pass|modgen_add_3|nx2247z46 )) # (!\low_pass|prod_4__mults20_3|nx43955z1  & ((!\low_pass|modgen_add_3|nx2247z46 ) # 
// (!\low_pass|prod_5__mults21_4|d_4__dup_192 ))))

	.dataa(\low_pass|prod_4__mults20_3|nx43955z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_4__dup_192 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z46 ),
	.combout(\low_pass|modgen_add_3|nx38970z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_3|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N4
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_3|nx39967z1  = ((\low_pass|prod_5__mults21_4|d_5__dup_191  $ (\low_pass|prod_4__mults20_3|nx44952z1  $ (!\low_pass|modgen_add_3|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_3|nx2247z40  = CARRY((\low_pass|prod_5__mults21_4|d_5__dup_191  & ((\low_pass|prod_4__mults20_3|nx44952z1 ) # (!\low_pass|modgen_add_3|nx2247z43 ))) # (!\low_pass|prod_5__mults21_4|d_5__dup_191  & 
// (\low_pass|prod_4__mults20_3|nx44952z1  & !\low_pass|modgen_add_3|nx2247z43 )))

	.dataa(\low_pass|prod_5__mults21_4|d_5__dup_191 ),
	.datab(\low_pass|prod_4__mults20_3|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z43 ),
	.combout(\low_pass|modgen_add_3|nx39967z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_3|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N8
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_3|nx41961z1  = ((\low_pass|prod_5__mults21_4|d_7__dup_189  $ (\low_pass|prod_4__mults20_3|nx46946z1  $ (!\low_pass|modgen_add_3|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_3|nx2247z34  = CARRY((\low_pass|prod_5__mults21_4|d_7__dup_189  & ((\low_pass|prod_4__mults20_3|nx46946z1 ) # (!\low_pass|modgen_add_3|nx2247z37 ))) # (!\low_pass|prod_5__mults21_4|d_7__dup_189  & 
// (\low_pass|prod_4__mults20_3|nx46946z1  & !\low_pass|modgen_add_3|nx2247z37 )))

	.dataa(\low_pass|prod_5__mults21_4|d_7__dup_189 ),
	.datab(\low_pass|prod_4__mults20_3|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z37 ),
	.combout(\low_pass|modgen_add_3|nx41961z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_3|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N2
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_5|nx38970z1  = (\low_pass|modgen_add_3|nx38970z1  & ((\low_pass|modgen_add_4|nx38970z1  & (\low_pass|modgen_add_5|nx2247z46  & VCC)) # (!\low_pass|modgen_add_4|nx38970z1  & (!\low_pass|modgen_add_5|nx2247z46 )))) # 
// (!\low_pass|modgen_add_3|nx38970z1  & ((\low_pass|modgen_add_4|nx38970z1  & (!\low_pass|modgen_add_5|nx2247z46 )) # (!\low_pass|modgen_add_4|nx38970z1  & ((\low_pass|modgen_add_5|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_5|nx2247z43  = CARRY((\low_pass|modgen_add_3|nx38970z1  & (!\low_pass|modgen_add_4|nx38970z1  & !\low_pass|modgen_add_5|nx2247z46 )) # (!\low_pass|modgen_add_3|nx38970z1  & ((!\low_pass|modgen_add_5|nx2247z46 ) # 
// (!\low_pass|modgen_add_4|nx38970z1 ))))

	.dataa(\low_pass|modgen_add_3|nx38970z1 ),
	.datab(\low_pass|modgen_add_4|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z46 ),
	.combout(\low_pass|modgen_add_5|nx38970z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_5|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N4
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_5|nx39967z1  = ((\low_pass|modgen_add_3|nx39967z1  $ (\low_pass|modgen_add_4|nx39967z1  $ (!\low_pass|modgen_add_5|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_5|nx2247z40  = CARRY((\low_pass|modgen_add_3|nx39967z1  & ((\low_pass|modgen_add_4|nx39967z1 ) # (!\low_pass|modgen_add_5|nx2247z43 ))) # (!\low_pass|modgen_add_3|nx39967z1  & (\low_pass|modgen_add_4|nx39967z1  & 
// !\low_pass|modgen_add_5|nx2247z43 )))

	.dataa(\low_pass|modgen_add_3|nx39967z1 ),
	.datab(\low_pass|modgen_add_4|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z43 ),
	.combout(\low_pass|modgen_add_5|nx39967z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_5|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N6
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_5|nx40964z1  = (\low_pass|modgen_add_4|nx40964z1  & ((\low_pass|modgen_add_3|nx40964z1  & (\low_pass|modgen_add_5|nx2247z40  & VCC)) # (!\low_pass|modgen_add_3|nx40964z1  & (!\low_pass|modgen_add_5|nx2247z40 )))) # 
// (!\low_pass|modgen_add_4|nx40964z1  & ((\low_pass|modgen_add_3|nx40964z1  & (!\low_pass|modgen_add_5|nx2247z40 )) # (!\low_pass|modgen_add_3|nx40964z1  & ((\low_pass|modgen_add_5|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_5|nx2247z37  = CARRY((\low_pass|modgen_add_4|nx40964z1  & (!\low_pass|modgen_add_3|nx40964z1  & !\low_pass|modgen_add_5|nx2247z40 )) # (!\low_pass|modgen_add_4|nx40964z1  & ((!\low_pass|modgen_add_5|nx2247z40 ) # 
// (!\low_pass|modgen_add_3|nx40964z1 ))))

	.dataa(\low_pass|modgen_add_4|nx40964z1 ),
	.datab(\low_pass|modgen_add_3|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z40 ),
	.combout(\low_pass|modgen_add_5|nx40964z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_5|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N0
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_0|nx37973z1  = (\low_pass|prod_1__mults19_1|nx42958z1  & (\low_pass|prod_0__mults21_0|nx43955z1  $ (VCC))) # (!\low_pass|prod_1__mults19_1|nx42958z1  & (\low_pass|prod_0__mults21_0|nx43955z1  & VCC))
// \low_pass|modgen_add_0|nx2247z45  = CARRY((\low_pass|prod_1__mults19_1|nx42958z1  & \low_pass|prod_0__mults21_0|nx43955z1 ))

	.dataa(\low_pass|prod_1__mults19_1|nx42958z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_0|nx37973z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z45 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_0|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N2
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_0|nx38970z1  = (\low_pass|prod_0__mults21_0|nx44952z1  & ((\low_pass|prod_1__mults19_1|nx43955z1  & (\low_pass|modgen_add_0|nx2247z45  & VCC)) # (!\low_pass|prod_1__mults19_1|nx43955z1  & (!\low_pass|modgen_add_0|nx2247z45 )))) # 
// (!\low_pass|prod_0__mults21_0|nx44952z1  & ((\low_pass|prod_1__mults19_1|nx43955z1  & (!\low_pass|modgen_add_0|nx2247z45 )) # (!\low_pass|prod_1__mults19_1|nx43955z1  & ((\low_pass|modgen_add_0|nx2247z45 ) # (GND)))))
// \low_pass|modgen_add_0|nx2247z42  = CARRY((\low_pass|prod_0__mults21_0|nx44952z1  & (!\low_pass|prod_1__mults19_1|nx43955z1  & !\low_pass|modgen_add_0|nx2247z45 )) # (!\low_pass|prod_0__mults21_0|nx44952z1  & ((!\low_pass|modgen_add_0|nx2247z45 ) # 
// (!\low_pass|prod_1__mults19_1|nx43955z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx44952z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z45 ),
	.combout(\low_pass|modgen_add_0|nx38970z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z42 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_0|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N4
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_0|nx39967z1  = ((\low_pass|prod_0__mults21_0|nx45949z1  $ (\low_pass|prod_1__mults19_1|nx44952z1  $ (!\low_pass|modgen_add_0|nx2247z42 )))) # (GND)
// \low_pass|modgen_add_0|nx2247z39  = CARRY((\low_pass|prod_0__mults21_0|nx45949z1  & ((\low_pass|prod_1__mults19_1|nx44952z1 ) # (!\low_pass|modgen_add_0|nx2247z42 ))) # (!\low_pass|prod_0__mults21_0|nx45949z1  & (\low_pass|prod_1__mults19_1|nx44952z1  & 
// !\low_pass|modgen_add_0|nx2247z42 )))

	.dataa(\low_pass|prod_0__mults21_0|nx45949z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z42 ),
	.combout(\low_pass|modgen_add_0|nx39967z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z39 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_0|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N6
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_0|nx40964z1  = (\low_pass|prod_0__mults21_0|nx46946z1  & ((\low_pass|prod_1__mults19_1|nx45949z1  & (\low_pass|modgen_add_0|nx2247z39  & VCC)) # (!\low_pass|prod_1__mults19_1|nx45949z1  & (!\low_pass|modgen_add_0|nx2247z39 )))) # 
// (!\low_pass|prod_0__mults21_0|nx46946z1  & ((\low_pass|prod_1__mults19_1|nx45949z1  & (!\low_pass|modgen_add_0|nx2247z39 )) # (!\low_pass|prod_1__mults19_1|nx45949z1  & ((\low_pass|modgen_add_0|nx2247z39 ) # (GND)))))
// \low_pass|modgen_add_0|nx2247z36  = CARRY((\low_pass|prod_0__mults21_0|nx46946z1  & (!\low_pass|prod_1__mults19_1|nx45949z1  & !\low_pass|modgen_add_0|nx2247z39 )) # (!\low_pass|prod_0__mults21_0|nx46946z1  & ((!\low_pass|modgen_add_0|nx2247z39 ) # 
// (!\low_pass|prod_1__mults19_1|nx45949z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx46946z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z39 ),
	.combout(\low_pass|modgen_add_0|nx40964z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z36 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_0|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N8
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_1|nx41961z1  = ((low_pass_in_7_ $ (\low_pass|prod_2__mults20_2|d_9_  $ (!\low_pass|modgen_add_1|nx2247z32 )))) # (GND)
// \low_pass|modgen_add_1|nx2247z29  = CARRY((low_pass_in_7_ & ((\low_pass|prod_2__mults20_2|d_9_ ) # (!\low_pass|modgen_add_1|nx2247z32 ))) # (!low_pass_in_7_ & (\low_pass|prod_2__mults20_2|d_9_  & !\low_pass|modgen_add_1|nx2247z32 )))

	.dataa(low_pass_in_7_),
	.datab(\low_pass|prod_2__mults20_2|d_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z32 ),
	.combout(\low_pass|modgen_add_1|nx41961z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z29 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_1|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N10
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_1|nx42958z1  = (low_pass_in_8_ & ((\low_pass|prod_2__mults20_2|d_10_  & (\low_pass|modgen_add_1|nx2247z29  & VCC)) # (!\low_pass|prod_2__mults20_2|d_10_  & (!\low_pass|modgen_add_1|nx2247z29 )))) # (!low_pass_in_8_ & 
// ((\low_pass|prod_2__mults20_2|d_10_  & (!\low_pass|modgen_add_1|nx2247z29 )) # (!\low_pass|prod_2__mults20_2|d_10_  & ((\low_pass|modgen_add_1|nx2247z29 ) # (GND)))))
// \low_pass|modgen_add_1|nx2247z26  = CARRY((low_pass_in_8_ & (!\low_pass|prod_2__mults20_2|d_10_  & !\low_pass|modgen_add_1|nx2247z29 )) # (!low_pass_in_8_ & ((!\low_pass|modgen_add_1|nx2247z29 ) # (!\low_pass|prod_2__mults20_2|d_10_ ))))

	.dataa(low_pass_in_8_),
	.datab(\low_pass|prod_2__mults20_2|d_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z29 ),
	.combout(\low_pass|modgen_add_1|nx42958z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z26 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_1|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N0
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_2|nx37973z1  = (\low_pass|modgen_add_0|nx37973z1  & (\low_pass|modgen_add_1|nx37973z1  $ (VCC))) # (!\low_pass|modgen_add_0|nx37973z1  & (\low_pass|modgen_add_1|nx37973z1  & VCC))
// \low_pass|modgen_add_2|nx2247z46  = CARRY((\low_pass|modgen_add_0|nx37973z1  & \low_pass|modgen_add_1|nx37973z1 ))

	.dataa(\low_pass|modgen_add_0|nx37973z1 ),
	.datab(\low_pass|modgen_add_1|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_2|nx37973z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_2|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N8
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_2|nx41961z1  = ((\low_pass|modgen_add_1|nx41961z1  $ (\low_pass|modgen_add_0|nx41961z1  $ (!\low_pass|modgen_add_2|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_2|nx2247z34  = CARRY((\low_pass|modgen_add_1|nx41961z1  & ((\low_pass|modgen_add_0|nx41961z1 ) # (!\low_pass|modgen_add_2|nx2247z37 ))) # (!\low_pass|modgen_add_1|nx41961z1  & (\low_pass|modgen_add_0|nx41961z1  & 
// !\low_pass|modgen_add_2|nx2247z37 )))

	.dataa(\low_pass|modgen_add_1|nx41961z1 ),
	.datab(\low_pass|modgen_add_0|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z37 ),
	.combout(\low_pass|modgen_add_2|nx41961z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_2|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N10
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_2|nx42958z1  = (\low_pass|modgen_add_1|nx42958z1  & ((\low_pass|modgen_add_0|nx42958z1  & (\low_pass|modgen_add_2|nx2247z34  & VCC)) # (!\low_pass|modgen_add_0|nx42958z1  & (!\low_pass|modgen_add_2|nx2247z34 )))) # 
// (!\low_pass|modgen_add_1|nx42958z1  & ((\low_pass|modgen_add_0|nx42958z1  & (!\low_pass|modgen_add_2|nx2247z34 )) # (!\low_pass|modgen_add_0|nx42958z1  & ((\low_pass|modgen_add_2|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_2|nx2247z31  = CARRY((\low_pass|modgen_add_1|nx42958z1  & (!\low_pass|modgen_add_0|nx42958z1  & !\low_pass|modgen_add_2|nx2247z34 )) # (!\low_pass|modgen_add_1|nx42958z1  & ((!\low_pass|modgen_add_2|nx2247z34 ) # 
// (!\low_pass|modgen_add_0|nx42958z1 ))))

	.dataa(\low_pass|modgen_add_1|nx42958z1 ),
	.datab(\low_pass|modgen_add_0|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z34 ),
	.combout(\low_pass|modgen_add_2|nx42958z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_2|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N0
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_6|nx37973z1  = (\low_pass|modgen_add_2|nx37973z1  & (\low_pass|modgen_add_5|nx37973z1  $ (VCC))) # (!\low_pass|modgen_add_2|nx37973z1  & (\low_pass|modgen_add_5|nx37973z1  & VCC))
// \low_pass|modgen_add_6|nx2247z46  = CARRY((\low_pass|modgen_add_2|nx37973z1  & \low_pass|modgen_add_5|nx37973z1 ))

	.dataa(\low_pass|modgen_add_2|nx37973z1 ),
	.datab(\low_pass|modgen_add_5|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_6|nx37973z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_6|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N2
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_6|nx38970z1  = (\low_pass|modgen_add_5|nx38970z1  & ((\low_pass|modgen_add_2|nx38970z1  & (\low_pass|modgen_add_6|nx2247z46  & VCC)) # (!\low_pass|modgen_add_2|nx38970z1  & (!\low_pass|modgen_add_6|nx2247z46 )))) # 
// (!\low_pass|modgen_add_5|nx38970z1  & ((\low_pass|modgen_add_2|nx38970z1  & (!\low_pass|modgen_add_6|nx2247z46 )) # (!\low_pass|modgen_add_2|nx38970z1  & ((\low_pass|modgen_add_6|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_6|nx2247z43  = CARRY((\low_pass|modgen_add_5|nx38970z1  & (!\low_pass|modgen_add_2|nx38970z1  & !\low_pass|modgen_add_6|nx2247z46 )) # (!\low_pass|modgen_add_5|nx38970z1  & ((!\low_pass|modgen_add_6|nx2247z46 ) # 
// (!\low_pass|modgen_add_2|nx38970z1 ))))

	.dataa(\low_pass|modgen_add_5|nx38970z1 ),
	.datab(\low_pass|modgen_add_2|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z46 ),
	.combout(\low_pass|modgen_add_6|nx38970z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_6|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N8
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_6|nx41961z1  = ((\low_pass|modgen_add_2|nx41961z1  $ (\low_pass|modgen_add_5|nx41961z1  $ (!\low_pass|modgen_add_6|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_6|nx2247z34  = CARRY((\low_pass|modgen_add_2|nx41961z1  & ((\low_pass|modgen_add_5|nx41961z1 ) # (!\low_pass|modgen_add_6|nx2247z37 ))) # (!\low_pass|modgen_add_2|nx41961z1  & (\low_pass|modgen_add_5|nx41961z1  & 
// !\low_pass|modgen_add_6|nx2247z37 )))

	.dataa(\low_pass|modgen_add_2|nx41961z1 ),
	.datab(\low_pass|modgen_add_5|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z37 ),
	.combout(\low_pass|modgen_add_6|nx41961z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_6|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N10
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_6|nx42958z1  = (\low_pass|modgen_add_2|nx42958z1  & ((\low_pass|modgen_add_5|nx42958z1  & (\low_pass|modgen_add_6|nx2247z34  & VCC)) # (!\low_pass|modgen_add_5|nx42958z1  & (!\low_pass|modgen_add_6|nx2247z34 )))) # 
// (!\low_pass|modgen_add_2|nx42958z1  & ((\low_pass|modgen_add_5|nx42958z1  & (!\low_pass|modgen_add_6|nx2247z34 )) # (!\low_pass|modgen_add_5|nx42958z1  & ((\low_pass|modgen_add_6|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_6|nx2247z31  = CARRY((\low_pass|modgen_add_2|nx42958z1  & (!\low_pass|modgen_add_5|nx42958z1  & !\low_pass|modgen_add_6|nx2247z34 )) # (!\low_pass|modgen_add_2|nx42958z1  & ((!\low_pass|modgen_add_6|nx2247z34 ) # 
// (!\low_pass|modgen_add_5|nx42958z1 ))))

	.dataa(\low_pass|modgen_add_2|nx42958z1 ),
	.datab(\low_pass|modgen_add_5|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z34 ),
	.combout(\low_pass|modgen_add_6|nx42958z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_6|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N0
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_15|nx37973z1  = (\low_pass|modgen_add_6|nx37973z1  & (\low_pass|modgen_add_14|nx37973z1  $ (VCC))) # (!\low_pass|modgen_add_6|nx37973z1  & (\low_pass|modgen_add_14|nx37973z1  & VCC))
// \low_pass|modgen_add_15|nx2247z46  = CARRY((\low_pass|modgen_add_6|nx37973z1  & \low_pass|modgen_add_14|nx37973z1 ))

	.dataa(\low_pass|modgen_add_6|nx37973z1 ),
	.datab(\low_pass|modgen_add_14|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_15|nx37973z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_15|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N2
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_15|nx38970z1  = (\low_pass|modgen_add_6|nx38970z1  & ((\low_pass|modgen_add_14|nx38970z1  & (\low_pass|modgen_add_15|nx2247z46  & VCC)) # (!\low_pass|modgen_add_14|nx38970z1  & (!\low_pass|modgen_add_15|nx2247z46 )))) # 
// (!\low_pass|modgen_add_6|nx38970z1  & ((\low_pass|modgen_add_14|nx38970z1  & (!\low_pass|modgen_add_15|nx2247z46 )) # (!\low_pass|modgen_add_14|nx38970z1  & ((\low_pass|modgen_add_15|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_15|nx2247z43  = CARRY((\low_pass|modgen_add_6|nx38970z1  & (!\low_pass|modgen_add_14|nx38970z1  & !\low_pass|modgen_add_15|nx2247z46 )) # (!\low_pass|modgen_add_6|nx38970z1  & ((!\low_pass|modgen_add_15|nx2247z46 ) # 
// (!\low_pass|modgen_add_14|nx38970z1 ))))

	.dataa(\low_pass|modgen_add_6|nx38970z1 ),
	.datab(\low_pass|modgen_add_14|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z46 ),
	.combout(\low_pass|modgen_add_15|nx38970z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_15|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N4
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_15|nx39967z1  = ((\low_pass|modgen_add_14|nx39967z1  $ (\low_pass|modgen_add_6|nx39967z1  $ (!\low_pass|modgen_add_15|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_15|nx2247z40  = CARRY((\low_pass|modgen_add_14|nx39967z1  & ((\low_pass|modgen_add_6|nx39967z1 ) # (!\low_pass|modgen_add_15|nx2247z43 ))) # (!\low_pass|modgen_add_14|nx39967z1  & (\low_pass|modgen_add_6|nx39967z1  & 
// !\low_pass|modgen_add_15|nx2247z43 )))

	.dataa(\low_pass|modgen_add_14|nx39967z1 ),
	.datab(\low_pass|modgen_add_6|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z43 ),
	.combout(\low_pass|modgen_add_15|nx39967z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_15|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N6
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_15|nx40964z1  = (\low_pass|modgen_add_14|nx40964z1  & ((\low_pass|modgen_add_6|nx40964z1  & (\low_pass|modgen_add_15|nx2247z40  & VCC)) # (!\low_pass|modgen_add_6|nx40964z1  & (!\low_pass|modgen_add_15|nx2247z40 )))) # 
// (!\low_pass|modgen_add_14|nx40964z1  & ((\low_pass|modgen_add_6|nx40964z1  & (!\low_pass|modgen_add_15|nx2247z40 )) # (!\low_pass|modgen_add_6|nx40964z1  & ((\low_pass|modgen_add_15|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_15|nx2247z37  = CARRY((\low_pass|modgen_add_14|nx40964z1  & (!\low_pass|modgen_add_6|nx40964z1  & !\low_pass|modgen_add_15|nx2247z40 )) # (!\low_pass|modgen_add_14|nx40964z1  & ((!\low_pass|modgen_add_15|nx2247z40 ) # 
// (!\low_pass|modgen_add_6|nx40964z1 ))))

	.dataa(\low_pass|modgen_add_14|nx40964z1 ),
	.datab(\low_pass|modgen_add_6|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z40 ),
	.combout(\low_pass|modgen_add_15|nx40964z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_15|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N8
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_15|nx41961z1  = ((\low_pass|modgen_add_6|nx41961z1  $ (\low_pass|modgen_add_14|nx41961z1  $ (!\low_pass|modgen_add_15|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_15|nx2247z34  = CARRY((\low_pass|modgen_add_6|nx41961z1  & ((\low_pass|modgen_add_14|nx41961z1 ) # (!\low_pass|modgen_add_15|nx2247z37 ))) # (!\low_pass|modgen_add_6|nx41961z1  & (\low_pass|modgen_add_14|nx41961z1  & 
// !\low_pass|modgen_add_15|nx2247z37 )))

	.dataa(\low_pass|modgen_add_6|nx41961z1 ),
	.datab(\low_pass|modgen_add_14|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z37 ),
	.combout(\low_pass|modgen_add_15|nx41961z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_15|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N12
cycloneii_lcell_comb ix63117z52923(
// Equation(s):
// audio_out_1n1ss1_4_ = (\sw~combout [17] & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [0]))) # (!\sw~combout [17] & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [4]))

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [4]),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_4_),
	.cout());
// synopsys translate_off
defparam ix63117z52923.lut_mask = 16'hEE22;
defparam ix63117z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N14
cycloneii_lcell_comb ix61123z52923(
// Equation(s):
// audio_out_1n1ss1_6_ = (\sw~combout [17] & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [2])) # (!\sw~combout [17] & ((\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [6])))

	.dataa(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [2]),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [6]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_6_),
	.cout());
// synopsys translate_off
defparam ix61123z52923.lut_mask = 16'hBB88;
defparam ix61123z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N18
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52930 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx63795z1  = (low_pass_in_15_ & ((low_pass_in_9_ & (\low_pass|prod_4__mults20_3|nx4241z14  & VCC)) # (!low_pass_in_9_ & (!\low_pass|prod_4__mults20_3|nx4241z14 )))) # (!low_pass_in_15_ & ((low_pass_in_9_ & 
// (!\low_pass|prod_4__mults20_3|nx4241z14 )) # (!low_pass_in_9_ & ((\low_pass|prod_4__mults20_3|nx4241z14 ) # (GND)))))
// \low_pass|prod_4__mults20_3|nx4241z12  = CARRY((low_pass_in_15_ & (!low_pass_in_9_ & !\low_pass|prod_4__mults20_3|nx4241z14 )) # (!low_pass_in_15_ & ((!\low_pass|prod_4__mults20_3|nx4241z14 ) # (!low_pass_in_9_))))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z14 ),
	.combout(\low_pass|prod_4__mults20_3|nx63795z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z12 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52930 .lut_mask = 16'h9617;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N12
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_11|nx43955z1  = ((\low_pass|prod_1__mults19_1|nx63795z1  $ (\low_pass|prod_0__mults21_0|nx64792z1  $ (!\low_pass|modgen_add_11|nx2247z30 )))) # (GND)
// \low_pass|modgen_add_11|nx2247z27  = CARRY((\low_pass|prod_1__mults19_1|nx63795z1  & ((\low_pass|prod_0__mults21_0|nx64792z1 ) # (!\low_pass|modgen_add_11|nx2247z30 ))) # (!\low_pass|prod_1__mults19_1|nx63795z1  & (\low_pass|prod_0__mults21_0|nx64792z1  & 
// !\low_pass|modgen_add_11|nx2247z30 )))

	.dataa(\low_pass|prod_1__mults19_1|nx63795z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z30 ),
	.combout(\low_pass|modgen_add_11|nx43955z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z27 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_11|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N12
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_12|nx43955z1  = ((\low_pass|modgen_add_11|nx43955z1  $ (\low_pass|prod_2__mults20_2|d_11_  $ (!\low_pass|modgen_add_12|nx2247z30 )))) # (GND)
// \low_pass|modgen_add_12|nx2247z27  = CARRY((\low_pass|modgen_add_11|nx43955z1  & ((\low_pass|prod_2__mults20_2|d_11_ ) # (!\low_pass|modgen_add_12|nx2247z30 ))) # (!\low_pass|modgen_add_11|nx43955z1  & (\low_pass|prod_2__mults20_2|d_11_  & 
// !\low_pass|modgen_add_12|nx2247z30 )))

	.dataa(\low_pass|modgen_add_11|nx43955z1 ),
	.datab(\low_pass|prod_2__mults20_2|d_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z30 ),
	.combout(\low_pass|modgen_add_12|nx43955z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z27 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_12|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N24
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52929 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_11_  = (((\low_pass|prod_5__mults21_4|nx3244z6 ))) # (GND)
// \low_pass|prod_5__mults21_4|b_10_  = CARRY(low_pass_in_15_)

	.dataa(vcc),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z6 ),
	.combout(\low_pass|prod_5__mults21_4|d_11_ ),
	.cout(\low_pass|prod_5__mults21_4|b_10_ ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52929 .lut_mask = 16'hF0CC;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N30
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_8|nx43955z1  = (\low_pass|prod_1__mults19_1|nx62798z1  & ((\low_pass|prod_5__mults21_4|d_9__dup_187  & (\low_pass|modgen_add_8|nx2247z31  & VCC)) # (!\low_pass|prod_5__mults21_4|d_9__dup_187  & (!\low_pass|modgen_add_8|nx2247z31 )))) 
// # (!\low_pass|prod_1__mults19_1|nx62798z1  & ((\low_pass|prod_5__mults21_4|d_9__dup_187  & (!\low_pass|modgen_add_8|nx2247z31 )) # (!\low_pass|prod_5__mults21_4|d_9__dup_187  & ((\low_pass|modgen_add_8|nx2247z31 ) # (GND)))))
// \low_pass|modgen_add_8|nx2247z28  = CARRY((\low_pass|prod_1__mults19_1|nx62798z1  & (!\low_pass|prod_5__mults21_4|d_9__dup_187  & !\low_pass|modgen_add_8|nx2247z31 )) # (!\low_pass|prod_1__mults19_1|nx62798z1  & ((!\low_pass|modgen_add_8|nx2247z31 ) # 
// (!\low_pass|prod_5__mults21_4|d_9__dup_187 ))))

	.dataa(\low_pass|prod_1__mults19_1|nx62798z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_9__dup_187 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z31 ),
	.combout(\low_pass|modgen_add_8|nx43955z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52933 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_8|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N12
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_9|nx43955z1  = ((\low_pass|modgen_add_8|nx43955z1  $ (\low_pass|modgen_add_4|nx43955z1  $ (!\low_pass|modgen_add_9|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_9|nx2247z28  = CARRY((\low_pass|modgen_add_8|nx43955z1  & ((\low_pass|modgen_add_4|nx43955z1 ) # (!\low_pass|modgen_add_9|nx2247z31 ))) # (!\low_pass|modgen_add_8|nx43955z1  & (\low_pass|modgen_add_4|nx43955z1  & 
// !\low_pass|modgen_add_9|nx2247z31 )))

	.dataa(\low_pass|modgen_add_8|nx43955z1 ),
	.datab(\low_pass|modgen_add_4|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z31 ),
	.combout(\low_pass|modgen_add_9|nx43955z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_9|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N12
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_14|nx43955z1  = ((\low_pass|modgen_add_9|nx43955z1  $ (\low_pass|modgen_add_13|nx43955z1  $ (!\low_pass|modgen_add_14|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_14|nx2247z28  = CARRY((\low_pass|modgen_add_9|nx43955z1  & ((\low_pass|modgen_add_13|nx43955z1 ) # (!\low_pass|modgen_add_14|nx2247z31 ))) # (!\low_pass|modgen_add_9|nx43955z1  & (\low_pass|modgen_add_13|nx43955z1  & 
// !\low_pass|modgen_add_14|nx2247z31 )))

	.dataa(\low_pass|modgen_add_9|nx43955z1 ),
	.datab(\low_pass|modgen_add_13|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z31 ),
	.combout(\low_pass|modgen_add_14|nx43955z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_14|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N12
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_3|nx43955z1  = ((\low_pass|prod_4__mults20_3|nx63795z1  $ (\low_pass|prod_5__mults21_4|d_9__dup_187  $ (!\low_pass|modgen_add_3|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_3|nx2247z28  = CARRY((\low_pass|prod_4__mults20_3|nx63795z1  & ((\low_pass|prod_5__mults21_4|d_9__dup_187 ) # (!\low_pass|modgen_add_3|nx2247z31 ))) # (!\low_pass|prod_4__mults20_3|nx63795z1  & 
// (\low_pass|prod_5__mults21_4|d_9__dup_187  & !\low_pass|modgen_add_3|nx2247z31 )))

	.dataa(\low_pass|prod_4__mults20_3|nx63795z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_9__dup_187 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z31 ),
	.combout(\low_pass|modgen_add_3|nx43955z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_3|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N12
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_1|nx43955z1  = ((low_pass_in_9_ $ (\low_pass|prod_2__mults20_2|d_11_  $ (!\low_pass|modgen_add_1|nx2247z26 )))) # (GND)
// \low_pass|modgen_add_1|nx2247z23  = CARRY((low_pass_in_9_ & ((\low_pass|prod_2__mults20_2|d_11_ ) # (!\low_pass|modgen_add_1|nx2247z26 ))) # (!low_pass_in_9_ & (\low_pass|prod_2__mults20_2|d_11_  & !\low_pass|modgen_add_1|nx2247z26 )))

	.dataa(low_pass_in_9_),
	.datab(\low_pass|prod_2__mults20_2|d_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z26 ),
	.combout(\low_pass|modgen_add_1|nx43955z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z23 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_1|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N12
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_2|nx43955z1  = ((\low_pass|modgen_add_1|nx43955z1  $ (\low_pass|modgen_add_0|nx43955z1  $ (!\low_pass|modgen_add_2|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_2|nx2247z28  = CARRY((\low_pass|modgen_add_1|nx43955z1  & ((\low_pass|modgen_add_0|nx43955z1 ) # (!\low_pass|modgen_add_2|nx2247z31 ))) # (!\low_pass|modgen_add_1|nx43955z1  & (\low_pass|modgen_add_0|nx43955z1  & 
// !\low_pass|modgen_add_2|nx2247z31 )))

	.dataa(\low_pass|modgen_add_1|nx43955z1 ),
	.datab(\low_pass|modgen_add_0|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z31 ),
	.combout(\low_pass|modgen_add_2|nx43955z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_2|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N12
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_15|nx43955z1  = ((\low_pass|modgen_add_14|nx43955z1  $ (\low_pass|modgen_add_6|nx43955z1  $ (!\low_pass|modgen_add_15|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_15|nx2247z28  = CARRY((\low_pass|modgen_add_14|nx43955z1  & ((\low_pass|modgen_add_6|nx43955z1 ) # (!\low_pass|modgen_add_15|nx2247z31 ))) # (!\low_pass|modgen_add_14|nx43955z1  & (\low_pass|modgen_add_6|nx43955z1  & 
// !\low_pass|modgen_add_15|nx2247z31 )))

	.dataa(\low_pass|modgen_add_14|nx43955z1 ),
	.datab(\low_pass|modgen_add_6|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z31 ),
	.combout(\low_pass|modgen_add_15|nx43955z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_15|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N20
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52929 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx253z1  = ((low_pass_in_15_ $ (low_pass_in_10_ $ (!\low_pass|prod_0__mults21_0|nx5238z12 )))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z10  = CARRY((low_pass_in_15_ & ((low_pass_in_10_) # (!\low_pass|prod_0__mults21_0|nx5238z12 ))) # (!low_pass_in_15_ & (low_pass_in_10_ & !\low_pass|prod_0__mults21_0|nx5238z12 )))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z12 ),
	.combout(\low_pass|prod_0__mults21_0|nx253z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z10 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52929 .lut_mask = 16'h698E;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N14
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_11|nx44952z1  = (\low_pass|prod_0__mults21_0|nx253z1  & ((\low_pass|prod_1__mults19_1|nx64792z1  & (\low_pass|modgen_add_11|nx2247z27  & VCC)) # (!\low_pass|prod_1__mults19_1|nx64792z1  & (!\low_pass|modgen_add_11|nx2247z27 )))) # 
// (!\low_pass|prod_0__mults21_0|nx253z1  & ((\low_pass|prod_1__mults19_1|nx64792z1  & (!\low_pass|modgen_add_11|nx2247z27 )) # (!\low_pass|prod_1__mults19_1|nx64792z1  & ((\low_pass|modgen_add_11|nx2247z27 ) # (GND)))))
// \low_pass|modgen_add_11|nx2247z24  = CARRY((\low_pass|prod_0__mults21_0|nx253z1  & (!\low_pass|prod_1__mults19_1|nx64792z1  & !\low_pass|modgen_add_11|nx2247z27 )) # (!\low_pass|prod_0__mults21_0|nx253z1  & ((!\low_pass|modgen_add_11|nx2247z27 ) # 
// (!\low_pass|prod_1__mults19_1|nx64792z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx253z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z27 ),
	.combout(\low_pass|modgen_add_11|nx44952z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z24 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_11|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N14
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_12|nx44952z1  = (\low_pass|modgen_add_11|nx44952z1  & ((\low_pass|prod_2__mults20_2|d_12_  & (\low_pass|modgen_add_12|nx2247z27  & VCC)) # (!\low_pass|prod_2__mults20_2|d_12_  & (!\low_pass|modgen_add_12|nx2247z27 )))) # 
// (!\low_pass|modgen_add_11|nx44952z1  & ((\low_pass|prod_2__mults20_2|d_12_  & (!\low_pass|modgen_add_12|nx2247z27 )) # (!\low_pass|prod_2__mults20_2|d_12_  & ((\low_pass|modgen_add_12|nx2247z27 ) # (GND)))))
// \low_pass|modgen_add_12|nx2247z24  = CARRY((\low_pass|modgen_add_11|nx44952z1  & (!\low_pass|prod_2__mults20_2|d_12_  & !\low_pass|modgen_add_12|nx2247z27 )) # (!\low_pass|modgen_add_11|nx44952z1  & ((!\low_pass|modgen_add_12|nx2247z27 ) # 
// (!\low_pass|prod_2__mults20_2|d_12_ ))))

	.dataa(\low_pass|modgen_add_11|nx44952z1 ),
	.datab(\low_pass|prod_2__mults20_2|d_12_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z27 ),
	.combout(\low_pass|modgen_add_12|nx44952z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z24 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_12|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N0
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_4|nx44952z1  = (((\low_pass|modgen_add_4|nx2247z20 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z18  = CARRY(\low_pass|prod_1__mults19_1|nx63795z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_1__mults19_1|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z20 ),
	.combout(\low_pass|modgen_add_4|nx44952z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z18 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52932 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_4|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N26
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|ix3244z52928 (
// Equation(s):
// \low_pass|prod_5__mults21_4|nx3244z5  = \low_pass|prod_5__mults21_4|b_10_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|b_10_ ),
	.combout(\low_pass|prod_5__mults21_4|nx3244z5 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|ix3244z52928 .lut_mask = 16'hF0F0;
defparam \low_pass|prod_5__mults21_4|ix3244z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N14
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_9|nx44952z1  = (\low_pass|modgen_add_4|nx44952z1  & ((\low_pass|modgen_add_8|nx44952z1  & (\low_pass|modgen_add_9|nx2247z28  & VCC)) # (!\low_pass|modgen_add_8|nx44952z1  & (!\low_pass|modgen_add_9|nx2247z28 )))) # 
// (!\low_pass|modgen_add_4|nx44952z1  & ((\low_pass|modgen_add_8|nx44952z1  & (!\low_pass|modgen_add_9|nx2247z28 )) # (!\low_pass|modgen_add_8|nx44952z1  & ((\low_pass|modgen_add_9|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_9|nx2247z25  = CARRY((\low_pass|modgen_add_4|nx44952z1  & (!\low_pass|modgen_add_8|nx44952z1  & !\low_pass|modgen_add_9|nx2247z28 )) # (!\low_pass|modgen_add_4|nx44952z1  & ((!\low_pass|modgen_add_9|nx2247z28 ) # 
// (!\low_pass|modgen_add_8|nx44952z1 ))))

	.dataa(\low_pass|modgen_add_4|nx44952z1 ),
	.datab(\low_pass|modgen_add_8|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z28 ),
	.combout(\low_pass|modgen_add_9|nx44952z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_9|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N14
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_1|nx44952z1  = (low_pass_in_10_ & ((\low_pass|prod_2__mults20_2|d_12_  & (\low_pass|modgen_add_1|nx2247z23  & VCC)) # (!\low_pass|prod_2__mults20_2|d_12_  & (!\low_pass|modgen_add_1|nx2247z23 )))) # (!low_pass_in_10_ & 
// ((\low_pass|prod_2__mults20_2|d_12_  & (!\low_pass|modgen_add_1|nx2247z23 )) # (!\low_pass|prod_2__mults20_2|d_12_  & ((\low_pass|modgen_add_1|nx2247z23 ) # (GND)))))
// \low_pass|modgen_add_1|nx2247z20  = CARRY((low_pass_in_10_ & (!\low_pass|prod_2__mults20_2|d_12_  & !\low_pass|modgen_add_1|nx2247z23 )) # (!low_pass_in_10_ & ((!\low_pass|modgen_add_1|nx2247z23 ) # (!\low_pass|prod_2__mults20_2|d_12_ ))))

	.dataa(low_pass_in_10_),
	.datab(\low_pass|prod_2__mults20_2|d_12_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z23 ),
	.combout(\low_pass|modgen_add_1|nx44952z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z20 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_1|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N14
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_2|nx44952z1  = (\low_pass|modgen_add_1|nx44952z1  & ((\low_pass|modgen_add_0|nx44952z1  & (\low_pass|modgen_add_2|nx2247z28  & VCC)) # (!\low_pass|modgen_add_0|nx44952z1  & (!\low_pass|modgen_add_2|nx2247z28 )))) # 
// (!\low_pass|modgen_add_1|nx44952z1  & ((\low_pass|modgen_add_0|nx44952z1  & (!\low_pass|modgen_add_2|nx2247z28 )) # (!\low_pass|modgen_add_0|nx44952z1  & ((\low_pass|modgen_add_2|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_2|nx2247z25  = CARRY((\low_pass|modgen_add_1|nx44952z1  & (!\low_pass|modgen_add_0|nx44952z1  & !\low_pass|modgen_add_2|nx2247z28 )) # (!\low_pass|modgen_add_1|nx44952z1  & ((!\low_pass|modgen_add_2|nx2247z28 ) # 
// (!\low_pass|modgen_add_0|nx44952z1 ))))

	.dataa(\low_pass|modgen_add_1|nx44952z1 ),
	.datab(\low_pass|modgen_add_0|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z28 ),
	.combout(\low_pass|modgen_add_2|nx44952z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_2|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N14
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_6|nx44952z1  = (\low_pass|modgen_add_2|nx44952z1  & ((\low_pass|modgen_add_5|nx44952z1  & (\low_pass|modgen_add_6|nx2247z28  & VCC)) # (!\low_pass|modgen_add_5|nx44952z1  & (!\low_pass|modgen_add_6|nx2247z28 )))) # 
// (!\low_pass|modgen_add_2|nx44952z1  & ((\low_pass|modgen_add_5|nx44952z1  & (!\low_pass|modgen_add_6|nx2247z28 )) # (!\low_pass|modgen_add_5|nx44952z1  & ((\low_pass|modgen_add_6|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_6|nx2247z25  = CARRY((\low_pass|modgen_add_2|nx44952z1  & (!\low_pass|modgen_add_5|nx44952z1  & !\low_pass|modgen_add_6|nx2247z28 )) # (!\low_pass|modgen_add_2|nx44952z1  & ((!\low_pass|modgen_add_6|nx2247z28 ) # 
// (!\low_pass|modgen_add_5|nx44952z1 ))))

	.dataa(\low_pass|modgen_add_2|nx44952z1 ),
	.datab(\low_pass|modgen_add_5|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z28 ),
	.combout(\low_pass|modgen_add_6|nx44952z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_6|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: M4K_X26_Y20
cycloneii_ram_block \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 (
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\aud_adclrck_dup0~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(12'b000000000000),
	.portaaddr({\u_sine_address_add9_0i1|nx45949z1 ,\u_sine_address_add9_0i1|nx44952z1 ,\u_sine_address_add9_0i1|nx43955z1 ,\u_sine_address_add9_0i1|nx42958z1 ,\u_sine_address_add9_0i1|nx41961z1 ,\u_sine_address_add9_0i1|nx40964z1 }),
	.portabyteenamasks(1'b1),
	.portbdatain(12'b000000000000),
	.portbaddr(6'b000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .init_file = "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .init_file_layout = "port_a";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .logical_ram_name = "altsyncram:u_sine_modgen_rom_ix21__ix62120z58996|altsyncram_0bk2:auto_generated|ALTSYNCRAM";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .operation_mode = "rom";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_address_width = 6;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_data_width = 12;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_last_address = 63;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 64;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_logical_ram_width = 12;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_a_write_enable_clock = "none";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_b_address_width = 6;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .port_b_data_width = 12;
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
defparam \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|ram_block1a0 .mem_init0 = 768'hF37E70DADCF0C3AB8EAECA579D09598F189B85882780980080982785889B8F19599D0A57AECB11C3ACF0DADE70F370000C818F25230F3C54715135A862F6A670E7647A77D87F67FF7F67D87A776470E6A662F5A85134713C530F25218F0C8000;
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N4
cycloneii_lcell_comb ix58132z52923(
// Equation(s):
// audio_out_1n1ss1_9_ = (\sw~combout [17] & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [5]))) # (!\sw~combout [17] & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [9]))

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [9]),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_9_),
	.cout());
// synopsys translate_off
defparam ix58132z52923.lut_mask = 16'hEE22;
defparam ix58132z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N16
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_10|nx45949z1  = ((low_pass_in_15_ $ (\low_pass|prod_4__mults20_3|nx253z1  $ (!\low_pass|modgen_add_10|nx2247z20 )))) # (GND)
// \low_pass|modgen_add_10|nx2247z17  = CARRY((low_pass_in_15_ & ((\low_pass|prod_4__mults20_3|nx253z1 ) # (!\low_pass|modgen_add_10|nx2247z20 ))) # (!low_pass_in_15_ & (\low_pass|prod_4__mults20_3|nx253z1  & !\low_pass|modgen_add_10|nx2247z20 )))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_4__mults20_3|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z20 ),
	.combout(\low_pass|modgen_add_10|nx45949z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z17 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_10|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N22
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52928 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx1250z1  = (((\low_pass|prod_0__mults21_0|nx5238z10 ))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z8  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z10 ),
	.combout(\low_pass|prod_0__mults21_0|nx1250z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z8 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52928 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N24
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52927 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx2247z1  = (((\low_pass|prod_0__mults21_0|nx5238z8 ))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z6  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z8 ),
	.combout(\low_pass|prod_0__mults21_0|nx2247z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z6 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52927 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N16
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_11|nx45949z1  = ((\low_pass|prod_1__mults19_1|nx253z1  $ (\low_pass|prod_0__mults21_0|nx1250z1  $ (!\low_pass|modgen_add_11|nx2247z24 )))) # (GND)
// \low_pass|modgen_add_11|nx2247z21  = CARRY((\low_pass|prod_1__mults19_1|nx253z1  & ((\low_pass|prod_0__mults21_0|nx1250z1 ) # (!\low_pass|modgen_add_11|nx2247z24 ))) # (!\low_pass|prod_1__mults19_1|nx253z1  & (\low_pass|prod_0__mults21_0|nx1250z1  & 
// !\low_pass|modgen_add_11|nx2247z24 )))

	.dataa(\low_pass|prod_1__mults19_1|nx253z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z24 ),
	.combout(\low_pass|modgen_add_11|nx45949z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z21 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_11|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N18
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_11|nx46946z1  = (\low_pass|prod_0__mults21_0|nx2247z1  & ((\low_pass|prod_1__mults19_1|nx1250z1  & (\low_pass|modgen_add_11|nx2247z21  & VCC)) # (!\low_pass|prod_1__mults19_1|nx1250z1  & (!\low_pass|modgen_add_11|nx2247z21 )))) # 
// (!\low_pass|prod_0__mults21_0|nx2247z1  & ((\low_pass|prod_1__mults19_1|nx1250z1  & (!\low_pass|modgen_add_11|nx2247z21 )) # (!\low_pass|prod_1__mults19_1|nx1250z1  & ((\low_pass|modgen_add_11|nx2247z21 ) # (GND)))))
// \low_pass|modgen_add_11|nx2247z18  = CARRY((\low_pass|prod_0__mults21_0|nx2247z1  & (!\low_pass|prod_1__mults19_1|nx1250z1  & !\low_pass|modgen_add_11|nx2247z21 )) # (!\low_pass|prod_0__mults21_0|nx2247z1  & ((!\low_pass|modgen_add_11|nx2247z21 ) # 
// (!\low_pass|prod_1__mults19_1|nx1250z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx2247z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z21 ),
	.combout(\low_pass|modgen_add_11|nx46946z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z18 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_11|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N16
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_12|nx45949z1  = ((\low_pass|prod_2__mults20_2|d_13_  $ (\low_pass|modgen_add_11|nx45949z1  $ (!\low_pass|modgen_add_12|nx2247z24 )))) # (GND)
// \low_pass|modgen_add_12|nx2247z21  = CARRY((\low_pass|prod_2__mults20_2|d_13_  & ((\low_pass|modgen_add_11|nx45949z1 ) # (!\low_pass|modgen_add_12|nx2247z24 ))) # (!\low_pass|prod_2__mults20_2|d_13_  & (\low_pass|modgen_add_11|nx45949z1  & 
// !\low_pass|modgen_add_12|nx2247z24 )))

	.dataa(\low_pass|prod_2__mults20_2|d_13_ ),
	.datab(\low_pass|modgen_add_11|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z24 ),
	.combout(\low_pass|modgen_add_12|nx45949z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z21 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_12|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N18
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_12|nx46946z1  = (\low_pass|prod_2__mults20_2|d_14_  & ((\low_pass|modgen_add_11|nx46946z1  & (\low_pass|modgen_add_12|nx2247z21  & VCC)) # (!\low_pass|modgen_add_11|nx46946z1  & (!\low_pass|modgen_add_12|nx2247z21 )))) # 
// (!\low_pass|prod_2__mults20_2|d_14_  & ((\low_pass|modgen_add_11|nx46946z1  & (!\low_pass|modgen_add_12|nx2247z21 )) # (!\low_pass|modgen_add_11|nx46946z1  & ((\low_pass|modgen_add_12|nx2247z21 ) # (GND)))))
// \low_pass|modgen_add_12|nx2247z18  = CARRY((\low_pass|prod_2__mults20_2|d_14_  & (!\low_pass|modgen_add_11|nx46946z1  & !\low_pass|modgen_add_12|nx2247z21 )) # (!\low_pass|prod_2__mults20_2|d_14_  & ((!\low_pass|modgen_add_12|nx2247z21 ) # 
// (!\low_pass|modgen_add_11|nx46946z1 ))))

	.dataa(\low_pass|prod_2__mults20_2|d_14_ ),
	.datab(\low_pass|modgen_add_11|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z21 ),
	.combout(\low_pass|modgen_add_12|nx46946z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z18 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_12|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N24
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52925 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_12_  = (((\low_pass|prod_5__mults21_4|nx3244z3 ))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z2  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z3 ),
	.combout(\low_pass|prod_5__mults21_4|d_12_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z2 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52925 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N2
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_8|nx45949z1  = (\low_pass|prod_1__mults19_1|nx64792z1  & ((\low_pass|prod_5__mults21_4|d_11__dup_185  & (\low_pass|modgen_add_8|nx2247z25  & VCC)) # (!\low_pass|prod_5__mults21_4|d_11__dup_185  & (!\low_pass|modgen_add_8|nx2247z25 
// )))) # (!\low_pass|prod_1__mults19_1|nx64792z1  & ((\low_pass|prod_5__mults21_4|d_11__dup_185  & (!\low_pass|modgen_add_8|nx2247z25 )) # (!\low_pass|prod_5__mults21_4|d_11__dup_185  & ((\low_pass|modgen_add_8|nx2247z25 ) # (GND)))))
// \low_pass|modgen_add_8|nx2247z22  = CARRY((\low_pass|prod_1__mults19_1|nx64792z1  & (!\low_pass|prod_5__mults21_4|d_11__dup_185  & !\low_pass|modgen_add_8|nx2247z25 )) # (!\low_pass|prod_1__mults19_1|nx64792z1  & ((!\low_pass|modgen_add_8|nx2247z25 ) # 
// (!\low_pass|prod_5__mults21_4|d_11__dup_185 ))))

	.dataa(\low_pass|prod_1__mults19_1|nx64792z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_11__dup_185 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z25 ),
	.combout(\low_pass|modgen_add_8|nx45949z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52931 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_8|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N4
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_8|nx46946z1  = ((\low_pass|prod_5__mults21_4|d_12_  $ (\low_pass|prod_1__mults19_1|nx253z1  $ (!\low_pass|modgen_add_8|nx2247z22 )))) # (GND)
// \low_pass|modgen_add_8|nx2247z19  = CARRY((\low_pass|prod_5__mults21_4|d_12_  & ((\low_pass|prod_1__mults19_1|nx253z1 ) # (!\low_pass|modgen_add_8|nx2247z22 ))) # (!\low_pass|prod_5__mults21_4|d_12_  & (\low_pass|prod_1__mults19_1|nx253z1  & 
// !\low_pass|modgen_add_8|nx2247z22 )))

	.dataa(\low_pass|prod_5__mults21_4|d_12_ ),
	.datab(\low_pass|prod_1__mults19_1|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z22 ),
	.combout(\low_pass|modgen_add_8|nx46946z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52930 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_8|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N16
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_9|nx45949z1  = ((\low_pass|modgen_add_8|nx45949z1  $ (\low_pass|modgen_add_4|nx45949z1  $ (!\low_pass|modgen_add_9|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_9|nx2247z22  = CARRY((\low_pass|modgen_add_8|nx45949z1  & ((\low_pass|modgen_add_4|nx45949z1 ) # (!\low_pass|modgen_add_9|nx2247z25 ))) # (!\low_pass|modgen_add_8|nx45949z1  & (\low_pass|modgen_add_4|nx45949z1  & 
// !\low_pass|modgen_add_9|nx2247z25 )))

	.dataa(\low_pass|modgen_add_8|nx45949z1 ),
	.datab(\low_pass|modgen_add_4|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z25 ),
	.combout(\low_pass|modgen_add_9|nx45949z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_9|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N18
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_9|nx46946z1  = (\low_pass|modgen_add_4|nx46946z1  & ((\low_pass|modgen_add_8|nx46946z1  & (\low_pass|modgen_add_9|nx2247z22  & VCC)) # (!\low_pass|modgen_add_8|nx46946z1  & (!\low_pass|modgen_add_9|nx2247z22 )))) # 
// (!\low_pass|modgen_add_4|nx46946z1  & ((\low_pass|modgen_add_8|nx46946z1  & (!\low_pass|modgen_add_9|nx2247z22 )) # (!\low_pass|modgen_add_8|nx46946z1  & ((\low_pass|modgen_add_9|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_9|nx2247z19  = CARRY((\low_pass|modgen_add_4|nx46946z1  & (!\low_pass|modgen_add_8|nx46946z1  & !\low_pass|modgen_add_9|nx2247z22 )) # (!\low_pass|modgen_add_4|nx46946z1  & ((!\low_pass|modgen_add_9|nx2247z22 ) # 
// (!\low_pass|modgen_add_8|nx46946z1 ))))

	.dataa(\low_pass|modgen_add_4|nx46946z1 ),
	.datab(\low_pass|modgen_add_8|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z22 ),
	.combout(\low_pass|modgen_add_9|nx46946z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_9|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N16
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_14|nx45949z1  = ((\low_pass|modgen_add_9|nx45949z1  $ (\low_pass|modgen_add_13|nx45949z1  $ (!\low_pass|modgen_add_14|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_14|nx2247z22  = CARRY((\low_pass|modgen_add_9|nx45949z1  & ((\low_pass|modgen_add_13|nx45949z1 ) # (!\low_pass|modgen_add_14|nx2247z25 ))) # (!\low_pass|modgen_add_9|nx45949z1  & (\low_pass|modgen_add_13|nx45949z1  & 
// !\low_pass|modgen_add_14|nx2247z25 )))

	.dataa(\low_pass|modgen_add_9|nx45949z1 ),
	.datab(\low_pass|modgen_add_13|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z25 ),
	.combout(\low_pass|modgen_add_14|nx45949z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_14|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N18
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_3|nx46946z1  = (\low_pass|prod_5__mults21_4|d_12_  & ((\low_pass|prod_4__mults20_3|nx1250z1  & (\low_pass|modgen_add_3|nx2247z22  & VCC)) # (!\low_pass|prod_4__mults20_3|nx1250z1  & (!\low_pass|modgen_add_3|nx2247z22 )))) # 
// (!\low_pass|prod_5__mults21_4|d_12_  & ((\low_pass|prod_4__mults20_3|nx1250z1  & (!\low_pass|modgen_add_3|nx2247z22 )) # (!\low_pass|prod_4__mults20_3|nx1250z1  & ((\low_pass|modgen_add_3|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_3|nx2247z19  = CARRY((\low_pass|prod_5__mults21_4|d_12_  & (!\low_pass|prod_4__mults20_3|nx1250z1  & !\low_pass|modgen_add_3|nx2247z22 )) # (!\low_pass|prod_5__mults21_4|d_12_  & ((!\low_pass|modgen_add_3|nx2247z22 ) # 
// (!\low_pass|prod_4__mults20_3|nx1250z1 ))))

	.dataa(\low_pass|prod_5__mults21_4|d_12_ ),
	.datab(\low_pass|prod_4__mults20_3|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z22 ),
	.combout(\low_pass|modgen_add_3|nx46946z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_3|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N16
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_5|nx45949z1  = ((\low_pass|modgen_add_4|nx45949z1  $ (\low_pass|modgen_add_3|nx45949z1  $ (!\low_pass|modgen_add_5|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_5|nx2247z22  = CARRY((\low_pass|modgen_add_4|nx45949z1  & ((\low_pass|modgen_add_3|nx45949z1 ) # (!\low_pass|modgen_add_5|nx2247z25 ))) # (!\low_pass|modgen_add_4|nx45949z1  & (\low_pass|modgen_add_3|nx45949z1  & 
// !\low_pass|modgen_add_5|nx2247z25 )))

	.dataa(\low_pass|modgen_add_4|nx45949z1 ),
	.datab(\low_pass|modgen_add_3|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z25 ),
	.combout(\low_pass|modgen_add_5|nx45949z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_5|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N16
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_0|nx45949z1  = ((\low_pass|prod_1__mults19_1|nx253z1  $ (\low_pass|prod_0__mults21_0|nx1250z1  $ (!\low_pass|modgen_add_0|nx2247z24 )))) # (GND)
// \low_pass|modgen_add_0|nx2247z21  = CARRY((\low_pass|prod_1__mults19_1|nx253z1  & ((\low_pass|prod_0__mults21_0|nx1250z1 ) # (!\low_pass|modgen_add_0|nx2247z24 ))) # (!\low_pass|prod_1__mults19_1|nx253z1  & (\low_pass|prod_0__mults21_0|nx1250z1  & 
// !\low_pass|modgen_add_0|nx2247z24 )))

	.dataa(\low_pass|prod_1__mults19_1|nx253z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z24 ),
	.combout(\low_pass|modgen_add_0|nx45949z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z21 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_0|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N18
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_0|nx46946z1  = (\low_pass|prod_0__mults21_0|nx2247z1  & ((\low_pass|prod_1__mults19_1|nx1250z1  & (\low_pass|modgen_add_0|nx2247z21  & VCC)) # (!\low_pass|prod_1__mults19_1|nx1250z1  & (!\low_pass|modgen_add_0|nx2247z21 )))) # 
// (!\low_pass|prod_0__mults21_0|nx2247z1  & ((\low_pass|prod_1__mults19_1|nx1250z1  & (!\low_pass|modgen_add_0|nx2247z21 )) # (!\low_pass|prod_1__mults19_1|nx1250z1  & ((\low_pass|modgen_add_0|nx2247z21 ) # (GND)))))
// \low_pass|modgen_add_0|nx2247z18  = CARRY((\low_pass|prod_0__mults21_0|nx2247z1  & (!\low_pass|prod_1__mults19_1|nx1250z1  & !\low_pass|modgen_add_0|nx2247z21 )) # (!\low_pass|prod_0__mults21_0|nx2247z1  & ((!\low_pass|modgen_add_0|nx2247z21 ) # 
// (!\low_pass|prod_1__mults19_1|nx1250z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx2247z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z21 ),
	.combout(\low_pass|modgen_add_0|nx46946z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z18 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_0|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N16
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_1|nx45949z1  = ((low_pass_in_15_ $ (\low_pass|prod_2__mults20_2|d_13_  $ (!\low_pass|modgen_add_1|nx2247z20 )))) # (GND)
// \low_pass|modgen_add_1|nx2247z17  = CARRY((low_pass_in_15_ & ((\low_pass|prod_2__mults20_2|d_13_ ) # (!\low_pass|modgen_add_1|nx2247z20 ))) # (!low_pass_in_15_ & (\low_pass|prod_2__mults20_2|d_13_  & !\low_pass|modgen_add_1|nx2247z20 )))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_2__mults20_2|d_13_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z20 ),
	.combout(\low_pass|modgen_add_1|nx45949z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z17 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_1|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N18
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_2|nx46946z1  = (\low_pass|modgen_add_0|nx46946z1  & ((\low_pass|modgen_add_1|nx46946z1  & (\low_pass|modgen_add_2|nx2247z22  & VCC)) # (!\low_pass|modgen_add_1|nx46946z1  & (!\low_pass|modgen_add_2|nx2247z22 )))) # 
// (!\low_pass|modgen_add_0|nx46946z1  & ((\low_pass|modgen_add_1|nx46946z1  & (!\low_pass|modgen_add_2|nx2247z22 )) # (!\low_pass|modgen_add_1|nx46946z1  & ((\low_pass|modgen_add_2|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_2|nx2247z19  = CARRY((\low_pass|modgen_add_0|nx46946z1  & (!\low_pass|modgen_add_1|nx46946z1  & !\low_pass|modgen_add_2|nx2247z22 )) # (!\low_pass|modgen_add_0|nx46946z1  & ((!\low_pass|modgen_add_2|nx2247z22 ) # 
// (!\low_pass|modgen_add_1|nx46946z1 ))))

	.dataa(\low_pass|modgen_add_0|nx46946z1 ),
	.datab(\low_pass|modgen_add_1|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z22 ),
	.combout(\low_pass|modgen_add_2|nx46946z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_2|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N18
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_6|nx46946z1  = (\low_pass|modgen_add_2|nx46946z1  & ((\low_pass|modgen_add_5|nx46946z1  & (\low_pass|modgen_add_6|nx2247z22  & VCC)) # (!\low_pass|modgen_add_5|nx46946z1  & (!\low_pass|modgen_add_6|nx2247z22 )))) # 
// (!\low_pass|modgen_add_2|nx46946z1  & ((\low_pass|modgen_add_5|nx46946z1  & (!\low_pass|modgen_add_6|nx2247z22 )) # (!\low_pass|modgen_add_5|nx46946z1  & ((\low_pass|modgen_add_6|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_6|nx2247z19  = CARRY((\low_pass|modgen_add_2|nx46946z1  & (!\low_pass|modgen_add_5|nx46946z1  & !\low_pass|modgen_add_6|nx2247z22 )) # (!\low_pass|modgen_add_2|nx46946z1  & ((!\low_pass|modgen_add_6|nx2247z22 ) # 
// (!\low_pass|modgen_add_5|nx46946z1 ))))

	.dataa(\low_pass|modgen_add_2|nx46946z1 ),
	.datab(\low_pass|modgen_add_5|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z22 ),
	.combout(\low_pass|modgen_add_6|nx46946z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_6|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N18
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_15|nx46946z1  = (\low_pass|modgen_add_6|nx46946z1  & ((\low_pass|modgen_add_14|nx46946z1  & (\low_pass|modgen_add_15|nx2247z22  & VCC)) # (!\low_pass|modgen_add_14|nx46946z1  & (!\low_pass|modgen_add_15|nx2247z22 )))) # 
// (!\low_pass|modgen_add_6|nx46946z1  & ((\low_pass|modgen_add_14|nx46946z1  & (!\low_pass|modgen_add_15|nx2247z22 )) # (!\low_pass|modgen_add_14|nx46946z1  & ((\low_pass|modgen_add_15|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_15|nx2247z19  = CARRY((\low_pass|modgen_add_6|nx46946z1  & (!\low_pass|modgen_add_14|nx46946z1  & !\low_pass|modgen_add_15|nx2247z22 )) # (!\low_pass|modgen_add_6|nx46946z1  & ((!\low_pass|modgen_add_15|nx2247z22 ) # 
// (!\low_pass|modgen_add_14|nx46946z1 ))))

	.dataa(\low_pass|modgen_add_6|nx46946z1 ),
	.datab(\low_pass|modgen_add_14|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z22 ),
	.combout(\low_pass|modgen_add_15|nx46946z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_15|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N26
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52926 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx3244z1  = (((\low_pass|prod_0__mults21_0|nx5238z6 ))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z4  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z6 ),
	.combout(\low_pass|prod_0__mults21_0|nx3244z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z4 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52926 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N28
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52925 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx2247z1  = (((\low_pass|prod_1__mults19_1|nx3244z4 ))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z2  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z4 ),
	.combout(\low_pass|prod_1__mults19_1|nx2247z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z2 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52925 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N20
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_11|nx62798z1  = ((\low_pass|prod_1__mults19_1|nx2247z1  $ (\low_pass|prod_0__mults21_0|nx3244z1  $ (!\low_pass|modgen_add_11|nx2247z18 )))) # (GND)
// \low_pass|modgen_add_11|nx2247z15  = CARRY((\low_pass|prod_1__mults19_1|nx2247z1  & ((\low_pass|prod_0__mults21_0|nx3244z1 ) # (!\low_pass|modgen_add_11|nx2247z18 ))) # (!\low_pass|prod_1__mults19_1|nx2247z1  & (\low_pass|prod_0__mults21_0|nx3244z1  & 
// !\low_pass|modgen_add_11|nx2247z18 )))

	.dataa(\low_pass|prod_1__mults19_1|nx2247z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z18 ),
	.combout(\low_pass|modgen_add_11|nx62798z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z15 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_11|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N20
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_12|nx62798z1  = ((\low_pass|modgen_add_11|nx62798z1  $ (\low_pass|prod_2__mults20_2|d_15_  $ (!\low_pass|modgen_add_12|nx2247z18 )))) # (GND)
// \low_pass|modgen_add_12|nx2247z15  = CARRY((\low_pass|modgen_add_11|nx62798z1  & ((\low_pass|prod_2__mults20_2|d_15_ ) # (!\low_pass|modgen_add_12|nx2247z18 ))) # (!\low_pass|modgen_add_11|nx62798z1  & (\low_pass|prod_2__mults20_2|d_15_  & 
// !\low_pass|modgen_add_12|nx2247z18 )))

	.dataa(\low_pass|modgen_add_11|nx62798z1 ),
	.datab(\low_pass|prod_2__mults20_2|d_15_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z18 ),
	.combout(\low_pass|modgen_add_12|nx62798z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z15 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_12|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N20
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_13|nx62798z1  = ((\low_pass|modgen_add_12|nx62798z1  $ (\low_pass|modgen_add_10|nx62798z1  $ (!\low_pass|modgen_add_13|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_13|nx2247z16  = CARRY((\low_pass|modgen_add_12|nx62798z1  & ((\low_pass|modgen_add_10|nx62798z1 ) # (!\low_pass|modgen_add_13|nx2247z19 ))) # (!\low_pass|modgen_add_12|nx62798z1  & (\low_pass|modgen_add_10|nx62798z1  & 
// !\low_pass|modgen_add_13|nx2247z19 )))

	.dataa(\low_pass|modgen_add_12|nx62798z1 ),
	.datab(\low_pass|modgen_add_10|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z19 ),
	.combout(\low_pass|modgen_add_13|nx62798z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_13|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N6
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_8|nx62798z1  = (\low_pass|prod_1__mults19_1|nx1250z1  & ((\low_pass|prod_5__mults21_4|nx3244z1  & (\low_pass|modgen_add_8|nx2247z19  & VCC)) # (!\low_pass|prod_5__mults21_4|nx3244z1  & (!\low_pass|modgen_add_8|nx2247z19 )))) # 
// (!\low_pass|prod_1__mults19_1|nx1250z1  & ((\low_pass|prod_5__mults21_4|nx3244z1  & (!\low_pass|modgen_add_8|nx2247z19 )) # (!\low_pass|prod_5__mults21_4|nx3244z1  & ((\low_pass|modgen_add_8|nx2247z19 ) # (GND)))))
// \low_pass|modgen_add_8|nx2247z16  = CARRY((\low_pass|prod_1__mults19_1|nx1250z1  & (!\low_pass|prod_5__mults21_4|nx3244z1  & !\low_pass|modgen_add_8|nx2247z19 )) # (!\low_pass|prod_1__mults19_1|nx1250z1  & ((!\low_pass|modgen_add_8|nx2247z19 ) # 
// (!\low_pass|prod_5__mults21_4|nx3244z1 ))))

	.dataa(\low_pass|prod_1__mults19_1|nx1250z1 ),
	.datab(\low_pass|prod_5__mults21_4|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z19 ),
	.combout(\low_pass|modgen_add_8|nx62798z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52929 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_8|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N20
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_14|nx62798z1  = ((\low_pass|modgen_add_13|nx62798z1  $ (\low_pass|modgen_add_9|nx62798z1  $ (!\low_pass|modgen_add_14|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_14|nx2247z16  = CARRY((\low_pass|modgen_add_13|nx62798z1  & ((\low_pass|modgen_add_9|nx62798z1 ) # (!\low_pass|modgen_add_14|nx2247z19 ))) # (!\low_pass|modgen_add_13|nx62798z1  & (\low_pass|modgen_add_9|nx62798z1  & 
// !\low_pass|modgen_add_14|nx2247z19 )))

	.dataa(\low_pass|modgen_add_13|nx62798z1 ),
	.datab(\low_pass|modgen_add_9|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z19 ),
	.combout(\low_pass|modgen_add_14|nx62798z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_14|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N20
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_3|nx62798z1  = ((\low_pass|prod_4__mults20_3|nx2247z1  $ (\low_pass|prod_5__mults21_4|nx3244z1  $ (!\low_pass|modgen_add_3|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_3|nx2247z16  = CARRY((\low_pass|prod_4__mults20_3|nx2247z1  & ((\low_pass|prod_5__mults21_4|nx3244z1 ) # (!\low_pass|modgen_add_3|nx2247z19 ))) # (!\low_pass|prod_4__mults20_3|nx2247z1  & (\low_pass|prod_5__mults21_4|nx3244z1  & 
// !\low_pass|modgen_add_3|nx2247z19 )))

	.dataa(\low_pass|prod_4__mults20_3|nx2247z1 ),
	.datab(\low_pass|prod_5__mults21_4|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z19 ),
	.combout(\low_pass|modgen_add_3|nx62798z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_3|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N20
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_0|nx62798z1  = ((\low_pass|prod_1__mults19_1|nx2247z1  $ (\low_pass|prod_0__mults21_0|nx3244z1  $ (!\low_pass|modgen_add_0|nx2247z18 )))) # (GND)
// \low_pass|modgen_add_0|nx2247z15  = CARRY((\low_pass|prod_1__mults19_1|nx2247z1  & ((\low_pass|prod_0__mults21_0|nx3244z1 ) # (!\low_pass|modgen_add_0|nx2247z18 ))) # (!\low_pass|prod_1__mults19_1|nx2247z1  & (\low_pass|prod_0__mults21_0|nx3244z1  & 
// !\low_pass|modgen_add_0|nx2247z18 )))

	.dataa(\low_pass|prod_1__mults19_1|nx2247z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z18 ),
	.combout(\low_pass|modgen_add_0|nx62798z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z15 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_0|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N20
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_2|nx62798z1  = ((\low_pass|modgen_add_0|nx62798z1  $ (\low_pass|modgen_add_1|nx62798z1  $ (!\low_pass|modgen_add_2|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_2|nx2247z16  = CARRY((\low_pass|modgen_add_0|nx62798z1  & ((\low_pass|modgen_add_1|nx62798z1 ) # (!\low_pass|modgen_add_2|nx2247z19 ))) # (!\low_pass|modgen_add_0|nx62798z1  & (\low_pass|modgen_add_1|nx62798z1  & 
// !\low_pass|modgen_add_2|nx2247z19 )))

	.dataa(\low_pass|modgen_add_0|nx62798z1 ),
	.datab(\low_pass|modgen_add_1|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z19 ),
	.combout(\low_pass|modgen_add_2|nx62798z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_2|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N14
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52925 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_16_  = \low_pass|prod_2__mults20_2|nx6235z3 
// \low_pass|prod_2__mults20_2|nx6235z2  = CARRY(\low_pass|prod_2__mults20_2|nx6235z3 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z3 ),
	.combout(\low_pass|prod_2__mults20_2|d_16_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z2 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52925 .lut_mask = 16'hF0F0;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N28
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52925 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx4241z1  = (((\low_pass|prod_0__mults21_0|nx5238z4 ))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z2  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z4 ),
	.combout(\low_pass|prod_0__mults21_0|nx4241z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z2 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52925 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N22
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_11|nx63795z1  = (\low_pass|prod_1__mults19_1|nx3244z1  & ((\low_pass|prod_0__mults21_0|nx4241z1  & (\low_pass|modgen_add_11|nx2247z15  & VCC)) # (!\low_pass|prod_0__mults21_0|nx4241z1  & (!\low_pass|modgen_add_11|nx2247z15 )))) # 
// (!\low_pass|prod_1__mults19_1|nx3244z1  & ((\low_pass|prod_0__mults21_0|nx4241z1  & (!\low_pass|modgen_add_11|nx2247z15 )) # (!\low_pass|prod_0__mults21_0|nx4241z1  & ((\low_pass|modgen_add_11|nx2247z15 ) # (GND)))))
// \low_pass|modgen_add_11|nx2247z12  = CARRY((\low_pass|prod_1__mults19_1|nx3244z1  & (!\low_pass|prod_0__mults21_0|nx4241z1  & !\low_pass|modgen_add_11|nx2247z15 )) # (!\low_pass|prod_1__mults19_1|nx3244z1  & ((!\low_pass|modgen_add_11|nx2247z15 ) # 
// (!\low_pass|prod_0__mults21_0|nx4241z1 ))))

	.dataa(\low_pass|prod_1__mults19_1|nx3244z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx4241z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z15 ),
	.combout(\low_pass|modgen_add_11|nx63795z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z12 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_11|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N22
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_12|nx63795z1  = (\low_pass|prod_2__mults20_2|d_16_  & ((\low_pass|modgen_add_11|nx63795z1  & (\low_pass|modgen_add_12|nx2247z15  & VCC)) # (!\low_pass|modgen_add_11|nx63795z1  & (!\low_pass|modgen_add_12|nx2247z15 )))) # 
// (!\low_pass|prod_2__mults20_2|d_16_  & ((\low_pass|modgen_add_11|nx63795z1  & (!\low_pass|modgen_add_12|nx2247z15 )) # (!\low_pass|modgen_add_11|nx63795z1  & ((\low_pass|modgen_add_12|nx2247z15 ) # (GND)))))
// \low_pass|modgen_add_12|nx2247z12  = CARRY((\low_pass|prod_2__mults20_2|d_16_  & (!\low_pass|modgen_add_11|nx63795z1  & !\low_pass|modgen_add_12|nx2247z15 )) # (!\low_pass|prod_2__mults20_2|d_16_  & ((!\low_pass|modgen_add_12|nx2247z15 ) # 
// (!\low_pass|modgen_add_11|nx63795z1 ))))

	.dataa(\low_pass|prod_2__mults20_2|d_16_ ),
	.datab(\low_pass|modgen_add_11|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z15 ),
	.combout(\low_pass|modgen_add_12|nx63795z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z12 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_12|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N22
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_13|nx63795z1  = (\low_pass|modgen_add_12|nx63795z1  & ((\low_pass|modgen_add_10|nx63795z1  & (\low_pass|modgen_add_13|nx2247z16  & VCC)) # (!\low_pass|modgen_add_10|nx63795z1  & (!\low_pass|modgen_add_13|nx2247z16 )))) # 
// (!\low_pass|modgen_add_12|nx63795z1  & ((\low_pass|modgen_add_10|nx63795z1  & (!\low_pass|modgen_add_13|nx2247z16 )) # (!\low_pass|modgen_add_10|nx63795z1  & ((\low_pass|modgen_add_13|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_13|nx2247z13  = CARRY((\low_pass|modgen_add_12|nx63795z1  & (!\low_pass|modgen_add_10|nx63795z1  & !\low_pass|modgen_add_13|nx2247z16 )) # (!\low_pass|modgen_add_12|nx63795z1  & ((!\low_pass|modgen_add_13|nx2247z16 ) # 
// (!\low_pass|modgen_add_10|nx63795z1 ))))

	.dataa(\low_pass|modgen_add_12|nx63795z1 ),
	.datab(\low_pass|modgen_add_10|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z16 ),
	.combout(\low_pass|modgen_add_13|nx63795z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_13|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N8
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_8|nx63795z1  = ((\low_pass|prod_1__mults19_1|nx2247z1  $ (low_pass_in_15_ $ (!\low_pass|modgen_add_8|nx2247z16 )))) # (GND)
// \low_pass|modgen_add_8|nx2247z13  = CARRY((\low_pass|prod_1__mults19_1|nx2247z1  & ((low_pass_in_15_) # (!\low_pass|modgen_add_8|nx2247z16 ))) # (!\low_pass|prod_1__mults19_1|nx2247z1  & (low_pass_in_15_ & !\low_pass|modgen_add_8|nx2247z16 )))

	.dataa(\low_pass|prod_1__mults19_1|nx2247z1 ),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z16 ),
	.combout(\low_pass|modgen_add_8|nx63795z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52928 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_8|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N22
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_0|nx63795z1  = (\low_pass|prod_1__mults19_1|nx3244z1  & ((\low_pass|prod_0__mults21_0|nx4241z1  & (\low_pass|modgen_add_0|nx2247z15  & VCC)) # (!\low_pass|prod_0__mults21_0|nx4241z1  & (!\low_pass|modgen_add_0|nx2247z15 )))) # 
// (!\low_pass|prod_1__mults19_1|nx3244z1  & ((\low_pass|prod_0__mults21_0|nx4241z1  & (!\low_pass|modgen_add_0|nx2247z15 )) # (!\low_pass|prod_0__mults21_0|nx4241z1  & ((\low_pass|modgen_add_0|nx2247z15 ) # (GND)))))
// \low_pass|modgen_add_0|nx2247z12  = CARRY((\low_pass|prod_1__mults19_1|nx3244z1  & (!\low_pass|prod_0__mults21_0|nx4241z1  & !\low_pass|modgen_add_0|nx2247z15 )) # (!\low_pass|prod_1__mults19_1|nx3244z1  & ((!\low_pass|modgen_add_0|nx2247z15 ) # 
// (!\low_pass|prod_0__mults21_0|nx4241z1 ))))

	.dataa(\low_pass|prod_1__mults19_1|nx3244z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx4241z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z15 ),
	.combout(\low_pass|modgen_add_0|nx63795z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z12 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_0|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N22
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_2|nx63795z1  = (\low_pass|modgen_add_0|nx63795z1  & ((\low_pass|modgen_add_1|nx63795z1  & (\low_pass|modgen_add_2|nx2247z16  & VCC)) # (!\low_pass|modgen_add_1|nx63795z1  & (!\low_pass|modgen_add_2|nx2247z16 )))) # 
// (!\low_pass|modgen_add_0|nx63795z1  & ((\low_pass|modgen_add_1|nx63795z1  & (!\low_pass|modgen_add_2|nx2247z16 )) # (!\low_pass|modgen_add_1|nx63795z1  & ((\low_pass|modgen_add_2|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_2|nx2247z13  = CARRY((\low_pass|modgen_add_0|nx63795z1  & (!\low_pass|modgen_add_1|nx63795z1  & !\low_pass|modgen_add_2|nx2247z16 )) # (!\low_pass|modgen_add_0|nx63795z1  & ((!\low_pass|modgen_add_2|nx2247z16 ) # 
// (!\low_pass|modgen_add_1|nx63795z1 ))))

	.dataa(\low_pass|modgen_add_0|nx63795z1 ),
	.datab(\low_pass|modgen_add_1|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z16 ),
	.combout(\low_pass|modgen_add_2|nx63795z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_2|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N22
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_6|nx63795z1  = (\low_pass|modgen_add_2|nx63795z1  & ((\low_pass|modgen_add_5|nx63795z1  & (\low_pass|modgen_add_6|nx2247z16  & VCC)) # (!\low_pass|modgen_add_5|nx63795z1  & (!\low_pass|modgen_add_6|nx2247z16 )))) # 
// (!\low_pass|modgen_add_2|nx63795z1  & ((\low_pass|modgen_add_5|nx63795z1  & (!\low_pass|modgen_add_6|nx2247z16 )) # (!\low_pass|modgen_add_5|nx63795z1  & ((\low_pass|modgen_add_6|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_6|nx2247z13  = CARRY((\low_pass|modgen_add_2|nx63795z1  & (!\low_pass|modgen_add_5|nx63795z1  & !\low_pass|modgen_add_6|nx2247z16 )) # (!\low_pass|modgen_add_2|nx63795z1  & ((!\low_pass|modgen_add_6|nx2247z16 ) # 
// (!\low_pass|modgen_add_5|nx63795z1 ))))

	.dataa(\low_pass|modgen_add_2|nx63795z1 ),
	.datab(\low_pass|modgen_add_5|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z16 ),
	.combout(\low_pass|modgen_add_6|nx63795z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_6|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N22
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_15|nx63795z1  = (\low_pass|modgen_add_6|nx63795z1  & ((\low_pass|modgen_add_14|nx63795z1  & (\low_pass|modgen_add_15|nx2247z16  & VCC)) # (!\low_pass|modgen_add_14|nx63795z1  & (!\low_pass|modgen_add_15|nx2247z16 )))) # 
// (!\low_pass|modgen_add_6|nx63795z1  & ((\low_pass|modgen_add_14|nx63795z1  & (!\low_pass|modgen_add_15|nx2247z16 )) # (!\low_pass|modgen_add_14|nx63795z1  & ((\low_pass|modgen_add_15|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_15|nx2247z13  = CARRY((\low_pass|modgen_add_6|nx63795z1  & (!\low_pass|modgen_add_14|nx63795z1  & !\low_pass|modgen_add_15|nx2247z16 )) # (!\low_pass|modgen_add_6|nx63795z1  & ((!\low_pass|modgen_add_15|nx2247z16 ) # 
// (!\low_pass|modgen_add_14|nx63795z1 ))))

	.dataa(\low_pass|modgen_add_6|nx63795z1 ),
	.datab(\low_pass|modgen_add_14|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z16 ),
	.combout(\low_pass|modgen_add_15|nx63795z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_15|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N24
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_10|nx64792z1  = ((low_pass_in_15_ $ (\low_pass|prod_4__mults20_3|nx4241z1  $ (!\low_pass|modgen_add_10|nx2247z10 )))) # (GND)
// \low_pass|modgen_add_10|nx2247z8  = CARRY((low_pass_in_15_ & ((\low_pass|prod_4__mults20_3|nx4241z1 ) # (!\low_pass|modgen_add_10|nx2247z10 ))) # (!low_pass_in_15_ & (\low_pass|prod_4__mults20_3|nx4241z1  & !\low_pass|modgen_add_10|nx2247z10 )))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_4__mults20_3|nx4241z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z10 ),
	.combout(\low_pass|modgen_add_10|nx64792z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z8 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_10|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N26
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_10|nx253z1  = (((\low_pass|modgen_add_10|nx2247z8 ))) # (GND)
// \low_pass|modgen_add_10|nx2247z6  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z8 ),
	.combout(\low_pass|modgen_add_10|nx253z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z6 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52926 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_10|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N16
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|ix6235z52923 (
// Equation(s):
// \low_pass|prod_2__mults20_2|nx6235z1  = \low_pass|prod_2__mults20_2|nx6235z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z2 ),
	.combout(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|ix6235z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|prod_2__mults20_2|ix6235z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N30
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|ix5238z52923 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx5238z1  = \low_pass|prod_0__mults21_0|nx5238z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z2 ),
	.combout(\low_pass|prod_0__mults21_0|nx5238z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|ix5238z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|prod_0__mults21_0|ix5238z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N24
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_11|nx64792z1  = ((\low_pass|prod_0__mults21_0|nx5238z1  $ (low_pass_in_15_ $ (!\low_pass|modgen_add_11|nx2247z12 )))) # (GND)
// \low_pass|modgen_add_11|nx2247z9  = CARRY((\low_pass|prod_0__mults21_0|nx5238z1  & ((low_pass_in_15_) # (!\low_pass|modgen_add_11|nx2247z12 ))) # (!\low_pass|prod_0__mults21_0|nx5238z1  & (low_pass_in_15_ & !\low_pass|modgen_add_11|nx2247z12 )))

	.dataa(\low_pass|prod_0__mults21_0|nx5238z1 ),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z12 ),
	.combout(\low_pass|modgen_add_11|nx64792z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z9 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_11|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N26
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_11|nx253z1  = (((\low_pass|modgen_add_11|nx2247z9 ))) # (GND)
// \low_pass|modgen_add_11|nx2247z6  = CARRY(low_pass_in_15_)

	.dataa(vcc),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z9 ),
	.combout(\low_pass|modgen_add_11|nx253z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z6 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52926 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_11|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N24
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_12|nx64792z1  = ((\low_pass|prod_2__mults20_2|nx6235z1  $ (\low_pass|modgen_add_11|nx64792z1  $ (!\low_pass|modgen_add_12|nx2247z12 )))) # (GND)
// \low_pass|modgen_add_12|nx2247z9  = CARRY((\low_pass|prod_2__mults20_2|nx6235z1  & ((\low_pass|modgen_add_11|nx64792z1 ) # (!\low_pass|modgen_add_12|nx2247z12 ))) # (!\low_pass|prod_2__mults20_2|nx6235z1  & (\low_pass|modgen_add_11|nx64792z1  & 
// !\low_pass|modgen_add_12|nx2247z12 )))

	.dataa(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datab(\low_pass|modgen_add_11|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z12 ),
	.combout(\low_pass|modgen_add_12|nx64792z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z9 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_12|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N26
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_12|nx253z1  = (\low_pass|prod_2__mults20_2|nx6235z1  & ((\low_pass|modgen_add_11|nx253z1  & (\low_pass|modgen_add_12|nx2247z9  & VCC)) # (!\low_pass|modgen_add_11|nx253z1  & (!\low_pass|modgen_add_12|nx2247z9 )))) # 
// (!\low_pass|prod_2__mults20_2|nx6235z1  & ((\low_pass|modgen_add_11|nx253z1  & (!\low_pass|modgen_add_12|nx2247z9 )) # (!\low_pass|modgen_add_11|nx253z1  & ((\low_pass|modgen_add_12|nx2247z9 ) # (GND)))))
// \low_pass|modgen_add_12|nx2247z6  = CARRY((\low_pass|prod_2__mults20_2|nx6235z1  & (!\low_pass|modgen_add_11|nx253z1  & !\low_pass|modgen_add_12|nx2247z9 )) # (!\low_pass|prod_2__mults20_2|nx6235z1  & ((!\low_pass|modgen_add_12|nx2247z9 ) # 
// (!\low_pass|modgen_add_11|nx253z1 ))))

	.dataa(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datab(\low_pass|modgen_add_11|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z9 ),
	.combout(\low_pass|modgen_add_12|nx253z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z6 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_12|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N24
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_13|nx64792z1  = ((\low_pass|modgen_add_12|nx64792z1  $ (\low_pass|modgen_add_10|nx64792z1  $ (!\low_pass|modgen_add_13|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_13|nx2247z10  = CARRY((\low_pass|modgen_add_12|nx64792z1  & ((\low_pass|modgen_add_10|nx64792z1 ) # (!\low_pass|modgen_add_13|nx2247z13 ))) # (!\low_pass|modgen_add_12|nx64792z1  & (\low_pass|modgen_add_10|nx64792z1  & 
// !\low_pass|modgen_add_13|nx2247z13 )))

	.dataa(\low_pass|modgen_add_12|nx64792z1 ),
	.datab(\low_pass|modgen_add_10|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z13 ),
	.combout(\low_pass|modgen_add_13|nx64792z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_13|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N26
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_13|nx253z1  = (\low_pass|modgen_add_10|nx253z1  & ((\low_pass|modgen_add_12|nx253z1  & (\low_pass|modgen_add_13|nx2247z10  & VCC)) # (!\low_pass|modgen_add_12|nx253z1  & (!\low_pass|modgen_add_13|nx2247z10 )))) # 
// (!\low_pass|modgen_add_10|nx253z1  & ((\low_pass|modgen_add_12|nx253z1  & (!\low_pass|modgen_add_13|nx2247z10 )) # (!\low_pass|modgen_add_12|nx253z1  & ((\low_pass|modgen_add_13|nx2247z10 ) # (GND)))))
// \low_pass|modgen_add_13|nx2247z7  = CARRY((\low_pass|modgen_add_10|nx253z1  & (!\low_pass|modgen_add_12|nx253z1  & !\low_pass|modgen_add_13|nx2247z10 )) # (!\low_pass|modgen_add_10|nx253z1  & ((!\low_pass|modgen_add_13|nx2247z10 ) # 
// (!\low_pass|modgen_add_12|nx253z1 ))))

	.dataa(\low_pass|modgen_add_10|nx253z1 ),
	.datab(\low_pass|modgen_add_12|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z10 ),
	.combout(\low_pass|modgen_add_13|nx253z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_13|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N10
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_8|nx64792z1  = (low_pass_in_15_ & ((\low_pass|prod_1__mults19_1|nx3244z1  & (\low_pass|modgen_add_8|nx2247z13  & VCC)) # (!\low_pass|prod_1__mults19_1|nx3244z1  & (!\low_pass|modgen_add_8|nx2247z13 )))) # (!low_pass_in_15_ & 
// ((\low_pass|prod_1__mults19_1|nx3244z1  & (!\low_pass|modgen_add_8|nx2247z13 )) # (!\low_pass|prod_1__mults19_1|nx3244z1  & ((\low_pass|modgen_add_8|nx2247z13 ) # (GND)))))
// \low_pass|modgen_add_8|nx2247z10  = CARRY((low_pass_in_15_ & (!\low_pass|prod_1__mults19_1|nx3244z1  & !\low_pass|modgen_add_8|nx2247z13 )) # (!low_pass_in_15_ & ((!\low_pass|modgen_add_8|nx2247z13 ) # (!\low_pass|prod_1__mults19_1|nx3244z1 ))))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_1__mults19_1|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z13 ),
	.combout(\low_pass|modgen_add_8|nx64792z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52927 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_8|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N12
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_8|nx253z1  = (((!\low_pass|modgen_add_8|nx2247z10 ))) # (GND)
// \low_pass|modgen_add_8|nx2247z7  = CARRY(low_pass_in_15_)

	.dataa(vcc),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z10 ),
	.combout(\low_pass|modgen_add_8|nx253z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52926 .lut_mask = 16'h0FCC;
defparam \low_pass|modgen_add_8|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N24
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_9|nx64792z1  = ((\low_pass|modgen_add_8|nx64792z1  $ (\low_pass|modgen_add_4|nx64792z1  $ (!\low_pass|modgen_add_9|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_9|nx2247z10  = CARRY((\low_pass|modgen_add_8|nx64792z1  & ((\low_pass|modgen_add_4|nx64792z1 ) # (!\low_pass|modgen_add_9|nx2247z13 ))) # (!\low_pass|modgen_add_8|nx64792z1  & (\low_pass|modgen_add_4|nx64792z1  & 
// !\low_pass|modgen_add_9|nx2247z13 )))

	.dataa(\low_pass|modgen_add_8|nx64792z1 ),
	.datab(\low_pass|modgen_add_4|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z13 ),
	.combout(\low_pass|modgen_add_9|nx64792z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_9|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N26
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_9|nx253z1  = (\low_pass|modgen_add_8|nx253z1  & ((\low_pass|modgen_add_4|nx253z1  & (\low_pass|modgen_add_9|nx2247z10  & VCC)) # (!\low_pass|modgen_add_4|nx253z1  & (!\low_pass|modgen_add_9|nx2247z10 )))) # 
// (!\low_pass|modgen_add_8|nx253z1  & ((\low_pass|modgen_add_4|nx253z1  & (!\low_pass|modgen_add_9|nx2247z10 )) # (!\low_pass|modgen_add_4|nx253z1  & ((\low_pass|modgen_add_9|nx2247z10 ) # (GND)))))
// \low_pass|modgen_add_9|nx2247z7  = CARRY((\low_pass|modgen_add_8|nx253z1  & (!\low_pass|modgen_add_4|nx253z1  & !\low_pass|modgen_add_9|nx2247z10 )) # (!\low_pass|modgen_add_8|nx253z1  & ((!\low_pass|modgen_add_9|nx2247z10 ) # 
// (!\low_pass|modgen_add_4|nx253z1 ))))

	.dataa(\low_pass|modgen_add_8|nx253z1 ),
	.datab(\low_pass|modgen_add_4|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z10 ),
	.combout(\low_pass|modgen_add_9|nx253z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_9|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N26
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_14|nx253z1  = (\low_pass|modgen_add_13|nx253z1  & ((\low_pass|modgen_add_9|nx253z1  & (\low_pass|modgen_add_14|nx2247z10  & VCC)) # (!\low_pass|modgen_add_9|nx253z1  & (!\low_pass|modgen_add_14|nx2247z10 )))) # 
// (!\low_pass|modgen_add_13|nx253z1  & ((\low_pass|modgen_add_9|nx253z1  & (!\low_pass|modgen_add_14|nx2247z10 )) # (!\low_pass|modgen_add_9|nx253z1  & ((\low_pass|modgen_add_14|nx2247z10 ) # (GND)))))
// \low_pass|modgen_add_14|nx2247z7  = CARRY((\low_pass|modgen_add_13|nx253z1  & (!\low_pass|modgen_add_9|nx253z1  & !\low_pass|modgen_add_14|nx2247z10 )) # (!\low_pass|modgen_add_13|nx253z1  & ((!\low_pass|modgen_add_14|nx2247z10 ) # 
// (!\low_pass|modgen_add_9|nx253z1 ))))

	.dataa(\low_pass|modgen_add_13|nx253z1 ),
	.datab(\low_pass|modgen_add_9|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z10 ),
	.combout(\low_pass|modgen_add_14|nx253z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_14|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N26
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_3|nx253z1  = (((\low_pass|modgen_add_3|nx2247z10 ))) # (GND)
// \low_pass|modgen_add_3|nx2247z7  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z10 ),
	.combout(\low_pass|modgen_add_3|nx253z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52926 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_3|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N26
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_5|nx253z1  = (\low_pass|modgen_add_4|nx253z1  & ((\low_pass|modgen_add_3|nx253z1  & (\low_pass|modgen_add_5|nx2247z10  & VCC)) # (!\low_pass|modgen_add_3|nx253z1  & (!\low_pass|modgen_add_5|nx2247z10 )))) # 
// (!\low_pass|modgen_add_4|nx253z1  & ((\low_pass|modgen_add_3|nx253z1  & (!\low_pass|modgen_add_5|nx2247z10 )) # (!\low_pass|modgen_add_3|nx253z1  & ((\low_pass|modgen_add_5|nx2247z10 ) # (GND)))))
// \low_pass|modgen_add_5|nx2247z7  = CARRY((\low_pass|modgen_add_4|nx253z1  & (!\low_pass|modgen_add_3|nx253z1  & !\low_pass|modgen_add_5|nx2247z10 )) # (!\low_pass|modgen_add_4|nx253z1  & ((!\low_pass|modgen_add_5|nx2247z10 ) # 
// (!\low_pass|modgen_add_3|nx253z1 ))))

	.dataa(\low_pass|modgen_add_4|nx253z1 ),
	.datab(\low_pass|modgen_add_3|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z10 ),
	.combout(\low_pass|modgen_add_5|nx253z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_5|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N24
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_0|nx64792z1  = ((\low_pass|prod_0__mults21_0|nx5238z1  $ (low_pass_in_15_ $ (!\low_pass|modgen_add_0|nx2247z12 )))) # (GND)
// \low_pass|modgen_add_0|nx2247z9  = CARRY((\low_pass|prod_0__mults21_0|nx5238z1  & ((low_pass_in_15_) # (!\low_pass|modgen_add_0|nx2247z12 ))) # (!\low_pass|prod_0__mults21_0|nx5238z1  & (low_pass_in_15_ & !\low_pass|modgen_add_0|nx2247z12 )))

	.dataa(\low_pass|prod_0__mults21_0|nx5238z1 ),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z12 ),
	.combout(\low_pass|modgen_add_0|nx64792z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z9 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_0|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N26
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_0|nx253z1  = (((\low_pass|modgen_add_0|nx2247z9 ))) # (GND)
// \low_pass|modgen_add_0|nx2247z6  = CARRY(low_pass_in_15_)

	.dataa(vcc),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z9 ),
	.combout(\low_pass|modgen_add_0|nx253z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z6 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52926 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_0|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N26
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_1|nx253z1  = (\low_pass|prod_2__mults20_2|nx6235z1  & ((low_pass_in_15_ & (\low_pass|modgen_add_1|nx2247z6  & VCC)) # (!low_pass_in_15_ & (!\low_pass|modgen_add_1|nx2247z6 )))) # (!\low_pass|prod_2__mults20_2|nx6235z1  & 
// ((low_pass_in_15_ & (!\low_pass|modgen_add_1|nx2247z6 )) # (!low_pass_in_15_ & ((\low_pass|modgen_add_1|nx2247z6 ) # (GND)))))
// \low_pass|modgen_add_1|nx2247z5  = CARRY((\low_pass|prod_2__mults20_2|nx6235z1  & (!low_pass_in_15_ & !\low_pass|modgen_add_1|nx2247z6 )) # (!\low_pass|prod_2__mults20_2|nx6235z1  & ((!\low_pass|modgen_add_1|nx2247z6 ) # (!low_pass_in_15_))))

	.dataa(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z6 ),
	.combout(\low_pass|modgen_add_1|nx253z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z5 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_1|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N24
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_2|nx64792z1  = ((\low_pass|modgen_add_0|nx64792z1  $ (\low_pass|modgen_add_1|nx64792z1  $ (!\low_pass|modgen_add_2|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_2|nx2247z10  = CARRY((\low_pass|modgen_add_0|nx64792z1  & ((\low_pass|modgen_add_1|nx64792z1 ) # (!\low_pass|modgen_add_2|nx2247z13 ))) # (!\low_pass|modgen_add_0|nx64792z1  & (\low_pass|modgen_add_1|nx64792z1  & 
// !\low_pass|modgen_add_2|nx2247z13 )))

	.dataa(\low_pass|modgen_add_0|nx64792z1 ),
	.datab(\low_pass|modgen_add_1|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z13 ),
	.combout(\low_pass|modgen_add_2|nx64792z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_2|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N26
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_2|nx253z1  = (\low_pass|modgen_add_0|nx253z1  & ((\low_pass|modgen_add_1|nx253z1  & (\low_pass|modgen_add_2|nx2247z10  & VCC)) # (!\low_pass|modgen_add_1|nx253z1  & (!\low_pass|modgen_add_2|nx2247z10 )))) # 
// (!\low_pass|modgen_add_0|nx253z1  & ((\low_pass|modgen_add_1|nx253z1  & (!\low_pass|modgen_add_2|nx2247z10 )) # (!\low_pass|modgen_add_1|nx253z1  & ((\low_pass|modgen_add_2|nx2247z10 ) # (GND)))))
// \low_pass|modgen_add_2|nx2247z7  = CARRY((\low_pass|modgen_add_0|nx253z1  & (!\low_pass|modgen_add_1|nx253z1  & !\low_pass|modgen_add_2|nx2247z10 )) # (!\low_pass|modgen_add_0|nx253z1  & ((!\low_pass|modgen_add_2|nx2247z10 ) # 
// (!\low_pass|modgen_add_1|nx253z1 ))))

	.dataa(\low_pass|modgen_add_0|nx253z1 ),
	.datab(\low_pass|modgen_add_1|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z10 ),
	.combout(\low_pass|modgen_add_2|nx253z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_2|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N24
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_6|nx64792z1  = ((\low_pass|modgen_add_2|nx64792z1  $ (\low_pass|modgen_add_5|nx64792z1  $ (!\low_pass|modgen_add_6|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_6|nx2247z10  = CARRY((\low_pass|modgen_add_2|nx64792z1  & ((\low_pass|modgen_add_5|nx64792z1 ) # (!\low_pass|modgen_add_6|nx2247z13 ))) # (!\low_pass|modgen_add_2|nx64792z1  & (\low_pass|modgen_add_5|nx64792z1  & 
// !\low_pass|modgen_add_6|nx2247z13 )))

	.dataa(\low_pass|modgen_add_2|nx64792z1 ),
	.datab(\low_pass|modgen_add_5|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z13 ),
	.combout(\low_pass|modgen_add_6|nx64792z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_6|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N26
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_6|nx253z1  = (\low_pass|modgen_add_5|nx253z1  & ((\low_pass|modgen_add_2|nx253z1  & (\low_pass|modgen_add_6|nx2247z10  & VCC)) # (!\low_pass|modgen_add_2|nx253z1  & (!\low_pass|modgen_add_6|nx2247z10 )))) # 
// (!\low_pass|modgen_add_5|nx253z1  & ((\low_pass|modgen_add_2|nx253z1  & (!\low_pass|modgen_add_6|nx2247z10 )) # (!\low_pass|modgen_add_2|nx253z1  & ((\low_pass|modgen_add_6|nx2247z10 ) # (GND)))))
// \low_pass|modgen_add_6|nx2247z7  = CARRY((\low_pass|modgen_add_5|nx253z1  & (!\low_pass|modgen_add_2|nx253z1  & !\low_pass|modgen_add_6|nx2247z10 )) # (!\low_pass|modgen_add_5|nx253z1  & ((!\low_pass|modgen_add_6|nx2247z10 ) # 
// (!\low_pass|modgen_add_2|nx253z1 ))))

	.dataa(\low_pass|modgen_add_5|nx253z1 ),
	.datab(\low_pass|modgen_add_2|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z10 ),
	.combout(\low_pass|modgen_add_6|nx253z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_6|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N24
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_15|nx64792z1  = ((\low_pass|modgen_add_6|nx64792z1  $ (\low_pass|modgen_add_14|nx64792z1  $ (!\low_pass|modgen_add_15|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_15|nx2247z10  = CARRY((\low_pass|modgen_add_6|nx64792z1  & ((\low_pass|modgen_add_14|nx64792z1 ) # (!\low_pass|modgen_add_15|nx2247z13 ))) # (!\low_pass|modgen_add_6|nx64792z1  & (\low_pass|modgen_add_14|nx64792z1  & 
// !\low_pass|modgen_add_15|nx2247z13 )))

	.dataa(\low_pass|modgen_add_6|nx64792z1 ),
	.datab(\low_pass|modgen_add_14|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z13 ),
	.combout(\low_pass|modgen_add_15|nx64792z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_15|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N28
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_10|nx1250z1  = (((\low_pass|modgen_add_10|nx2247z6 ))) # (GND)
// \low_pass|modgen_add_10|nx2247z4  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z6 ),
	.combout(\low_pass|modgen_add_10|nx1250z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52925 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_10|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N28
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_11|nx1250z1  = (((\low_pass|modgen_add_11|nx2247z6 ))) # (GND)
// \low_pass|modgen_add_11|nx2247z4  = CARRY(low_pass_in_15_)

	.dataa(vcc),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z6 ),
	.combout(\low_pass|modgen_add_11|nx1250z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52925 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_11|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N28
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_12|nx1250z1  = ((\low_pass|modgen_add_11|nx1250z1  $ (\low_pass|prod_2__mults20_2|nx6235z1  $ (!\low_pass|modgen_add_12|nx2247z6 )))) # (GND)
// \low_pass|modgen_add_12|nx2247z4  = CARRY((\low_pass|modgen_add_11|nx1250z1  & ((\low_pass|prod_2__mults20_2|nx6235z1 ) # (!\low_pass|modgen_add_12|nx2247z6 ))) # (!\low_pass|modgen_add_11|nx1250z1  & (\low_pass|prod_2__mults20_2|nx6235z1  & 
// !\low_pass|modgen_add_12|nx2247z6 )))

	.dataa(\low_pass|modgen_add_11|nx1250z1 ),
	.datab(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z6 ),
	.combout(\low_pass|modgen_add_12|nx1250z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_12|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N28
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_13|nx1250z1  = ((\low_pass|modgen_add_12|nx1250z1  $ (\low_pass|modgen_add_10|nx1250z1  $ (!\low_pass|modgen_add_13|nx2247z7 )))) # (GND)
// \low_pass|modgen_add_13|nx2247z4  = CARRY((\low_pass|modgen_add_12|nx1250z1  & ((\low_pass|modgen_add_10|nx1250z1 ) # (!\low_pass|modgen_add_13|nx2247z7 ))) # (!\low_pass|modgen_add_12|nx1250z1  & (\low_pass|modgen_add_10|nx1250z1  & 
// !\low_pass|modgen_add_13|nx2247z7 )))

	.dataa(\low_pass|modgen_add_12|nx1250z1 ),
	.datab(\low_pass|modgen_add_10|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z7 ),
	.combout(\low_pass|modgen_add_13|nx1250z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_13|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N14
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_4|nx1250z1  = (((\low_pass|modgen_add_4|nx2247z6 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z4  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z6 ),
	.combout(\low_pass|modgen_add_4|nx1250z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52925 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_4|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N14
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_8|nx1250z1  = (((\low_pass|modgen_add_8|nx2247z7 ))) # (GND)
// \low_pass|modgen_add_8|nx2247z4  = CARRY(low_pass_in_15_)

	.dataa(vcc),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z7 ),
	.combout(\low_pass|modgen_add_8|nx1250z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52925 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_8|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N28
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_9|nx1250z1  = ((\low_pass|modgen_add_8|nx1250z1  $ (\low_pass|modgen_add_4|nx1250z1  $ (!\low_pass|modgen_add_9|nx2247z7 )))) # (GND)
// \low_pass|modgen_add_9|nx2247z4  = CARRY((\low_pass|modgen_add_8|nx1250z1  & ((\low_pass|modgen_add_4|nx1250z1 ) # (!\low_pass|modgen_add_9|nx2247z7 ))) # (!\low_pass|modgen_add_8|nx1250z1  & (\low_pass|modgen_add_4|nx1250z1  & 
// !\low_pass|modgen_add_9|nx2247z7 )))

	.dataa(\low_pass|modgen_add_8|nx1250z1 ),
	.datab(\low_pass|modgen_add_4|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z7 ),
	.combout(\low_pass|modgen_add_9|nx1250z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_9|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N28
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_14|nx1250z1  = ((\low_pass|modgen_add_9|nx1250z1  $ (\low_pass|modgen_add_13|nx1250z1  $ (!\low_pass|modgen_add_14|nx2247z7 )))) # (GND)
// \low_pass|modgen_add_14|nx2247z4  = CARRY((\low_pass|modgen_add_9|nx1250z1  & ((\low_pass|modgen_add_13|nx1250z1 ) # (!\low_pass|modgen_add_14|nx2247z7 ))) # (!\low_pass|modgen_add_9|nx1250z1  & (\low_pass|modgen_add_13|nx1250z1  & 
// !\low_pass|modgen_add_14|nx2247z7 )))

	.dataa(\low_pass|modgen_add_9|nx1250z1 ),
	.datab(\low_pass|modgen_add_13|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z7 ),
	.combout(\low_pass|modgen_add_14|nx1250z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_14|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N28
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_3|nx1250z1  = (((\low_pass|modgen_add_3|nx2247z7 ))) # (GND)
// \low_pass|modgen_add_3|nx2247z4  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z7 ),
	.combout(\low_pass|modgen_add_3|nx1250z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52925 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_3|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N28
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_5|nx1250z1  = ((\low_pass|modgen_add_3|nx1250z1  $ (\low_pass|modgen_add_4|nx1250z1  $ (!\low_pass|modgen_add_5|nx2247z7 )))) # (GND)
// \low_pass|modgen_add_5|nx2247z4  = CARRY((\low_pass|modgen_add_3|nx1250z1  & ((\low_pass|modgen_add_4|nx1250z1 ) # (!\low_pass|modgen_add_5|nx2247z7 ))) # (!\low_pass|modgen_add_3|nx1250z1  & (\low_pass|modgen_add_4|nx1250z1  & 
// !\low_pass|modgen_add_5|nx2247z7 )))

	.dataa(\low_pass|modgen_add_3|nx1250z1 ),
	.datab(\low_pass|modgen_add_4|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z7 ),
	.combout(\low_pass|modgen_add_5|nx1250z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_5|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N28
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_0|nx1250z1  = (((\low_pass|modgen_add_0|nx2247z6 ))) # (GND)
// \low_pass|modgen_add_0|nx2247z4  = CARRY(low_pass_in_15_)

	.dataa(vcc),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z6 ),
	.combout(\low_pass|modgen_add_0|nx1250z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52925 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_0|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N28
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_1|nx1250z1  = ((\low_pass|prod_2__mults20_2|nx6235z1  $ (low_pass_in_15_ $ (!\low_pass|modgen_add_1|nx2247z5 )))) # (GND)
// \low_pass|modgen_add_1|nx2247z4  = CARRY((\low_pass|prod_2__mults20_2|nx6235z1  & ((low_pass_in_15_) # (!\low_pass|modgen_add_1|nx2247z5 ))) # (!\low_pass|prod_2__mults20_2|nx6235z1  & (low_pass_in_15_ & !\low_pass|modgen_add_1|nx2247z5 )))

	.dataa(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z5 ),
	.combout(\low_pass|modgen_add_1|nx1250z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_1|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N28
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_2|nx1250z1  = ((\low_pass|modgen_add_0|nx1250z1  $ (\low_pass|modgen_add_1|nx1250z1  $ (!\low_pass|modgen_add_2|nx2247z7 )))) # (GND)
// \low_pass|modgen_add_2|nx2247z4  = CARRY((\low_pass|modgen_add_0|nx1250z1  & ((\low_pass|modgen_add_1|nx1250z1 ) # (!\low_pass|modgen_add_2|nx2247z7 ))) # (!\low_pass|modgen_add_0|nx1250z1  & (\low_pass|modgen_add_1|nx1250z1  & 
// !\low_pass|modgen_add_2|nx2247z7 )))

	.dataa(\low_pass|modgen_add_0|nx1250z1 ),
	.datab(\low_pass|modgen_add_1|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z7 ),
	.combout(\low_pass|modgen_add_2|nx1250z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_2|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N28
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_6|nx1250z1  = ((\low_pass|modgen_add_2|nx1250z1  $ (\low_pass|modgen_add_5|nx1250z1  $ (!\low_pass|modgen_add_6|nx2247z7 )))) # (GND)
// \low_pass|modgen_add_6|nx2247z4  = CARRY((\low_pass|modgen_add_2|nx1250z1  & ((\low_pass|modgen_add_5|nx1250z1 ) # (!\low_pass|modgen_add_6|nx2247z7 ))) # (!\low_pass|modgen_add_2|nx1250z1  & (\low_pass|modgen_add_5|nx1250z1  & 
// !\low_pass|modgen_add_6|nx2247z7 )))

	.dataa(\low_pass|modgen_add_2|nx1250z1 ),
	.datab(\low_pass|modgen_add_5|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z7 ),
	.combout(\low_pass|modgen_add_6|nx1250z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_6|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N28
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52925 (
// Equation(s):
// \low_pass|modgen_add_15|nx1250z1  = ((\low_pass|modgen_add_14|nx1250z1  $ (\low_pass|modgen_add_6|nx1250z1  $ (!\low_pass|modgen_add_15|nx2247z7 )))) # (GND)
// \low_pass|modgen_add_15|nx2247z4  = CARRY((\low_pass|modgen_add_14|nx1250z1  & ((\low_pass|modgen_add_6|nx1250z1 ) # (!\low_pass|modgen_add_15|nx2247z7 ))) # (!\low_pass|modgen_add_14|nx1250z1  & (\low_pass|modgen_add_6|nx1250z1  & 
// !\low_pass|modgen_add_15|nx2247z7 )))

	.dataa(\low_pass|modgen_add_14|nx1250z1 ),
	.datab(\low_pass|modgen_add_6|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z7 ),
	.combout(\low_pass|modgen_add_15|nx1250z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z4 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52925 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_15|ix2247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N30
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_10|nx2247z1  = \low_pass|modgen_add_10|nx2247z4 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z4 ),
	.combout(\low_pass|modgen_add_10|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|modgen_add_10|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N30
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_11|nx2247z1  = \low_pass|modgen_add_11|nx2247z4 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z4 ),
	.combout(\low_pass|modgen_add_11|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|modgen_add_11|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N30
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_12|nx2247z1  = \low_pass|modgen_add_11|nx2247z1  $ (\low_pass|prod_2__mults20_2|nx6235z1  $ (\low_pass|modgen_add_12|nx2247z4 ))

	.dataa(\low_pass|modgen_add_11|nx2247z1 ),
	.datab(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z4 ),
	.combout(\low_pass|modgen_add_12|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52923 .lut_mask = 16'h9696;
defparam \low_pass|modgen_add_12|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N30
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_13|nx2247z1  = \low_pass|modgen_add_10|nx2247z1  $ (\low_pass|modgen_add_13|nx2247z4  $ (\low_pass|modgen_add_12|nx2247z1 ))

	.dataa(vcc),
	.datab(\low_pass|modgen_add_10|nx2247z1 ),
	.datac(vcc),
	.datad(\low_pass|modgen_add_12|nx2247z1 ),
	.cin(\low_pass|modgen_add_13|nx2247z4 ),
	.combout(\low_pass|modgen_add_13|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52923 .lut_mask = 16'hC33C;
defparam \low_pass|modgen_add_13|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N16
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_4|nx2247z1  = \low_pass|modgen_add_4|nx2247z4 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z4 ),
	.combout(\low_pass|modgen_add_4|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|modgen_add_4|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N16
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_8|nx2247z1  = \low_pass|modgen_add_8|nx2247z4 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z4 ),
	.combout(\low_pass|modgen_add_8|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|modgen_add_8|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N30
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_9|nx2247z1  = \low_pass|modgen_add_8|nx2247z1  $ (\low_pass|modgen_add_9|nx2247z4  $ (\low_pass|modgen_add_4|nx2247z1 ))

	.dataa(vcc),
	.datab(\low_pass|modgen_add_8|nx2247z1 ),
	.datac(vcc),
	.datad(\low_pass|modgen_add_4|nx2247z1 ),
	.cin(\low_pass|modgen_add_9|nx2247z4 ),
	.combout(\low_pass|modgen_add_9|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52923 .lut_mask = 16'hC33C;
defparam \low_pass|modgen_add_9|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N30
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_14|nx2247z1  = \low_pass|modgen_add_13|nx2247z1  $ (\low_pass|modgen_add_14|nx2247z4  $ (\low_pass|modgen_add_9|nx2247z1 ))

	.dataa(vcc),
	.datab(\low_pass|modgen_add_13|nx2247z1 ),
	.datac(vcc),
	.datad(\low_pass|modgen_add_9|nx2247z1 ),
	.cin(\low_pass|modgen_add_14|nx2247z4 ),
	.combout(\low_pass|modgen_add_14|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52923 .lut_mask = 16'hC33C;
defparam \low_pass|modgen_add_14|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N30
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_3|nx2247z1  = \low_pass|modgen_add_3|nx2247z4 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z4 ),
	.combout(\low_pass|modgen_add_3|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|modgen_add_3|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N30
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_5|nx2247z1  = \low_pass|modgen_add_3|nx2247z1  $ (\low_pass|modgen_add_5|nx2247z4  $ (\low_pass|modgen_add_4|nx2247z1 ))

	.dataa(\low_pass|modgen_add_3|nx2247z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(\low_pass|modgen_add_4|nx2247z1 ),
	.cin(\low_pass|modgen_add_5|nx2247z4 ),
	.combout(\low_pass|modgen_add_5|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52923 .lut_mask = 16'hA55A;
defparam \low_pass|modgen_add_5|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N30
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_0|nx2247z1  = \low_pass|modgen_add_0|nx2247z4 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z4 ),
	.combout(\low_pass|modgen_add_0|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|modgen_add_0|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N30
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_1|nx2247z1  = \low_pass|prod_2__mults20_2|nx6235z1  $ (low_pass_in_15_ $ (\low_pass|modgen_add_1|nx2247z4 ))

	.dataa(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z4 ),
	.combout(\low_pass|modgen_add_1|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52923 .lut_mask = 16'h9696;
defparam \low_pass|modgen_add_1|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N30
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_2|nx2247z1  = \low_pass|modgen_add_0|nx2247z1  $ (\low_pass|modgen_add_2|nx2247z4  $ (\low_pass|modgen_add_1|nx2247z1 ))

	.dataa(\low_pass|modgen_add_0|nx2247z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(\low_pass|modgen_add_1|nx2247z1 ),
	.cin(\low_pass|modgen_add_2|nx2247z4 ),
	.combout(\low_pass|modgen_add_2|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52923 .lut_mask = 16'hA55A;
defparam \low_pass|modgen_add_2|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N30
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_6|nx2247z1  = \low_pass|modgen_add_2|nx2247z1  $ (\low_pass|modgen_add_6|nx2247z4  $ (\low_pass|modgen_add_5|nx2247z1 ))

	.dataa(\low_pass|modgen_add_2|nx2247z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(\low_pass|modgen_add_5|nx2247z1 ),
	.cin(\low_pass|modgen_add_6|nx2247z4 ),
	.combout(\low_pass|modgen_add_6|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52923 .lut_mask = 16'hA55A;
defparam \low_pass|modgen_add_6|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N30
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52923 (
// Equation(s):
// \low_pass|modgen_add_15|nx2247z1  = \low_pass|modgen_add_14|nx2247z1  $ (\low_pass|modgen_add_15|nx2247z4  $ (\low_pass|modgen_add_6|nx2247z1 ))

	.dataa(\low_pass|modgen_add_14|nx2247z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(\low_pass|modgen_add_6|nx2247z1 ),
	.cin(\low_pass|modgen_add_15|nx2247z4 ),
	.combout(\low_pass|modgen_add_15|nx2247z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52923 .lut_mask = 16'hA55A;
defparam \low_pass|modgen_add_15|ix2247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y27_N13
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_0_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ));

// Location: LCFF_X34_Y27_N21
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_4_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ));

// Location: LCFF_X34_Y27_N17
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_2_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ));

// Location: LCCOMB_X35_Y27_N26
cycloneii_lcell_comb ix50205z52926(
// Equation(s):
// nx50205z4 = (((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 )

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ),
	.datac(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ),
	.datad(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ),
	.cin(gnd),
	.combout(nx50205z4),
	.cout());
// synopsys translate_off
defparam ix50205z52926.lut_mask = 16'h7FFF;
defparam ix50205z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y27_N18
cycloneii_lcell_comb ix50205z52925(
// Equation(s):
// nx50205z3 = ((nx50205z4) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 )

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ),
	.datab(nx50205z4),
	.datac(vcc),
	.datad(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ),
	.cin(gnd),
	.combout(nx50205z3),
	.cout());
// synopsys translate_off
defparam ix50205z52925.lut_mask = 16'hDDFF;
defparam ix50205z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y35_N13
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_4_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ));

// Location: LCFF_X37_Y35_N17
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_6_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ));

// Location: LCFF_X37_Y35_N25
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_10_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ));

// Location: LCCOMB_X36_Y35_N28
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52927 (
// Equation(s):
// \u_i2c_av_config|nx2692z5  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3  & ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ) # (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 )))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ),
	.datac(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z5 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52927 .lut_mask = 16'hF0C0;
defparam \u_i2c_av_config|ix2692z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N6
cycloneii_lcell_comb \u_i2c_av_config|u0|ix7286z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx7286z2  = (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )) # 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx7286z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix7286z52924 .lut_mask = 16'h7FFF;
defparam \u_i2c_av_config|u0|ix7286z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X23_Y16_N13
cycloneii_lcell_ff u_sine_reg_address_3_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx40964z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_3_));

// Location: LCFF_X23_Y16_N11
cycloneii_lcell_ff u_sine_reg_address_2_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx39967z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_2_));

// Location: LCFF_X23_Y16_N9
cycloneii_lcell_ff u_sine_reg_address_1_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx38970z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_1_));

// Location: LCCOMB_X23_Y16_N8
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52931 (
// Equation(s):
// \u_sine_address_add9_0i1|nx38970z1  = (u_sine_address_1_ & ((\sw~combout [1] & (\u_sine_address_add9_0i1|nx45949z23  & VCC)) # (!\sw~combout [1] & (!\u_sine_address_add9_0i1|nx45949z23 )))) # (!u_sine_address_1_ & ((\sw~combout [1] & 
// (!\u_sine_address_add9_0i1|nx45949z23 )) # (!\sw~combout [1] & ((\u_sine_address_add9_0i1|nx45949z23 ) # (GND)))))
// \u_sine_address_add9_0i1|nx45949z20  = CARRY((u_sine_address_1_ & (!\sw~combout [1] & !\u_sine_address_add9_0i1|nx45949z23 )) # (!u_sine_address_1_ & ((!\u_sine_address_add9_0i1|nx45949z23 ) # (!\sw~combout [1]))))

	.dataa(u_sine_address_1_),
	.datab(\sw~combout [1]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z23 ),
	.combout(\u_sine_address_add9_0i1|nx38970z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z20 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_sine_address_add9_0i1|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N10
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52930 (
// Equation(s):
// \u_sine_address_add9_0i1|nx39967z1  = ((u_sine_address_2_ $ (\sw~combout [2] $ (!\u_sine_address_add9_0i1|nx45949z20 )))) # (GND)
// \u_sine_address_add9_0i1|nx45949z17  = CARRY((u_sine_address_2_ & ((\sw~combout [2]) # (!\u_sine_address_add9_0i1|nx45949z20 ))) # (!u_sine_address_2_ & (\sw~combout [2] & !\u_sine_address_add9_0i1|nx45949z20 )))

	.dataa(u_sine_address_2_),
	.datab(\sw~combout [2]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z20 ),
	.combout(\u_sine_address_add9_0i1|nx39967z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z17 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52930 .lut_mask = 16'h698E;
defparam \u_sine_address_add9_0i1|ix45949z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X23_Y16_N15
cycloneii_lcell_ff u_sine_reg_address_4_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx41961z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_4_));

// Location: LCFF_X23_Y16_N17
cycloneii_lcell_ff u_sine_reg_address_5_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx42958z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_5_));

// Location: LCFF_X23_Y16_N21
cycloneii_lcell_ff u_sine_reg_address_7_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx44952z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_7_));

// Location: LCCOMB_X34_Y27_N12
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1  = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17  $ (VCC)
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16  = CARRY(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 )

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx51271z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932 .lut_mask = 16'h55AA;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y27_N16
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13  & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14  $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13  & 
// (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14  & VCC))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12  = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13  & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ))

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx53265z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930 .lut_mask = 16'hA50A;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X34_Y27_N20
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9  & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10  $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9  & 
// (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10  & VCC))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8  = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9  & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ))

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx55259z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928 .lut_mask = 16'hA50A;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N7
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_1_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ));

// Location: LCCOMB_X37_Y35_N6
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z23 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx52268z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y35_N12
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx55259z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y35_N16
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx57253z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y35_N24
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx17096z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N7
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_3_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_3_ ));

// Location: LCFF_X37_Y33_N11
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_5_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_5_ ));

// Location: LCFF_X37_Y33_N13
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_6_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_6_ ));

// Location: LCCOMB_X36_Y33_N6
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52924 (
// Equation(s):
// \u_i2c_av_config|nx35560z2  = (\u_i2c_av_config|modgen_counter_cont|q_5_  & (\u_i2c_av_config|modgen_counter_cont|q_6_  & (\u_i2c_av_config|modgen_counter_cont|q_4_  & \u_i2c_av_config|modgen_counter_cont|q_7_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_5_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_6_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_4_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_7_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52924 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix35560z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y33_N21
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_10_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_10_ ));

// Location: LCFF_X37_Y33_N31
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_15_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx22081z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_15_ ));

// Location: LCCOMB_X35_Y35_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52924 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_5n5s2f1_1_  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & (((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )) # 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|sdo_5n5s2f1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52924 .lut_mask = 16'h010F;
defparam \u_i2c_av_config|u0|ix22137z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N30
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx22137z2  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & 
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx22137z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52926 .lut_mask = 16'hAA80;
defparam \u_i2c_av_config|u0|ix22137z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N8
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52925 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_5n5s2f1_0_  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & (!\u_i2c_av_config|u0|nx44942z5 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  
// & ((\u_i2c_av_config|u0|nx22137z2 )))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datab(\u_i2c_av_config|u0|nx44942z5 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|nx22137z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|sdo_5n5s2f1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52925 .lut_mask = 16'h0702;
defparam \u_i2c_av_config|u0|ix22137z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N6
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52927 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z5  = (\u_i2c_av_config|u0|nx43379z4 ) # ((\u_i2c_av_config|u0|nx44942z4 ) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(\u_i2c_av_config|u0|nx43379z4 ),
	.datac(\u_i2c_av_config|u0|nx44942z4 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z5 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52927 .lut_mask = 16'hFEFC;
defparam \u_i2c_av_config|u0|ix41315z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N28
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52931 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z9  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1  & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ))))

	.dataa(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.datab(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.datad(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z9 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52931 .lut_mask = 16'h4500;
defparam \u_i2c_av_config|u0|ix41315z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N24
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52930 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z8  = (\u_i2c_av_config|u0|nx41315z3  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1  & \u_i2c_av_config|u0|nx41315z9 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|nx41315z3 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ),
	.datad(\u_i2c_av_config|u0|nx41315z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z8 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52930 .lut_mask = 16'h0C00;
defparam \u_i2c_av_config|u0|ix41315z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N6
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52940 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z18  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 )))

	.dataa(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.datab(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.datad(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z18 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52940 .lut_mask = 16'h0010;
defparam \u_i2c_av_config|u0|ix41315z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N8
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52943 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z21  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & (!\u_i2c_av_config|u0|nx44942z5  & (!\u_i2c_av_config|u0|nx44942z4  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(\u_i2c_av_config|u0|nx44942z5 ),
	.datac(\u_i2c_av_config|u0|nx44942z4 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z21 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52943 .lut_mask = 16'h0100;
defparam \u_i2c_av_config|u0|ix41315z52943 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N2
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52944 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z22  = (\u_i2c_av_config|u0|nx41315z15 ) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & (\u_i2c_av_config|u0|nx41315z14  & !\u_i2c_av_config|u0|nx44942z7 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(\u_i2c_av_config|u0|nx41315z14 ),
	.datac(\u_i2c_av_config|u0|nx41315z15 ),
	.datad(\u_i2c_av_config|u0|nx44942z7 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z22 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52944 .lut_mask = 16'hF0F4;
defparam \u_i2c_av_config|u0|ix41315z52944 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52942 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z20  = ((!\u_i2c_av_config|u0|nx41315z21  & ((\u_i2c_av_config|u0|nx41315z22 ) # (!\u_i2c_av_config|u0|nx41315z4 )))) # (!\u_i2c_av_config|reset_n )

	.dataa(\u_i2c_av_config|reset_n ),
	.datab(\u_i2c_av_config|u0|nx41315z4 ),
	.datac(\u_i2c_av_config|u0|nx41315z21 ),
	.datad(\u_i2c_av_config|u0|nx41315z22 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z20 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52942 .lut_mask = 16'h5F57;
defparam \u_i2c_av_config|u0|ix41315z52942 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N6
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52936 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx54262z1  = (\u_i2c_av_config|modgen_counter_cont|q_3_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z14 )) # (!\u_i2c_av_config|modgen_counter_cont|q_3_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z14 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z13  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z14 ) # (!\u_i2c_av_config|modgen_counter_cont|q_3_ ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z14 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx54262z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z13 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N10
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52934 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx56256z1  = (\u_i2c_av_config|modgen_counter_cont|q_5_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z12 )) # (!\u_i2c_av_config|modgen_counter_cont|q_5_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z12 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z11  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z12 ) # (!\u_i2c_av_config|modgen_counter_cont|q_5_ ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z12 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx56256z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z11 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N12
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52933 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx57253z1  = (\u_i2c_av_config|modgen_counter_cont|q_6_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z11  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_6_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z11  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z10  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_6_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z11 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_6_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z11 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx57253z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z10 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N20
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52929 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx17096z1  = (\u_i2c_av_config|modgen_counter_cont|q_10_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z7  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_10_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z7  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z6  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_10_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z7 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_10_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z7 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx17096z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z6 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N28
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52925 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx21084z1  = (\u_i2c_av_config|modgen_counter_cont|q_14_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z3  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_14_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z3  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z2  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_14_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z3 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_14_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z3 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx21084z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z2 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N30
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52923 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx22081z1  = \u_i2c_av_config|modgen_counter_cont|nx22081z2  $ (\u_i2c_av_config|modgen_counter_cont|q_15_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_15_ ),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z2 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx22081z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: CLKCTRL_G10
cycloneii_clkctrl \aud_bclk_dup0~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,aud_bclk_dup0}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\aud_bclk_dup0~clkctrl_outclk ));
// synopsys translate_off
defparam \aud_bclk_dup0~clkctrl .clock_type = "global clock";
defparam \aud_bclk_dup0~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N30
cycloneii_lcell_comb \audio_out_15_~feeder (
// Equation(s):
// \audio_out_15_~feeder_combout  = audio_out_1n1ss1_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(audio_out_1n1ss1_11_),
	.cin(gnd),
	.combout(\audio_out_15_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \audio_out_15_~feeder .lut_mask = 16'hFF00;
defparam \audio_out_15_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y20_N24
cycloneii_lcell_comb \audio_out_12_~feeder (
// Equation(s):
// \audio_out_12_~feeder_combout  = audio_out_1n1ss1_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(audio_out_1n1ss1_11_),
	.cin(gnd),
	.combout(\audio_out_12_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \audio_out_12_~feeder .lut_mask = 16'hFF00;
defparam \audio_out_12_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_17_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [17]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[17]));
// synopsys translate_off
defparam sw_ibuf_17_.input_async_reset = "none";
defparam sw_ibuf_17_.input_power_up = "low";
defparam sw_ibuf_17_.input_register_mode = "none";
defparam sw_ibuf_17_.input_sync_reset = "none";
defparam sw_ibuf_17_.oe_async_reset = "none";
defparam sw_ibuf_17_.oe_power_up = "low";
defparam sw_ibuf_17_.oe_register_mode = "none";
defparam sw_ibuf_17_.oe_sync_reset = "none";
defparam sw_ibuf_17_.operation_mode = "input";
defparam sw_ibuf_17_.output_async_reset = "none";
defparam sw_ibuf_17_.output_power_up = "low";
defparam sw_ibuf_17_.output_register_mode = "none";
defparam sw_ibuf_17_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[2]));
// synopsys translate_off
defparam sw_ibuf_2_.input_async_reset = "none";
defparam sw_ibuf_2_.input_power_up = "low";
defparam sw_ibuf_2_.input_register_mode = "none";
defparam sw_ibuf_2_.input_sync_reset = "none";
defparam sw_ibuf_2_.oe_async_reset = "none";
defparam sw_ibuf_2_.oe_power_up = "low";
defparam sw_ibuf_2_.oe_register_mode = "none";
defparam sw_ibuf_2_.oe_sync_reset = "none";
defparam sw_ibuf_2_.operation_mode = "input";
defparam sw_ibuf_2_.output_async_reset = "none";
defparam sw_ibuf_2_.output_power_up = "low";
defparam sw_ibuf_2_.output_register_mode = "none";
defparam sw_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[0]));
// synopsys translate_off
defparam sw_ibuf_0_.input_async_reset = "none";
defparam sw_ibuf_0_.input_power_up = "low";
defparam sw_ibuf_0_.input_register_mode = "none";
defparam sw_ibuf_0_.input_sync_reset = "none";
defparam sw_ibuf_0_.oe_async_reset = "none";
defparam sw_ibuf_0_.oe_power_up = "low";
defparam sw_ibuf_0_.oe_register_mode = "none";
defparam sw_ibuf_0_.oe_sync_reset = "none";
defparam sw_ibuf_0_.operation_mode = "input";
defparam sw_ibuf_0_.output_async_reset = "none";
defparam sw_ibuf_0_.output_power_up = "low";
defparam sw_ibuf_0_.output_register_mode = "none";
defparam sw_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[3]));
// synopsys translate_off
defparam sw_ibuf_3_.input_async_reset = "none";
defparam sw_ibuf_3_.input_power_up = "low";
defparam sw_ibuf_3_.input_register_mode = "none";
defparam sw_ibuf_3_.input_sync_reset = "none";
defparam sw_ibuf_3_.oe_async_reset = "none";
defparam sw_ibuf_3_.oe_power_up = "low";
defparam sw_ibuf_3_.oe_register_mode = "none";
defparam sw_ibuf_3_.oe_sync_reset = "none";
defparam sw_ibuf_3_.operation_mode = "input";
defparam sw_ibuf_3_.output_async_reset = "none";
defparam sw_ibuf_3_.output_power_up = "low";
defparam sw_ibuf_3_.output_register_mode = "none";
defparam sw_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N28
cycloneii_lcell_comb ix49625z52929(
// Equation(s):
// nx49625z3 = (\sw~combout [1] & (!\sw~combout [2] & ((\sw~combout [0]) # (\sw~combout [3])))) # (!\sw~combout [1] & ((\sw~combout [2] & ((!\sw~combout [3]))) # (!\sw~combout [2] & (\sw~combout [0] & \sw~combout [3]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [3]),
	.cin(gnd),
	.combout(nx49625z3),
	.cout());
// synopsys translate_off
defparam ix49625z52929.lut_mask = 16'h3264;
defparam ix49625z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[1]));
// synopsys translate_off
defparam sw_ibuf_1_.input_async_reset = "none";
defparam sw_ibuf_1_.input_power_up = "low";
defparam sw_ibuf_1_.input_register_mode = "none";
defparam sw_ibuf_1_.input_sync_reset = "none";
defparam sw_ibuf_1_.oe_async_reset = "none";
defparam sw_ibuf_1_.oe_power_up = "low";
defparam sw_ibuf_1_.oe_register_mode = "none";
defparam sw_ibuf_1_.oe_sync_reset = "none";
defparam sw_ibuf_1_.operation_mode = "input";
defparam sw_ibuf_1_.output_async_reset = "none";
defparam sw_ibuf_1_.output_power_up = "low";
defparam sw_ibuf_1_.output_register_mode = "none";
defparam sw_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N26
cycloneii_lcell_comb ix49625z52925(
// Equation(s):
// nx49625z1 = (\sw~combout [3] & (\sw~combout [0] & (\sw~combout [1] & \sw~combout [2]))) # (!\sw~combout [3] & (!\sw~combout [2] & ((!\sw~combout [1]) # (!\sw~combout [0]))))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [1]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx49625z1),
	.cout());
// synopsys translate_off
defparam ix49625z52925.lut_mask = 16'h8013;
defparam ix49625z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N12
cycloneii_lcell_comb ix55607z52924(
// Equation(s):
// nx55607z1 = (nx49625z2 & (!\sw~combout [17] & (!nx49625z3 & !nx49625z1)))

	.dataa(nx49625z2),
	.datab(\sw~combout [17]),
	.datac(nx49625z3),
	.datad(nx49625z1),
	.cin(gnd),
	.combout(nx55607z1),
	.cout());
// synopsys translate_off
defparam ix55607z52924.lut_mask = 16'h0002;
defparam ix55607z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N24
cycloneii_lcell_comb ix49625z52927(
// Equation(s):
// nx49625z2 = (\sw~combout [2] & (((!\sw~combout [3])))) # (!\sw~combout [2] & ((\sw~combout [1] & (\sw~combout [0] & !\sw~combout [3])) # (!\sw~combout [1] & (!\sw~combout [0] & \sw~combout [3]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [3]),
	.cin(gnd),
	.combout(nx49625z2),
	.cout());
// synopsys translate_off
defparam ix49625z52927.lut_mask = 16'h01EC;
defparam ix49625z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N24
cycloneii_lcell_comb ix49625z52926(
// Equation(s):
// display_freq_2_ = (\sw~combout [17]) # (nx49625z2)

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(nx49625z2),
	.datad(vcc),
	.cin(gnd),
	.combout(display_freq_2_),
	.cout());
// synopsys translate_off
defparam ix49625z52926.lut_mask = 16'hFCFC;
defparam ix49625z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N14
cycloneii_lcell_comb ix49625z52924(
// Equation(s):
// display_freq_3_ = (\sw~combout [17]) # (nx49625z1)

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(nx49625z1),
	.cin(gnd),
	.combout(display_freq_3_),
	.cout());
// synopsys translate_off
defparam ix49625z52924.lut_mask = 16'hFFCC;
defparam ix49625z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N2
cycloneii_lcell_comb ix49625z52931(
// Equation(s):
// nx49625z4 = \sw~combout [3] $ (((\sw~combout [1] & (\sw~combout [2] $ (\sw~combout [0]))) # (!\sw~combout [1] & (!\sw~combout [2] & !\sw~combout [0]))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [3]),
	.cin(gnd),
	.combout(nx49625z4),
	.cout());
// synopsys translate_off
defparam ix49625z52931.lut_mask = 16'hD629;
defparam ix49625z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N0
cycloneii_lcell_comb ix49625z52930(
// Equation(s):
// display_freq_0_ = (!\sw~combout [17] & nx49625z4)

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(nx49625z4),
	.cin(gnd),
	.combout(display_freq_0_),
	.cout());
// synopsys translate_off
defparam ix49625z52930.lut_mask = 16'h3300;
defparam ix49625z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N10
cycloneii_lcell_comb ix55607z52925(
// Equation(s):
// nx55607z2 = (display_freq_0_ & ((display_freq_1_ & (!display_freq_2_ & display_freq_3_)) # (!display_freq_1_ & (display_freq_2_ $ (!display_freq_3_)))))

	.dataa(display_freq_1_),
	.datab(display_freq_2_),
	.datac(display_freq_3_),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(nx55607z2),
	.cout());
// synopsys translate_off
defparam ix55607z52925.lut_mask = 16'h6100;
defparam ix55607z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N28
cycloneii_lcell_comb ix55607z52923(
// Equation(s):
// hex4_dup0_0_ = (nx55607z2) # ((nx55607z1 & (display_freq_2_ & !display_freq_0_)))

	.dataa(nx55607z1),
	.datab(display_freq_2_),
	.datac(nx55607z2),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(hex4_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix55607z52923.lut_mask = 16'hF0F8;
defparam ix55607z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N24
cycloneii_lcell_comb ix49625z52928(
// Equation(s):
// display_freq_1_ = (\sw~combout [17]) # (nx49625z3)

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(nx49625z3),
	.datad(vcc),
	.cin(gnd),
	.combout(display_freq_1_),
	.cout());
// synopsys translate_off
defparam ix49625z52928.lut_mask = 16'hFCFC;
defparam ix49625z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N6
cycloneii_lcell_comb ix54610z52923(
// Equation(s):
// hex4_dup0_1_ = (display_freq_1_ & ((display_freq_0_ & ((display_freq_3_))) # (!display_freq_0_ & (display_freq_2_)))) # (!display_freq_1_ & (display_freq_2_ & (display_freq_3_ $ (display_freq_0_))))

	.dataa(display_freq_1_),
	.datab(display_freq_2_),
	.datac(display_freq_3_),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(hex4_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix54610z52923.lut_mask = 16'hA4C8;
defparam ix54610z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N16
cycloneii_lcell_comb ix53613z52923(
// Equation(s):
// hex4_dup0_2_ = (display_freq_2_ & (display_freq_3_ & ((display_freq_1_) # (!display_freq_0_)))) # (!display_freq_2_ & (display_freq_1_ & (!display_freq_3_ & !display_freq_0_)))

	.dataa(display_freq_1_),
	.datab(display_freq_2_),
	.datac(display_freq_3_),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(hex4_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix53613z52923.lut_mask = 16'h80C2;
defparam ix53613z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N18
cycloneii_lcell_comb ix52616z52923(
// Equation(s):
// hex4_dup0_3_ = (display_freq_0_ & (display_freq_1_ $ ((!display_freq_2_)))) # (!display_freq_0_ & ((display_freq_1_ & (!display_freq_2_ & display_freq_3_)) # (!display_freq_1_ & (display_freq_2_ & !display_freq_3_))))

	.dataa(display_freq_1_),
	.datab(display_freq_2_),
	.datac(display_freq_3_),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(hex4_dup0_3_),
	.cout());
// synopsys translate_off
defparam ix52616z52923.lut_mask = 16'h9924;
defparam ix52616z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N20
cycloneii_lcell_comb ix51619z52923(
// Equation(s):
// hex4_dup0_4_ = (display_freq_1_ & (((!display_freq_3_ & display_freq_0_)))) # (!display_freq_1_ & ((display_freq_2_ & (!display_freq_3_)) # (!display_freq_2_ & ((display_freq_0_)))))

	.dataa(display_freq_1_),
	.datab(display_freq_2_),
	.datac(display_freq_3_),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(hex4_dup0_4_),
	.cout());
// synopsys translate_off
defparam ix51619z52923.lut_mask = 16'h1F04;
defparam ix51619z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N22
cycloneii_lcell_comb ix50622z52923(
// Equation(s):
// hex4_dup0_5_ = (display_freq_1_ & (!display_freq_3_ & ((display_freq_0_) # (!display_freq_2_)))) # (!display_freq_1_ & (display_freq_0_ & (display_freq_2_ $ (!display_freq_3_))))

	.dataa(display_freq_1_),
	.datab(display_freq_2_),
	.datac(display_freq_3_),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(hex4_dup0_5_),
	.cout());
// synopsys translate_off
defparam ix50622z52923.lut_mask = 16'h4B02;
defparam ix50622z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y20_N8
cycloneii_lcell_comb ix49625z52923(
// Equation(s):
// hex4_dup0_6_ = (display_freq_0_ & (!display_freq_3_ & (display_freq_1_ $ (!display_freq_2_)))) # (!display_freq_0_ & (!display_freq_1_ & (display_freq_2_ $ (!display_freq_3_))))

	.dataa(display_freq_1_),
	.datab(display_freq_2_),
	.datac(display_freq_3_),
	.datad(display_freq_0_),
	.cin(gnd),
	.combout(hex4_dup0_6_),
	.cout());
// synopsys translate_off
defparam ix49625z52923.lut_mask = 16'h0941;
defparam ix49625z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N4
cycloneii_lcell_comb ix38664z52929(
// Equation(s):
// nx38664z4 = (\sw~combout [1] & (nx38664z5 & (\sw~combout [3]))) # (!\sw~combout [1] & (((!\sw~combout [2]))))

	.dataa(nx38664z5),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx38664z4),
	.cout());
// synopsys translate_off
defparam ix38664z52929.lut_mask = 16'h880F;
defparam ix38664z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[4]));
// synopsys translate_off
defparam sw_ibuf_4_.input_async_reset = "none";
defparam sw_ibuf_4_.input_power_up = "low";
defparam sw_ibuf_4_.input_register_mode = "none";
defparam sw_ibuf_4_.input_sync_reset = "none";
defparam sw_ibuf_4_.oe_async_reset = "none";
defparam sw_ibuf_4_.oe_power_up = "low";
defparam sw_ibuf_4_.oe_register_mode = "none";
defparam sw_ibuf_4_.oe_sync_reset = "none";
defparam sw_ibuf_4_.operation_mode = "input";
defparam sw_ibuf_4_.output_async_reset = "none";
defparam sw_ibuf_4_.output_power_up = "low";
defparam sw_ibuf_4_.output_register_mode = "none";
defparam sw_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N20
cycloneii_lcell_comb ix38664z52927(
// Equation(s):
// display_freq_6_ = (\sw~combout [17]) # ((\sw~combout [4] & ((nx38664z4))) # (!\sw~combout [4] & (nx38664z3)))

	.dataa(nx38664z3),
	.datab(\sw~combout [17]),
	.datac(nx38664z4),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(display_freq_6_),
	.cout());
// synopsys translate_off
defparam ix38664z52927.lut_mask = 16'hFCEE;
defparam ix38664z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N14
cycloneii_lcell_comb ix38664z52925(
// Equation(s):
// nx38664z1 = (\sw~combout [3] & (!\sw~combout [1] & \sw~combout [2])) # (!\sw~combout [3] & (\sw~combout [1] & !\sw~combout [2]))

	.dataa(\sw~combout [3]),
	.datab(vcc),
	.datac(\sw~combout [1]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx38664z1),
	.cout());
// synopsys translate_off
defparam ix38664z52925.lut_mask = 16'h0A50;
defparam ix38664z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N26
cycloneii_lcell_comb ix38664z52924(
// Equation(s):
// display_freq_7_ = (!\sw~combout [17] & ((\sw~combout [4] & ((nx38664z1))) # (!\sw~combout [4] & (nx38664z2))))

	.dataa(nx38664z2),
	.datab(\sw~combout [17]),
	.datac(nx38664z1),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(display_freq_7_),
	.cout());
// synopsys translate_off
defparam ix38664z52924.lut_mask = 16'h3022;
defparam ix38664z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N4
cycloneii_lcell_comb ix38664z52934(
// Equation(s):
// display_freq_4_ = (\sw~combout [17]) # ((\sw~combout [0] & (nx38664z8)) # (!\sw~combout [0] & ((!\sw~combout [4]))))

	.dataa(nx38664z8),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [17]),
	.datad(\sw~combout [0]),
	.cin(gnd),
	.combout(display_freq_4_),
	.cout());
// synopsys translate_off
defparam ix38664z52934.lut_mask = 16'hFAF3;
defparam ix38664z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N18
cycloneii_lcell_comb ix38664z52933(
// Equation(s):
// nx38664z7 = (\sw~combout [3] & ((\sw~combout [1] & (!\sw~combout [2] & \sw~combout [0])) # (!\sw~combout [1] & (\sw~combout [2] & !\sw~combout [0])))) # (!\sw~combout [3] & (\sw~combout [1] $ (((\sw~combout [0])))))

	.dataa(\sw~combout [1]),
	.datab(\sw~combout [2]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [3]),
	.cin(gnd),
	.combout(nx38664z7),
	.cout());
// synopsys translate_off
defparam ix38664z52933.lut_mask = 16'h245A;
defparam ix38664z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N6
cycloneii_lcell_comb ix38664z52931(
// Equation(s):
// display_freq_5_ = (!\sw~combout [17] & ((\sw~combout [4] & (nx38664z6)) # (!\sw~combout [4] & ((nx38664z7)))))

	.dataa(nx38664z6),
	.datab(\sw~combout [17]),
	.datac(nx38664z7),
	.datad(\sw~combout [4]),
	.cin(gnd),
	.combout(display_freq_5_),
	.cout());
// synopsys translate_off
defparam ix38664z52931.lut_mask = 16'h2230;
defparam ix38664z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N30
cycloneii_lcell_comb ix32682z52923(
// Equation(s):
// hex5_dup0_0_ = (display_freq_6_ & (!display_freq_5_ & (display_freq_7_ $ (!display_freq_4_)))) # (!display_freq_6_ & (display_freq_4_ & (display_freq_7_ $ (!display_freq_5_))))

	.dataa(display_freq_6_),
	.datab(display_freq_7_),
	.datac(display_freq_4_),
	.datad(display_freq_5_),
	.cin(gnd),
	.combout(hex5_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix32682z52923.lut_mask = 16'h4092;
defparam ix32682z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N0
cycloneii_lcell_comb ix33679z52923(
// Equation(s):
// hex5_dup0_1_ = (display_freq_7_ & ((display_freq_4_ & ((display_freq_5_))) # (!display_freq_4_ & (display_freq_6_)))) # (!display_freq_7_ & (display_freq_6_ & (display_freq_4_ $ (display_freq_5_))))

	.dataa(display_freq_6_),
	.datab(display_freq_7_),
	.datac(display_freq_4_),
	.datad(display_freq_5_),
	.cin(gnd),
	.combout(hex5_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix33679z52923.lut_mask = 16'hCA28;
defparam ix33679z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N2
cycloneii_lcell_comb ix34676z52923(
// Equation(s):
// hex5_dup0_2_ = (display_freq_6_ & (display_freq_7_ & ((display_freq_5_) # (!display_freq_4_)))) # (!display_freq_6_ & (!display_freq_7_ & (!display_freq_4_ & display_freq_5_)))

	.dataa(display_freq_6_),
	.datab(display_freq_7_),
	.datac(display_freq_4_),
	.datad(display_freq_5_),
	.cin(gnd),
	.combout(hex5_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix34676z52923.lut_mask = 16'h8908;
defparam ix34676z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N12
cycloneii_lcell_comb ix35673z52923(
// Equation(s):
// hex5_dup0_3_ = (display_freq_4_ & (display_freq_6_ $ (((!display_freq_5_))))) # (!display_freq_4_ & ((display_freq_6_ & (!display_freq_7_ & !display_freq_5_)) # (!display_freq_6_ & (display_freq_7_ & display_freq_5_))))

	.dataa(display_freq_6_),
	.datab(display_freq_7_),
	.datac(display_freq_4_),
	.datad(display_freq_5_),
	.cin(gnd),
	.combout(hex5_dup0_3_),
	.cout());
// synopsys translate_off
defparam ix35673z52923.lut_mask = 16'hA452;
defparam ix35673z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N14
cycloneii_lcell_comb ix36670z52923(
// Equation(s):
// hex5_dup0_4_ = (display_freq_5_ & (((!display_freq_7_ & display_freq_4_)))) # (!display_freq_5_ & ((display_freq_6_ & (!display_freq_7_)) # (!display_freq_6_ & ((display_freq_4_)))))

	.dataa(display_freq_6_),
	.datab(display_freq_7_),
	.datac(display_freq_4_),
	.datad(display_freq_5_),
	.cin(gnd),
	.combout(hex5_dup0_4_),
	.cout());
// synopsys translate_off
defparam ix36670z52923.lut_mask = 16'h3072;
defparam ix36670z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N8
cycloneii_lcell_comb ix37667z52923(
// Equation(s):
// hex5_dup0_5_ = (display_freq_6_ & (display_freq_4_ & (display_freq_7_ $ (display_freq_5_)))) # (!display_freq_6_ & (!display_freq_7_ & ((display_freq_4_) # (display_freq_5_))))

	.dataa(display_freq_6_),
	.datab(display_freq_7_),
	.datac(display_freq_4_),
	.datad(display_freq_5_),
	.cin(gnd),
	.combout(hex5_dup0_5_),
	.cout());
// synopsys translate_off
defparam ix37667z52923.lut_mask = 16'h3190;
defparam ix37667z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N18
cycloneii_lcell_comb ix38664z52923(
// Equation(s):
// hex5_dup0_6_ = (display_freq_4_ & (!display_freq_7_ & (display_freq_6_ $ (!display_freq_5_)))) # (!display_freq_4_ & (!display_freq_5_ & (display_freq_6_ $ (!display_freq_7_))))

	.dataa(display_freq_6_),
	.datab(display_freq_7_),
	.datac(display_freq_4_),
	.datad(display_freq_5_),
	.cin(gnd),
	.combout(hex5_dup0_6_),
	.cout());
// synopsys translate_off
defparam ix38664z52923.lut_mask = 16'h2019;
defparam ix38664z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[6]));
// synopsys translate_off
defparam sw_ibuf_6_.input_async_reset = "none";
defparam sw_ibuf_6_.input_power_up = "low";
defparam sw_ibuf_6_.input_register_mode = "none";
defparam sw_ibuf_6_.input_sync_reset = "none";
defparam sw_ibuf_6_.oe_async_reset = "none";
defparam sw_ibuf_6_.oe_power_up = "low";
defparam sw_ibuf_6_.oe_register_mode = "none";
defparam sw_ibuf_6_.oe_sync_reset = "none";
defparam sw_ibuf_6_.operation_mode = "input";
defparam sw_ibuf_6_.output_async_reset = "none";
defparam sw_ibuf_6_.output_power_up = "low";
defparam sw_ibuf_6_.output_register_mode = "none";
defparam sw_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N22
cycloneii_lcell_comb ix4119z52937(
// Equation(s):
// nx4119z11 = (!\sw~combout [4] & (((!\sw~combout [0] & !\sw~combout [2])) # (!\sw~combout [3])))

	.dataa(\sw~combout [3]),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [0]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z11),
	.cout());
// synopsys translate_off
defparam ix4119z52937.lut_mask = 16'h1113;
defparam ix4119z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N0
cycloneii_lcell_comb ix4119z52935(
// Equation(s):
// nx4119z9 = (\sw~combout [1] & (nx4119z10)) # (!\sw~combout [1] & (((!\sw~combout [6] & nx4119z11))))

	.dataa(nx4119z10),
	.datab(\sw~combout [6]),
	.datac(\sw~combout [1]),
	.datad(nx4119z11),
	.cin(gnd),
	.combout(nx4119z9),
	.cout());
// synopsys translate_off
defparam ix4119z52935.lut_mask = 16'hA3A0;
defparam ix4119z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[5]));
// synopsys translate_off
defparam sw_ibuf_5_.input_async_reset = "none";
defparam sw_ibuf_5_.input_power_up = "low";
defparam sw_ibuf_5_.input_register_mode = "none";
defparam sw_ibuf_5_.input_sync_reset = "none";
defparam sw_ibuf_5_.oe_async_reset = "none";
defparam sw_ibuf_5_.oe_power_up = "low";
defparam sw_ibuf_5_.oe_register_mode = "none";
defparam sw_ibuf_5_.oe_sync_reset = "none";
defparam sw_ibuf_5_.operation_mode = "input";
defparam sw_ibuf_5_.output_async_reset = "none";
defparam sw_ibuf_5_.output_power_up = "low";
defparam sw_ibuf_5_.output_register_mode = "none";
defparam sw_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N18
cycloneii_lcell_comb ix4119z52933(
// Equation(s):
// display_freq_9_ = (!\sw~combout [17] & ((\sw~combout [5] & ((nx4119z9))) # (!\sw~combout [5] & (nx4119z8))))

	.dataa(nx4119z8),
	.datab(nx4119z9),
	.datac(\sw~combout [5]),
	.datad(\sw~combout [17]),
	.cin(gnd),
	.combout(display_freq_9_),
	.cout());
// synopsys translate_off
defparam ix4119z52933.lut_mask = 16'h00CA;
defparam ix4119z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N16
cycloneii_lcell_comb ix4119z52928(
// Equation(s):
// nx4119z4 = (\sw~combout [6] & !\sw~combout [17])

	.dataa(vcc),
	.datab(vcc),
	.datac(\sw~combout [6]),
	.datad(\sw~combout [17]),
	.cin(gnd),
	.combout(nx4119z4),
	.cout());
// synopsys translate_off
defparam ix4119z52928.lut_mask = 16'h00F0;
defparam ix4119z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N0
cycloneii_lcell_comb ix4119z52927(
// Equation(s):
// nx4119z3 = (!\sw~combout [0] & (\sw~combout [5] & (!\sw~combout [2] & !\sw~combout [1])))

	.dataa(\sw~combout [0]),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [2]),
	.datad(\sw~combout [1]),
	.cin(gnd),
	.combout(nx4119z3),
	.cout());
// synopsys translate_off
defparam ix4119z52927.lut_mask = 16'h0004;
defparam ix4119z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N30
cycloneii_lcell_comb ix4119z52926(
// Equation(s):
// nx4119z2 = (\sw~combout [4] & (!\sw~combout [5])) # (!\sw~combout [4] & ((nx4119z3)))

	.dataa(vcc),
	.datab(\sw~combout [4]),
	.datac(\sw~combout [5]),
	.datad(nx4119z3),
	.cin(gnd),
	.combout(nx4119z2),
	.cout());
// synopsys translate_off
defparam ix4119z52926.lut_mask = 16'h3F0C;
defparam ix4119z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N24
cycloneii_lcell_comb ix4119z52924(
// Equation(s):
// display_freq_11_ = (nx4119z4 & ((\sw~combout [3] & ((nx4119z2))) # (!\sw~combout [3] & (nx4119z1))))

	.dataa(nx4119z1),
	.datab(nx4119z4),
	.datac(\sw~combout [3]),
	.datad(nx4119z2),
	.cin(gnd),
	.combout(display_freq_11_),
	.cout());
// synopsys translate_off
defparam ix4119z52924.lut_mask = 16'hC808;
defparam ix4119z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N26
cycloneii_lcell_comb ix4119z52930(
// Equation(s):
// nx4119z5 = (!\sw~combout [5] & (((!\sw~combout [3] & !\sw~combout [2])) # (!\sw~combout [4])))

	.dataa(\sw~combout [4]),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [5]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z5),
	.cout());
// synopsys translate_off
defparam ix4119z52930.lut_mask = 16'h0507;
defparam ix4119z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N22
cycloneii_lcell_comb ix4119z52929(
// Equation(s):
// display_freq_10_ = (!\sw~combout [17] & ((nx4119z6) # ((\sw~combout [6] & nx4119z5))))

	.dataa(nx4119z6),
	.datab(\sw~combout [17]),
	.datac(\sw~combout [6]),
	.datad(nx4119z5),
	.cin(gnd),
	.combout(display_freq_10_),
	.cout());
// synopsys translate_off
defparam ix4119z52929.lut_mask = 16'h3222;
defparam ix4119z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N8
cycloneii_lcell_comb ix10101z52925(
// Equation(s):
// nx10101z2 = (display_freq_8_ & (display_freq_9_ & (display_freq_11_ & !display_freq_10_))) # (!display_freq_8_ & (!display_freq_9_ & (!display_freq_11_ & display_freq_10_)))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(nx10101z2),
	.cout());
// synopsys translate_off
defparam ix10101z52925.lut_mask = 16'h0180;
defparam ix10101z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N30
cycloneii_lcell_comb ix10101z52924(
// Equation(s):
// nx10101z1 = (display_freq_8_ & (!display_freq_9_ & (display_freq_11_ $ (!display_freq_10_))))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(nx10101z1),
	.cout());
// synopsys translate_off
defparam ix10101z52924.lut_mask = 16'h2002;
defparam ix10101z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N10
cycloneii_lcell_comb ix10101z52923(
// Equation(s):
// hex6_dup0_0_ = (nx10101z2) # (nx10101z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx10101z2),
	.datad(nx10101z1),
	.cin(gnd),
	.combout(hex6_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix10101z52923.lut_mask = 16'hFFF0;
defparam ix10101z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y17_N10
cycloneii_lcell_comb ix4119z52939(
// Equation(s):
// nx4119z12 = \sw~combout [5] $ (((\sw~combout [4] & !\sw~combout [2])))

	.dataa(vcc),
	.datab(\sw~combout [5]),
	.datac(\sw~combout [4]),
	.datad(\sw~combout [2]),
	.cin(gnd),
	.combout(nx4119z12),
	.cout());
// synopsys translate_off
defparam ix4119z52939.lut_mask = 16'hCC3C;
defparam ix4119z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N12
cycloneii_lcell_comb ix4119z52938(
// Equation(s):
// display_freq_8_ = (nx4119z13) # ((\sw~combout [17]) # ((nx4119z12 & !\sw~combout [3])))

	.dataa(nx4119z13),
	.datab(nx4119z12),
	.datac(\sw~combout [3]),
	.datad(\sw~combout [17]),
	.cin(gnd),
	.combout(display_freq_8_),
	.cout());
// synopsys translate_off
defparam ix4119z52938.lut_mask = 16'hFFAE;
defparam ix4119z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N28
cycloneii_lcell_comb ix9104z52923(
// Equation(s):
// hex6_dup0_1_ = (display_freq_9_ & ((display_freq_8_ & (display_freq_11_)) # (!display_freq_8_ & ((display_freq_10_))))) # (!display_freq_9_ & (display_freq_10_ & (display_freq_8_ $ (display_freq_11_))))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(hex6_dup0_1_),
	.cout());
// synopsys translate_off
defparam ix9104z52923.lut_mask = 16'hD680;
defparam ix9104z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N6
cycloneii_lcell_comb ix8107z52923(
// Equation(s):
// hex6_dup0_2_ = (display_freq_11_ & (display_freq_10_ & ((display_freq_9_) # (!display_freq_8_)))) # (!display_freq_11_ & (!display_freq_8_ & (display_freq_9_ & !display_freq_10_)))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(hex6_dup0_2_),
	.cout());
// synopsys translate_off
defparam ix8107z52923.lut_mask = 16'hD004;
defparam ix8107z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N0
cycloneii_lcell_comb ix7110z52923(
// Equation(s):
// hex6_dup0_3_ = (display_freq_8_ & (display_freq_9_ $ (((!display_freq_10_))))) # (!display_freq_8_ & ((display_freq_9_ & (display_freq_11_ & !display_freq_10_)) # (!display_freq_9_ & (!display_freq_11_ & display_freq_10_))))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(hex6_dup0_3_),
	.cout());
// synopsys translate_off
defparam ix7110z52923.lut_mask = 16'h8962;
defparam ix7110z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N2
cycloneii_lcell_comb ix6113z52923(
// Equation(s):
// hex6_dup0_4_ = (display_freq_9_ & (display_freq_8_ & (!display_freq_11_))) # (!display_freq_9_ & ((display_freq_10_ & ((!display_freq_11_))) # (!display_freq_10_ & (display_freq_8_))))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(hex6_dup0_4_),
	.cout());
// synopsys translate_off
defparam ix6113z52923.lut_mask = 16'h0B2A;
defparam ix6113z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N4
cycloneii_lcell_comb ix5116z52923(
// Equation(s):
// hex6_dup0_5_ = (display_freq_8_ & (display_freq_11_ $ (((display_freq_9_) # (!display_freq_10_))))) # (!display_freq_8_ & (display_freq_9_ & (!display_freq_11_ & !display_freq_10_)))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(hex6_dup0_5_),
	.cout());
// synopsys translate_off
defparam ix5116z52923.lut_mask = 16'h280E;
defparam ix5116z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X21_Y17_N14
cycloneii_lcell_comb ix4119z52923(
// Equation(s):
// hex6_dup0_6_ = (display_freq_8_ & (!display_freq_11_ & (display_freq_9_ $ (!display_freq_10_)))) # (!display_freq_8_ & (!display_freq_9_ & (display_freq_11_ $ (!display_freq_10_))))

	.dataa(display_freq_8_),
	.datab(display_freq_9_),
	.datac(display_freq_11_),
	.datad(display_freq_10_),
	.cin(gnd),
	.combout(hex6_dup0_6_),
	.cout());
// synopsys translate_off
defparam ix4119z52923.lut_mask = 16'h1803;
defparam ix4119z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N30
cycloneii_lcell_comb ix17637z52924(
// Equation(s):
// nx17637z1 = (\sw~combout [4] & (((\sw~combout [5])))) # (!\sw~combout [4] & (nx17637z2 & (\sw~combout [3])))

	.dataa(nx17637z2),
	.datab(\sw~combout [3]),
	.datac(\sw~combout [4]),
	.datad(\sw~combout [5]),
	.cin(gnd),
	.combout(nx17637z1),
	.cout());
// synopsys translate_off
defparam ix17637z52924.lut_mask = 16'hF808;
defparam ix17637z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y16_N16
cycloneii_lcell_comb ix17637z52923(
// Equation(s):
// hex7_dup0_0_ = (!\sw~combout [17] & (\sw~combout [6] & nx17637z1))

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(\sw~combout [6]),
	.datad(nx17637z1),
	.cin(gnd),
	.combout(hex7_dup0_0_),
	.cout());
// synopsys translate_off
defparam ix17637z52923.lut_mask = 16'h3000;
defparam ix17637z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io clock_27_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\clock_27~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clock_27));
// synopsys translate_off
defparam clock_27_ibuf.input_async_reset = "none";
defparam clock_27_ibuf.input_power_up = "low";
defparam clock_27_ibuf.input_register_mode = "none";
defparam clock_27_ibuf.input_sync_reset = "none";
defparam clock_27_ibuf.oe_async_reset = "none";
defparam clock_27_ibuf.oe_power_up = "low";
defparam clock_27_ibuf.oe_register_mode = "none";
defparam clock_27_ibuf.oe_sync_reset = "none";
defparam clock_27_ibuf.operation_mode = "input";
defparam clock_27_ibuf.output_async_reset = "none";
defparam clock_27_ibuf.output_power_up = "low";
defparam clock_27_ibuf.output_register_mode = "none";
defparam clock_27_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PLL_3
cycloneii_pll \u_audio_dac_p1_altpll|pll (
	.ena(vcc),
	.clkswitch(gnd),
	.areset(gnd),
	.pfdena(vcc),
	.testclearlock(gnd),
	.sbdin(gnd),
	.inclk({gnd,\clock_27~combout }),
	.locked(),
	.testupout(),
	.testdownout(),
	.sbdout(),
	.clk(\u_audio_dac_p1_altpll|pll_CLK_bus ));
// synopsys translate_off
defparam \u_audio_dac_p1_altpll|pll .bandwidth = 0;
defparam \u_audio_dac_p1_altpll|pll .bandwidth_type = "low";
defparam \u_audio_dac_p1_altpll|pll .c0_high = 15;
defparam \u_audio_dac_p1_altpll|pll .c0_initial = 1;
defparam \u_audio_dac_p1_altpll|pll .c0_low = 15;
defparam \u_audio_dac_p1_altpll|pll .c0_mode = "even";
defparam \u_audio_dac_p1_altpll|pll .c0_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .c1_mode = "bypass";
defparam \u_audio_dac_p1_altpll|pll .c1_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .c2_mode = "bypass";
defparam \u_audio_dac_p1_altpll|pll .c2_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .charge_pump_current = 80;
defparam \u_audio_dac_p1_altpll|pll .clk0_duty_cycle = 50;
defparam \u_audio_dac_p1_altpll|pll .clk0_phase_shift = "0";
defparam \u_audio_dac_p1_altpll|pll .clk1_counter = "c0";
defparam \u_audio_dac_p1_altpll|pll .clk1_divide_by = 3;
defparam \u_audio_dac_p1_altpll|pll .clk1_duty_cycle = 50;
defparam \u_audio_dac_p1_altpll|pll .clk1_multiply_by = 2;
defparam \u_audio_dac_p1_altpll|pll .clk1_phase_shift = "0";
defparam \u_audio_dac_p1_altpll|pll .clk2_duty_cycle = 50;
defparam \u_audio_dac_p1_altpll|pll .clk2_phase_shift = "0";
defparam \u_audio_dac_p1_altpll|pll .compensate_clock = "clk1";
defparam \u_audio_dac_p1_altpll|pll .gate_lock_counter = 0;
defparam \u_audio_dac_p1_altpll|pll .gate_lock_signal = "no";
defparam \u_audio_dac_p1_altpll|pll .inclk0_input_frequency = 37037;
defparam \u_audio_dac_p1_altpll|pll .inclk1_input_frequency = 37037;
defparam \u_audio_dac_p1_altpll|pll .invalid_lock_multiplier = 5;
defparam \u_audio_dac_p1_altpll|pll .loop_filter_c = 3;
defparam \u_audio_dac_p1_altpll|pll .loop_filter_r = " 2.500000";
defparam \u_audio_dac_p1_altpll|pll .m = 20;
defparam \u_audio_dac_p1_altpll|pll .m_initial = 1;
defparam \u_audio_dac_p1_altpll|pll .m_ph = 0;
defparam \u_audio_dac_p1_altpll|pll .n = 1;
defparam \u_audio_dac_p1_altpll|pll .operation_mode = "normal";
defparam \u_audio_dac_p1_altpll|pll .pfd_max = 100000;
defparam \u_audio_dac_p1_altpll|pll .pfd_min = 2484;
defparam \u_audio_dac_p1_altpll|pll .pll_compensation_delay = 5840;
defparam \u_audio_dac_p1_altpll|pll .self_reset_on_gated_loss_lock = "off";
defparam \u_audio_dac_p1_altpll|pll .sim_gate_lock_device_behavior = "off";
defparam \u_audio_dac_p1_altpll|pll .simulation_type = "timing";
defparam \u_audio_dac_p1_altpll|pll .valid_lock_multiplier = 1;
defparam \u_audio_dac_p1_altpll|pll .vco_center = 1333;
defparam \u_audio_dac_p1_altpll|pll .vco_max = 2000;
defparam \u_audio_dac_p1_altpll|pll .vco_min = 1000;
// synopsys translate_on

// Location: CLKCTRL_G11
cycloneii_clkctrl \u_audio_dac_p1_altpll|_clk1~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\u_audio_dac_p1_altpll|_clk1 }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ));
// synopsys translate_off
defparam \u_audio_dac_p1_altpll|_clk1~clkctrl .clock_type = "global clock";
defparam \u_audio_dac_p1_altpll|_clk1~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X28_Y20_N12
cycloneii_lcell_comb ix51811z52923(
// Equation(s):
// NOT_bit_position_0_ = !bit_position_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(bit_position_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(NOT_bit_position_0_),
	.cout());
// synopsys translate_off
defparam ix51811z52923.lut_mask = 16'h0F0F;
defparam ix51811z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y20_N13
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_0_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(NOT_bit_position_0_),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_0_));

// Location: LCCOMB_X28_Y20_N18
cycloneii_lcell_comb ix50814z52923(
// Equation(s):
// nx50814z1 = bit_position_1_ $ (bit_position_0_)

	.dataa(vcc),
	.datab(vcc),
	.datac(bit_position_1_),
	.datad(bit_position_0_),
	.cin(gnd),
	.combout(nx50814z1),
	.cout());
// synopsys translate_off
defparam ix50814z52923.lut_mask = 16'h0FF0;
defparam ix50814z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y20_N19
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_1_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(nx50814z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_1_));

// Location: LCCOMB_X28_Y20_N6
cycloneii_lcell_comb ix49817z52923(
// Equation(s):
// nx49817z1 = bit_position_2_ $ (((bit_position_1_ & bit_position_0_)))

	.dataa(vcc),
	.datab(bit_position_1_),
	.datac(bit_position_2_),
	.datad(bit_position_0_),
	.cin(gnd),
	.combout(nx49817z1),
	.cout());
// synopsys translate_off
defparam ix49817z52923.lut_mask = 16'h3CF0;
defparam ix49817z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y20_N7
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_2_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(nx49817z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_2_));

// Location: LCCOMB_X34_Y27_N14
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ))

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z16 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z14 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931 .lut_mask = 16'h3C3F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io key_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\key~combout [0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[0]));
// synopsys translate_off
defparam key_ibuf_0_.input_async_reset = "none";
defparam key_ibuf_0_.input_power_up = "low";
defparam key_ibuf_0_.input_register_mode = "none";
defparam key_ibuf_0_.input_sync_reset = "none";
defparam key_ibuf_0_.oe_async_reset = "none";
defparam key_ibuf_0_.oe_power_up = "low";
defparam key_ibuf_0_.oe_register_mode = "none";
defparam key_ibuf_0_.oe_sync_reset = "none";
defparam key_ibuf_0_.operation_mode = "input";
defparam key_ibuf_0_.output_async_reset = "none";
defparam key_ibuf_0_.output_power_up = "low";
defparam key_ibuf_0_.output_register_mode = "none";
defparam key_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X35_Y27_N14
cycloneii_lcell_comb ix48238z52923(
// Equation(s):
// nx48238z1 = (!\key~combout [0]) # (!nx50205z2)

	.dataa(vcc),
	.datab(nx50205z2),
	.datac(vcc),
	.datad(\key~combout [0]),
	.cin(gnd),
	.combout(nx48238z1),
	.cout());
// synopsys translate_off
defparam ix48238z52923.lut_mask = 16'h33FF;
defparam ix48238z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y27_N15
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_1_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z15 ));

// Location: LCCOMB_X34_Y27_N18
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ))

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z12 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z10 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929 .lut_mask = 16'h3C3F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y27_N19
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_3_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z11 ));

// Location: LCCOMB_X34_Y27_N22
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ))

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z8 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927 .lut_mask = 16'h3C3F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y27_N23
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_5_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z7 ));

// Location: LCCOMB_X34_Y27_N24
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5  & (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6  $ (GND))) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5  & 
// (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6  & VCC))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4  = CARRY((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5  & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ))

	.dataa(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z6 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926 .lut_mask = 16'hA50A;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X34_Y27_N26
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1  = (\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3  & (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3  & 
// ((\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ) # (GND)))
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2  = CARRY((!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ))

	.dataa(vcc),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z4 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1 ),
	.cout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2 ));
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925 .lut_mask = 16'h3C3F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y27_N27
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_7_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ));

// Location: LCFF_X34_Y27_N25
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_6_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ));

// Location: LCCOMB_X34_Y27_N28
cycloneii_lcell_comb \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923 (
// Equation(s):
// \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1  = \u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2  $ (!\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ),
	.cin(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z2 ),
	.combout(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1 ),
	.cout());
// synopsys translate_off
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923 .lut_mask = 16'hF00F;
defparam \u_audio_dac_modgen_counter_lrck_1x_div|ix59247z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y27_N29
cycloneii_lcell_ff \u_audio_dac_modgen_counter_lrck_1x_div|reg_q_8_ (
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(nx48238z1),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ));

// Location: LCCOMB_X35_Y27_N22
cycloneii_lcell_comb ix50205z52924(
// Equation(s):
// nx50205z2 = (!\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1  & (((nx50205z3 & !\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 )) # (!\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 )))

	.dataa(nx50205z3),
	.datab(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z3 ),
	.datac(\u_audio_dac_modgen_counter_lrck_1x_div|nx59247z5 ),
	.datad(\u_audio_dac_modgen_counter_lrck_1x_div|nx2038z1 ),
	.cin(gnd),
	.combout(nx50205z2),
	.cout());
// synopsys translate_off
defparam ix50205z52924.lut_mask = 16'h003B;
defparam ix50205z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y27_N0
cycloneii_lcell_comb ix50205z52923(
// Equation(s):
// nx50205z1 = aud_adclrck_dup0 $ (!nx50205z2)

	.dataa(vcc),
	.datab(vcc),
	.datac(aud_adclrck_dup0),
	.datad(nx50205z2),
	.cin(gnd),
	.combout(nx50205z1),
	.cout());
// synopsys translate_off
defparam ix50205z52923.lut_mask = 16'hF00F;
defparam ix50205z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y27_N1
cycloneii_lcell_ff u_audio_dac_reg_lrck_1x(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx50205z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\key~combout [0]),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(aud_adclrck_dup0));

// Location: CLKCTRL_G8
cycloneii_clkctrl \aud_adclrck_dup0~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,aud_adclrck_dup0}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\aud_adclrck_dup0~clkctrl_outclk ));
// synopsys translate_off
defparam \aud_adclrck_dup0~clkctrl .clock_type = "global clock";
defparam \aud_adclrck_dup0~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X27_Y17_N10
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52933 (
// Equation(s):
// \u_noise_modgen_counter_address|nx51271z1  = \u_noise_modgen_counter_address|q_0_  $ (VCC)
// \u_noise_modgen_counter_address|nx60244z10  = CARRY(\u_noise_modgen_counter_address|q_0_ )

	.dataa(\u_noise_modgen_counter_address|q_0_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_noise_modgen_counter_address|nx51271z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z10 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52933 .lut_mask = 16'h55AA;
defparam \u_noise_modgen_counter_address|ix60244z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y17_N11
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_0_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_0_ ));

// Location: LCCOMB_X27_Y17_N12
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52932 (
// Equation(s):
// \u_noise_modgen_counter_address|nx52268z1  = (\u_noise_modgen_counter_address|q_1_  & (!\u_noise_modgen_counter_address|nx60244z10 )) # (!\u_noise_modgen_counter_address|q_1_  & ((\u_noise_modgen_counter_address|nx60244z10 ) # (GND)))
// \u_noise_modgen_counter_address|nx60244z9  = CARRY((!\u_noise_modgen_counter_address|nx60244z10 ) # (!\u_noise_modgen_counter_address|q_1_ ))

	.dataa(\u_noise_modgen_counter_address|q_1_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z10 ),
	.combout(\u_noise_modgen_counter_address|nx52268z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z9 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52932 .lut_mask = 16'h5A5F;
defparam \u_noise_modgen_counter_address|ix60244z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N13
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_1_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_1_ ));

// Location: LCCOMB_X27_Y17_N14
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52931 (
// Equation(s):
// \u_noise_modgen_counter_address|nx53265z1  = (\u_noise_modgen_counter_address|q_2_  & (\u_noise_modgen_counter_address|nx60244z9  $ (GND))) # (!\u_noise_modgen_counter_address|q_2_  & (!\u_noise_modgen_counter_address|nx60244z9  & VCC))
// \u_noise_modgen_counter_address|nx60244z8  = CARRY((\u_noise_modgen_counter_address|q_2_  & !\u_noise_modgen_counter_address|nx60244z9 ))

	.dataa(vcc),
	.datab(\u_noise_modgen_counter_address|q_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z9 ),
	.combout(\u_noise_modgen_counter_address|nx53265z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z8 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52931 .lut_mask = 16'hC30C;
defparam \u_noise_modgen_counter_address|ix60244z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N15
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_2_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_2_ ));

// Location: LCCOMB_X27_Y17_N16
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52930 (
// Equation(s):
// \u_noise_modgen_counter_address|nx54262z1  = (\u_noise_modgen_counter_address|q_3_  & (!\u_noise_modgen_counter_address|nx60244z8 )) # (!\u_noise_modgen_counter_address|q_3_  & ((\u_noise_modgen_counter_address|nx60244z8 ) # (GND)))
// \u_noise_modgen_counter_address|nx60244z7  = CARRY((!\u_noise_modgen_counter_address|nx60244z8 ) # (!\u_noise_modgen_counter_address|q_3_ ))

	.dataa(\u_noise_modgen_counter_address|q_3_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z8 ),
	.combout(\u_noise_modgen_counter_address|nx54262z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z7 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52930 .lut_mask = 16'h5A5F;
defparam \u_noise_modgen_counter_address|ix60244z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N17
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_3_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_3_ ));

// Location: LCCOMB_X27_Y17_N18
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52929 (
// Equation(s):
// \u_noise_modgen_counter_address|nx55259z1  = (\u_noise_modgen_counter_address|q_4_  & (\u_noise_modgen_counter_address|nx60244z7  $ (GND))) # (!\u_noise_modgen_counter_address|q_4_  & (!\u_noise_modgen_counter_address|nx60244z7  & VCC))
// \u_noise_modgen_counter_address|nx60244z6  = CARRY((\u_noise_modgen_counter_address|q_4_  & !\u_noise_modgen_counter_address|nx60244z7 ))

	.dataa(vcc),
	.datab(\u_noise_modgen_counter_address|q_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z7 ),
	.combout(\u_noise_modgen_counter_address|nx55259z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z6 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52929 .lut_mask = 16'hC30C;
defparam \u_noise_modgen_counter_address|ix60244z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N19
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_4_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_4_ ));

// Location: LCCOMB_X27_Y17_N20
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52928 (
// Equation(s):
// \u_noise_modgen_counter_address|nx56256z1  = (\u_noise_modgen_counter_address|q_5_  & (!\u_noise_modgen_counter_address|nx60244z6 )) # (!\u_noise_modgen_counter_address|q_5_  & ((\u_noise_modgen_counter_address|nx60244z6 ) # (GND)))
// \u_noise_modgen_counter_address|nx60244z5  = CARRY((!\u_noise_modgen_counter_address|nx60244z6 ) # (!\u_noise_modgen_counter_address|q_5_ ))

	.dataa(\u_noise_modgen_counter_address|q_5_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z6 ),
	.combout(\u_noise_modgen_counter_address|nx56256z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z5 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52928 .lut_mask = 16'h5A5F;
defparam \u_noise_modgen_counter_address|ix60244z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N21
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_5_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_5_ ));

// Location: LCCOMB_X27_Y17_N22
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52927 (
// Equation(s):
// \u_noise_modgen_counter_address|nx57253z1  = (\u_noise_modgen_counter_address|q_6_  & (\u_noise_modgen_counter_address|nx60244z5  $ (GND))) # (!\u_noise_modgen_counter_address|q_6_  & (!\u_noise_modgen_counter_address|nx60244z5  & VCC))
// \u_noise_modgen_counter_address|nx60244z4  = CARRY((\u_noise_modgen_counter_address|q_6_  & !\u_noise_modgen_counter_address|nx60244z5 ))

	.dataa(vcc),
	.datab(\u_noise_modgen_counter_address|q_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z5 ),
	.combout(\u_noise_modgen_counter_address|nx57253z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z4 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52927 .lut_mask = 16'hC30C;
defparam \u_noise_modgen_counter_address|ix60244z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N23
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_6_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_6_ ));

// Location: LCCOMB_X27_Y17_N24
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52926 (
// Equation(s):
// \u_noise_modgen_counter_address|nx58250z1  = (\u_noise_modgen_counter_address|q_7_  & (!\u_noise_modgen_counter_address|nx60244z4 )) # (!\u_noise_modgen_counter_address|q_7_  & ((\u_noise_modgen_counter_address|nx60244z4 ) # (GND)))
// \u_noise_modgen_counter_address|nx60244z3  = CARRY((!\u_noise_modgen_counter_address|nx60244z4 ) # (!\u_noise_modgen_counter_address|q_7_ ))

	.dataa(\u_noise_modgen_counter_address|q_7_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z4 ),
	.combout(\u_noise_modgen_counter_address|nx58250z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z3 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52926 .lut_mask = 16'h5A5F;
defparam \u_noise_modgen_counter_address|ix60244z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N25
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_7_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_7_ ));

// Location: LCCOMB_X27_Y17_N26
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52925 (
// Equation(s):
// \u_noise_modgen_counter_address|nx59247z1  = (\u_noise_modgen_counter_address|q_8_  & (\u_noise_modgen_counter_address|nx60244z3  $ (GND))) # (!\u_noise_modgen_counter_address|q_8_  & (!\u_noise_modgen_counter_address|nx60244z3  & VCC))
// \u_noise_modgen_counter_address|nx60244z2  = CARRY((\u_noise_modgen_counter_address|q_8_  & !\u_noise_modgen_counter_address|nx60244z3 ))

	.dataa(vcc),
	.datab(\u_noise_modgen_counter_address|q_8_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_noise_modgen_counter_address|nx60244z3 ),
	.combout(\u_noise_modgen_counter_address|nx59247z1 ),
	.cout(\u_noise_modgen_counter_address|nx60244z2 ));
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52925 .lut_mask = 16'hC30C;
defparam \u_noise_modgen_counter_address|ix60244z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N27
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_8_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_8_ ));

// Location: LCCOMB_X27_Y17_N28
cycloneii_lcell_comb \u_noise_modgen_counter_address|ix60244z52923 (
// Equation(s):
// \u_noise_modgen_counter_address|nx60244z1  = \u_noise_modgen_counter_address|nx60244z2  $ (\u_noise_modgen_counter_address|q_9_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_noise_modgen_counter_address|q_9_ ),
	.cin(\u_noise_modgen_counter_address|nx60244z2 ),
	.combout(\u_noise_modgen_counter_address|nx60244z1 ),
	.cout());
// synopsys translate_off
defparam \u_noise_modgen_counter_address|ix60244z52923 .lut_mask = 16'h0FF0;
defparam \u_noise_modgen_counter_address|ix60244z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y17_N29
cycloneii_lcell_ff \u_noise_modgen_counter_address|reg_q_9_ (
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_noise_modgen_counter_address|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_noise_modgen_counter_address|q_9_ ));

// Location: M4K_X26_Y18
cycloneii_ram_block \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 (
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\aud_adclrck_dup0~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(4'b0000),
	.portaaddr({\u_noise_modgen_counter_address|q_9_ ,\u_noise_modgen_counter_address|q_8_ ,\u_noise_modgen_counter_address|q_7_ ,\u_noise_modgen_counter_address|q_6_ ,\u_noise_modgen_counter_address|q_5_ ,\u_noise_modgen_counter_address|q_4_ ,
\u_noise_modgen_counter_address|q_3_ ,\u_noise_modgen_counter_address|q_2_ ,\u_noise_modgen_counter_address|q_1_ ,\u_noise_modgen_counter_address|q_0_ }),
	.portabyteenamasks(1'b1),
	.portbdatain(4'b0000),
	.portbaddr(10'b0000000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .init_file = "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .init_file_layout = "port_a";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .logical_ram_name = "altsyncram:u_noise_modgen_rom_ix24__ix62120z34212|altsyncram_9nk2:auto_generated|ALTSYNCRAM";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .operation_mode = "rom";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_address_width = 10;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_data_width = 4;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_last_address = 1023;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 1024;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_a_write_enable_clock = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_b_address_width = 10;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .port_b_data_width = 4;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .mem_init1 = 2048'h1CCEF41A1BE47B8EC04C69D25338F89DDDA04462E827F38DF7D87736B3517F37C3BD4EEDBC309969D6847E3A8D9E0546A6700407E03FE015782194605E54BF10A4F01C8753EB30F760E7C2D24A7EDA6FA4B976DC7F532C2087A84E230F6D5D48D4C1CAAA053DEDF862AEE36B900FC597EC9508728DBB2580FAA9F43FABC5E761295AD818B8612D2FD3F34DA7548C5291536D48CA1E8177D5E75C234648A6DA3CA9E3C16061B05E2CA80E6F469B2EFF2EE04A8257181E62E221EB472AEB49A47B49A61466F543FDB1D62BB60B4B1039E0888665FA817D9179C09FE07C6AE7B3C0FEED2EDA7B5488906381A0965AA97FB8404A5E545D076319B8A259FDCAAA84FC;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a0 .mem_init0 = 2048'hCEB17C5FD83D7C7B444BC9ABCDF44E371EC0BA3773F455A6F03E3250F1DC94A09F7C8DB510F647126FC270098A4B0210E7421635F860E4C07CABE65604A560AD6538DD9E1BFA6628CA10415295D63B13B1E9E22EC1A27E393203E5B0DA4157A7275CCBCBEC41476D599E9C69E6E044F3710F98C4D4E691B32891AA1F76F7F75DEBF5E3FF7A4677932355ECDD8081CC602CBCB9A92763BAFF43ADA446CFF2AB71845993CABA02645D0CB0BF724914112CC94B90AF9E5446AE795051F5CB6BF2B50AA4581EA2EF8B6A1BC774E848C2BEE93DE4DB7640E2C482DFE54DDF6E9B5ADB87A47F137504B2AD332F5F692F00C5B8C4552DBAF9A05C9ADD576576D9B200FE;
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N26
cycloneii_lcell_comb ix62120z52923(
// Equation(s):
// audio_out_1n1ss1_5_ = (\sw~combout [17] & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [1]))) # (!\sw~combout [17] & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [5]))

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [5]),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [1]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_5_),
	.cout());
// synopsys translate_off
defparam ix62120z52923.lut_mask = 16'hEE22;
defparam ix62120z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N6
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52932 (
// Equation(s):
// \u_sine_address_add9_0i1|nx37973z1  = (\sw~combout [0] & ((u_sine_address_0_) # (GND))) # (!\sw~combout [0] & (u_sine_address_0_ $ (VCC)))
// \u_sine_address_add9_0i1|nx45949z23  = CARRY((\sw~combout [0]) # (u_sine_address_0_))

	.dataa(\sw~combout [0]),
	.datab(u_sine_address_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_sine_address_add9_0i1|nx37973z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z23 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52932 .lut_mask = 16'h99EE;
defparam \u_sine_address_add9_0i1|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X23_Y16_N7
cycloneii_lcell_ff u_sine_reg_address_0_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx37973z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_0_));

// Location: LCCOMB_X23_Y16_N12
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52929 (
// Equation(s):
// \u_sine_address_add9_0i1|nx40964z1  = (u_sine_address_3_ & ((\sw~combout [3] & (\u_sine_address_add9_0i1|nx45949z17  & VCC)) # (!\sw~combout [3] & (!\u_sine_address_add9_0i1|nx45949z17 )))) # (!u_sine_address_3_ & ((\sw~combout [3] & 
// (!\u_sine_address_add9_0i1|nx45949z17 )) # (!\sw~combout [3] & ((\u_sine_address_add9_0i1|nx45949z17 ) # (GND)))))
// \u_sine_address_add9_0i1|nx45949z14  = CARRY((u_sine_address_3_ & (!\sw~combout [3] & !\u_sine_address_add9_0i1|nx45949z17 )) # (!u_sine_address_3_ & ((!\u_sine_address_add9_0i1|nx45949z17 ) # (!\sw~combout [3]))))

	.dataa(u_sine_address_3_),
	.datab(\sw~combout [3]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z17 ),
	.combout(\u_sine_address_add9_0i1|nx40964z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z14 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52929 .lut_mask = 16'h9617;
defparam \u_sine_address_add9_0i1|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N14
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52928 (
// Equation(s):
// \u_sine_address_add9_0i1|nx41961z1  = ((u_sine_address_4_ $ (\sw~combout [4] $ (!\u_sine_address_add9_0i1|nx45949z14 )))) # (GND)
// \u_sine_address_add9_0i1|nx45949z11  = CARRY((u_sine_address_4_ & ((\sw~combout [4]) # (!\u_sine_address_add9_0i1|nx45949z14 ))) # (!u_sine_address_4_ & (\sw~combout [4] & !\u_sine_address_add9_0i1|nx45949z14 )))

	.dataa(u_sine_address_4_),
	.datab(\sw~combout [4]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z14 ),
	.combout(\u_sine_address_add9_0i1|nx41961z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z11 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52928 .lut_mask = 16'h698E;
defparam \u_sine_address_add9_0i1|ix45949z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N16
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52927 (
// Equation(s):
// \u_sine_address_add9_0i1|nx42958z1  = (u_sine_address_5_ & ((\sw~combout [5] & (\u_sine_address_add9_0i1|nx45949z11  & VCC)) # (!\sw~combout [5] & (!\u_sine_address_add9_0i1|nx45949z11 )))) # (!u_sine_address_5_ & ((\sw~combout [5] & 
// (!\u_sine_address_add9_0i1|nx45949z11 )) # (!\sw~combout [5] & ((\u_sine_address_add9_0i1|nx45949z11 ) # (GND)))))
// \u_sine_address_add9_0i1|nx45949z8  = CARRY((u_sine_address_5_ & (!\sw~combout [5] & !\u_sine_address_add9_0i1|nx45949z11 )) # (!u_sine_address_5_ & ((!\u_sine_address_add9_0i1|nx45949z11 ) # (!\sw~combout [5]))))

	.dataa(u_sine_address_5_),
	.datab(\sw~combout [5]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z11 ),
	.combout(\u_sine_address_add9_0i1|nx42958z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z8 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_sine_address_add9_0i1|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X23_Y16_N19
cycloneii_lcell_ff u_sine_reg_address_6_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx43955z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_6_));

// Location: LCCOMB_X23_Y16_N18
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52926 (
// Equation(s):
// \u_sine_address_add9_0i1|nx43955z1  = ((\sw~combout [6] $ (u_sine_address_6_ $ (!\u_sine_address_add9_0i1|nx45949z8 )))) # (GND)
// \u_sine_address_add9_0i1|nx45949z5  = CARRY((\sw~combout [6] & ((u_sine_address_6_) # (!\u_sine_address_add9_0i1|nx45949z8 ))) # (!\sw~combout [6] & (u_sine_address_6_ & !\u_sine_address_add9_0i1|nx45949z8 )))

	.dataa(\sw~combout [6]),
	.datab(u_sine_address_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z8 ),
	.combout(\u_sine_address_add9_0i1|nx43955z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z5 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52926 .lut_mask = 16'h698E;
defparam \u_sine_address_add9_0i1|ix45949z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y16_N20
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52925 (
// Equation(s):
// \u_sine_address_add9_0i1|nx44952z1  = (u_sine_address_7_ & (!\u_sine_address_add9_0i1|nx45949z5 )) # (!u_sine_address_7_ & ((\u_sine_address_add9_0i1|nx45949z5 ) # (GND)))
// \u_sine_address_add9_0i1|nx45949z3  = CARRY((!\u_sine_address_add9_0i1|nx45949z5 ) # (!u_sine_address_7_))

	.dataa(u_sine_address_7_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_sine_address_add9_0i1|nx45949z5 ),
	.combout(\u_sine_address_add9_0i1|nx44952z1 ),
	.cout(\u_sine_address_add9_0i1|nx45949z3 ));
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52925 .lut_mask = 16'h5A5F;
defparam \u_sine_address_add9_0i1|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X23_Y16_N23
cycloneii_lcell_ff u_sine_reg_address_8_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\u_sine_address_add9_0i1|nx45949z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_sine_address_8_));

// Location: LCCOMB_X23_Y16_N22
cycloneii_lcell_comb \u_sine_address_add9_0i1|ix45949z52923 (
// Equation(s):
// \u_sine_address_add9_0i1|nx45949z1  = \u_sine_address_add9_0i1|nx45949z3  $ (!u_sine_address_8_)

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(u_sine_address_8_),
	.cin(\u_sine_address_add9_0i1|nx45949z3 ),
	.combout(\u_sine_address_add9_0i1|nx45949z1 ),
	.cout());
// synopsys translate_off
defparam \u_sine_address_add9_0i1|ix45949z52923 .lut_mask = 16'hF00F;
defparam \u_sine_address_add9_0i1|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y17_N22
cycloneii_lcell_comb \low_pass_in_15_~feeder (
// Equation(s):
// \low_pass_in_15_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [11]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [11]),
	.cin(gnd),
	.combout(\low_pass_in_15_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_15_~feeder .lut_mask = 16'hFF00;
defparam \low_pass_in_15_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X26_Y17
cycloneii_ram_block \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 (
	.portawe(gnd),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\aud_adclrck_dup0~clkctrl_outclk ),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain(4'b0000),
	.portaaddr({\u_noise_modgen_counter_address|q_9_ ,\u_noise_modgen_counter_address|q_8_ ,\u_noise_modgen_counter_address|q_7_ ,\u_noise_modgen_counter_address|q_6_ ,\u_noise_modgen_counter_address|q_5_ ,\u_noise_modgen_counter_address|q_4_ ,
\u_noise_modgen_counter_address|q_3_ ,\u_noise_modgen_counter_address|q_2_ ,\u_noise_modgen_counter_address|q_1_ ,\u_noise_modgen_counter_address|q_0_ }),
	.portabyteenamasks(1'b1),
	.portbdatain(4'b0000),
	.portbaddr(10'b0000000000),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4_PORTADATAOUT_bus ),
	.portbdataout());
// synopsys translate_off
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .data_interleave_offset_in_bits = 1;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .data_interleave_width_in_bits = 1;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .init_file = "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .init_file_layout = "port_a";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .logical_ram_name = "altsyncram:u_noise_modgen_rom_ix24__ix62120z34212|altsyncram_9nk2:auto_generated|ALTSYNCRAM";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .operation_mode = "rom";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_address_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_address_width = 10;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_byte_enable_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_byte_enable_clock = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_data_in_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_data_out_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_data_out_clock = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_data_width = 4;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_first_address = 0;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_first_bit_number = 4;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_last_address = 1023;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_logical_ram_depth = 1024;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_logical_ram_width = 8;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_write_enable_clear = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_a_write_enable_clock = "none";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_b_address_width = 10;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .port_b_data_width = 4;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .ram_block_type = "M4K";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .safe_write = "err_on_2clk";
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .mem_init1 = 2048'h6441071CC8DE5D70761D40307C107E752202FA68CEC0B138C8C693A73757EDF69A8A86C176B00B9787DCC0627C1F65A7319C05622E092119B1D5452D8906942F7F92155731A79E4E36F3F5B6AB61A527BBB5C112CD5F072CD4462D220F3618913DAC993A0242AB7B5D496579A515B87F2DD7786AEC61308B4035E909993CE60AA55580806C67938C40FE2034BDA36E9E9ED1AC81607B3DD8BD24FBBFCFE232BCE1B3C0B68A82FC38FAE6AF35704AFF0B6A1D875A883C0A3E4A0EFFA5619C9A55D281C6E0DDA905EDBF32F21323736EA9B67BCA0D1AC0194E7E753AB70806122991D4589C802A95807AB8A0FE624BE21DF1638F8C73F865138865965874A357E2;
defparam \u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|ram_block1a4 .mem_init0 = 2048'h005AE5EF060ACA6F8EB5B89C615C6D492EB7690F6CDD613F016E49843E3F6ED75825624789A85C62C6E2B42DEDC438A5BDEEA158314108DC266D0D9C451EE4A14BE43DD77A1879D597ACA2380A0C2230C2B9C9CFCA5DDC9B7104377DE21BED9711BA4C1EE5C9E89FEB990A0B74439663CAB11A1754C3BA781F2D92A83679F7637C35FD108C9FD80F061AED3E7010535EBA9727A7C6DD2223A96A63FB8825464BC6A8356B49090009D2D4D201A983D46801E32A314E2C21C84DC875D7DA7158F9BF816213CFFBAEEDB425DA093514C783D366B31FC4EA19E993B70B47932A50B2459CB6FAA2F809FF22B24DAE9F1DD6F2A6FBFA0D3A4912743C2528C459AC1311;
// synopsys translate_on

// Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io sw_ibuf_16_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(\sw~combout [16]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[16]));
// synopsys translate_off
defparam sw_ibuf_16_.input_async_reset = "none";
defparam sw_ibuf_16_.input_power_up = "low";
defparam sw_ibuf_16_.input_register_mode = "none";
defparam sw_ibuf_16_.input_sync_reset = "none";
defparam sw_ibuf_16_.oe_async_reset = "none";
defparam sw_ibuf_16_.oe_power_up = "low";
defparam sw_ibuf_16_.oe_register_mode = "none";
defparam sw_ibuf_16_.oe_sync_reset = "none";
defparam sw_ibuf_16_.operation_mode = "input";
defparam sw_ibuf_16_.output_async_reset = "none";
defparam sw_ibuf_16_.output_power_up = "low";
defparam sw_ibuf_16_.output_register_mode = "none";
defparam sw_ibuf_16_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X23_Y17_N23
cycloneii_lcell_ff reg_low_pass_in_15_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_15_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [7]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_15_));

// Location: LCCOMB_X23_Y17_N28
cycloneii_lcell_comb \low_pass_in_10_~feeder (
// Equation(s):
// \low_pass_in_10_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [10]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [10]),
	.cin(gnd),
	.combout(\low_pass_in_10_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_10_~feeder .lut_mask = 16'hFF00;
defparam \low_pass_in_10_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X23_Y17_N29
cycloneii_lcell_ff reg_low_pass_in_10_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_10_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [6]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_10_));

// Location: LCCOMB_X24_Y18_N8
cycloneii_lcell_comb \low_pass_in_8_~feeder (
// Equation(s):
// \low_pass_in_8_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [8]

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [8]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass_in_8_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_8_~feeder .lut_mask = 16'hAAAA;
defparam \low_pass_in_8_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X24_Y18_N9
cycloneii_lcell_ff reg_low_pass_in_8_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_8_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [4]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_8_));

// Location: LCCOMB_X24_Y18_N12
cycloneii_lcell_comb \low_pass_in_7_~feeder (
// Equation(s):
// \low_pass_in_7_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [7]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [7]),
	.cin(gnd),
	.combout(\low_pass_in_7_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_7_~feeder .lut_mask = 16'hFF00;
defparam \low_pass_in_7_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X24_Y18_N13
cycloneii_lcell_ff reg_low_pass_in_7_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_7_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [3]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_7_));

// Location: LCCOMB_X24_Y18_N0
cycloneii_lcell_comb \low_pass_in_5_~feeder (
// Equation(s):
// \low_pass_in_5_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [5]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [5]),
	.cin(gnd),
	.combout(\low_pass_in_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_5_~feeder .lut_mask = 16'hFF00;
defparam \low_pass_in_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X24_Y18_N1
cycloneii_lcell_ff reg_low_pass_in_5_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_5_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [1]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_5_));

// Location: LCCOMB_X24_Y18_N10
cycloneii_lcell_comb \low_pass_in_4_~feeder (
// Equation(s):
// \low_pass_in_4_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [4]

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [4]),
	.cin(gnd),
	.combout(\low_pass_in_4_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_4_~feeder .lut_mask = 16'hFF00;
defparam \low_pass_in_4_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X24_Y18_N11
cycloneii_lcell_ff reg_low_pass_in_4_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_4_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [0]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_4_));

// Location: LCCOMB_X27_Y20_N22
cycloneii_lcell_comb ix37222z52923(
// Equation(s):
// audio_out_1n1ss1_2_ = (!\sw~combout [17] & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [2])

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [2]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_2_),
	.cout());
// synopsys translate_off
defparam ix37222z52923.lut_mask = 16'h3300;
defparam ix37222z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X23_Y18_N5
cycloneii_lcell_ff reg_low_pass_in_2_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(gnd),
	.sdata(audio_out_1n1ss1_2_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_2_));

// Location: LCCOMB_X27_Y20_N28
cycloneii_lcell_comb ix35228z52923(
// Equation(s):
// audio_out_1n1ss1_0_ = (!\sw~combout [17] & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [0])

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [0]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_0_),
	.cout());
// synopsys translate_off
defparam ix35228z52923.lut_mask = 16'h3300;
defparam ix35228z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X23_Y20_N1
cycloneii_lcell_ff reg_low_pass_in_0_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(gnd),
	.sdata(audio_out_1n1ss1_0_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_0_));

// Location: LCCOMB_X23_Y18_N2
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52940 (
// Equation(s):
// \low_pass|prod_5__mults21_4|nx3244z16  = CARRY((low_pass_in_1_ & low_pass_in_0_))

	.dataa(low_pass_in_1_),
	.datab(low_pass_in_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|prod_5__mults21_4|nx3244z16 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52940 .lut_mask = 16'h0088;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N4
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52939 (
// Equation(s):
// \low_pass|prod_5__mults21_4|nx3244z15  = CARRY((low_pass_in_1_ & (!low_pass_in_2_ & !\low_pass|prod_5__mults21_4|nx3244z16 )) # (!low_pass_in_1_ & ((!\low_pass|prod_5__mults21_4|nx3244z16 ) # (!low_pass_in_2_))))

	.dataa(low_pass_in_1_),
	.datab(low_pass_in_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z16 ),
	.combout(),
	.cout(\low_pass|prod_5__mults21_4|nx3244z15 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52939 .lut_mask = 16'h0017;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52939 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N8
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52937 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_3_  = (low_pass_in_3_ & ((low_pass_in_4_ & (\low_pass|prod_5__mults21_4|nx3244z14  & VCC)) # (!low_pass_in_4_ & (!\low_pass|prod_5__mults21_4|nx3244z14 )))) # (!low_pass_in_3_ & ((low_pass_in_4_ & 
// (!\low_pass|prod_5__mults21_4|nx3244z14 )) # (!low_pass_in_4_ & ((\low_pass|prod_5__mults21_4|nx3244z14 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z13  = CARRY((low_pass_in_3_ & (!low_pass_in_4_ & !\low_pass|prod_5__mults21_4|nx3244z14 )) # (!low_pass_in_3_ & ((!\low_pass|prod_5__mults21_4|nx3244z14 ) # (!low_pass_in_4_))))

	.dataa(low_pass_in_3_),
	.datab(low_pass_in_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z14 ),
	.combout(\low_pass|prod_5__mults21_4|d_3_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z13 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52937 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N10
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52936 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_4_  = ((low_pass_in_4_ $ (low_pass_in_5_ $ (!\low_pass|prod_5__mults21_4|nx3244z13 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z12  = CARRY((low_pass_in_4_ & ((low_pass_in_5_) # (!\low_pass|prod_5__mults21_4|nx3244z13 ))) # (!low_pass_in_4_ & (low_pass_in_5_ & !\low_pass|prod_5__mults21_4|nx3244z13 )))

	.dataa(low_pass_in_4_),
	.datab(low_pass_in_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z13 ),
	.combout(\low_pass|prod_5__mults21_4|d_4_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z12 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52936 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N12
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52935 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_5_  = (low_pass_in_6_ & ((low_pass_in_5_ & (\low_pass|prod_5__mults21_4|nx3244z12  & VCC)) # (!low_pass_in_5_ & (!\low_pass|prod_5__mults21_4|nx3244z12 )))) # (!low_pass_in_6_ & ((low_pass_in_5_ & 
// (!\low_pass|prod_5__mults21_4|nx3244z12 )) # (!low_pass_in_5_ & ((\low_pass|prod_5__mults21_4|nx3244z12 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z11  = CARRY((low_pass_in_6_ & (!low_pass_in_5_ & !\low_pass|prod_5__mults21_4|nx3244z12 )) # (!low_pass_in_6_ & ((!\low_pass|prod_5__mults21_4|nx3244z12 ) # (!low_pass_in_5_))))

	.dataa(low_pass_in_6_),
	.datab(low_pass_in_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z12 ),
	.combout(\low_pass|prod_5__mults21_4|d_5_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z11 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52935 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N14
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52934 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_6_  = ((low_pass_in_6_ $ (low_pass_in_7_ $ (!\low_pass|prod_5__mults21_4|nx3244z11 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z10  = CARRY((low_pass_in_6_ & ((low_pass_in_7_) # (!\low_pass|prod_5__mults21_4|nx3244z11 ))) # (!low_pass_in_6_ & (low_pass_in_7_ & !\low_pass|prod_5__mults21_4|nx3244z11 )))

	.dataa(low_pass_in_6_),
	.datab(low_pass_in_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z11 ),
	.combout(\low_pass|prod_5__mults21_4|d_6_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z10 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52934 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N18
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52932 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_8_  = ((low_pass_in_9_ $ (low_pass_in_8_ $ (!\low_pass|prod_5__mults21_4|nx3244z9 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z8  = CARRY((low_pass_in_9_ & ((low_pass_in_8_) # (!\low_pass|prod_5__mults21_4|nx3244z9 ))) # (!low_pass_in_9_ & (low_pass_in_8_ & !\low_pass|prod_5__mults21_4|nx3244z9 )))

	.dataa(low_pass_in_9_),
	.datab(low_pass_in_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z9 ),
	.combout(\low_pass|prod_5__mults21_4|d_8_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z8 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52932 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N20
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52931 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_9_  = (low_pass_in_9_ & ((low_pass_in_10_ & (\low_pass|prod_5__mults21_4|nx3244z8  & VCC)) # (!low_pass_in_10_ & (!\low_pass|prod_5__mults21_4|nx3244z8 )))) # (!low_pass_in_9_ & ((low_pass_in_10_ & 
// (!\low_pass|prod_5__mults21_4|nx3244z8 )) # (!low_pass_in_10_ & ((\low_pass|prod_5__mults21_4|nx3244z8 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z7  = CARRY((low_pass_in_9_ & (!low_pass_in_10_ & !\low_pass|prod_5__mults21_4|nx3244z8 )) # (!low_pass_in_9_ & ((!\low_pass|prod_5__mults21_4|nx3244z8 ) # (!low_pass_in_10_))))

	.dataa(low_pass_in_9_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z8 ),
	.combout(\low_pass|prod_5__mults21_4|d_9_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z7 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52931 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N22
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52930 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_10_  = ((low_pass_in_10_ $ (low_pass_in_15_ $ (!\low_pass|prod_5__mults21_4|nx3244z7 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z6  = CARRY((low_pass_in_10_ & ((low_pass_in_15_) # (!\low_pass|prod_5__mults21_4|nx3244z7 ))) # (!low_pass_in_10_ & (low_pass_in_15_ & !\low_pass|prod_5__mults21_4|nx3244z7 )))

	.dataa(low_pass_in_10_),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z7 ),
	.combout(\low_pass|prod_5__mults21_4|d_10_ ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z6 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52930 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_4_ix3244z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N0
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52950 (
// Equation(s):
// \low_pass|prod_5__mults21_4|nx3244z26  = CARRY((\low_pass|prod_5__mults21_4|d_2_  & low_pass_in_0_))

	.dataa(\low_pass|prod_5__mults21_4|d_2_ ),
	.datab(low_pass_in_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|prod_5__mults21_4|nx3244z26 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52950 .lut_mask = 16'h0088;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52950 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N2
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52949 (
// Equation(s):
// \low_pass|prod_5__mults21_4|nx3244z25  = CARRY((low_pass_in_1_ & (!\low_pass|prod_5__mults21_4|d_3_  & !\low_pass|prod_5__mults21_4|nx3244z26 )) # (!low_pass_in_1_ & ((!\low_pass|prod_5__mults21_4|nx3244z26 ) # (!\low_pass|prod_5__mults21_4|d_3_ ))))

	.dataa(low_pass_in_1_),
	.datab(\low_pass|prod_5__mults21_4|d_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z26 ),
	.combout(),
	.cout(\low_pass|prod_5__mults21_4|nx3244z25 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52949 .lut_mask = 16'h0017;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52949 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N4
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52948 (
// Equation(s):
// \low_pass|prod_5__mults21_4|nx3244z24  = CARRY((low_pass_in_2_ & ((\low_pass|prod_5__mults21_4|d_4_ ) # (!\low_pass|prod_5__mults21_4|nx3244z25 ))) # (!low_pass_in_2_ & (\low_pass|prod_5__mults21_4|d_4_  & !\low_pass|prod_5__mults21_4|nx3244z25 )))

	.dataa(low_pass_in_2_),
	.datab(\low_pass|prod_5__mults21_4|d_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z25 ),
	.combout(),
	.cout(\low_pass|prod_5__mults21_4|nx3244z24 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52948 .lut_mask = 16'h008E;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52948 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N6
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52947 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_3__dup_193  = (low_pass_in_3_ & ((\low_pass|prod_5__mults21_4|d_5_  & (\low_pass|prod_5__mults21_4|nx3244z24  & VCC)) # (!\low_pass|prod_5__mults21_4|d_5_  & (!\low_pass|prod_5__mults21_4|nx3244z24 )))) # (!low_pass_in_3_ & 
// ((\low_pass|prod_5__mults21_4|d_5_  & (!\low_pass|prod_5__mults21_4|nx3244z24 )) # (!\low_pass|prod_5__mults21_4|d_5_  & ((\low_pass|prod_5__mults21_4|nx3244z24 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z23  = CARRY((low_pass_in_3_ & (!\low_pass|prod_5__mults21_4|d_5_  & !\low_pass|prod_5__mults21_4|nx3244z24 )) # (!low_pass_in_3_ & ((!\low_pass|prod_5__mults21_4|nx3244z24 ) # (!\low_pass|prod_5__mults21_4|d_5_ ))))

	.dataa(low_pass_in_3_),
	.datab(\low_pass|prod_5__mults21_4|d_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z24 ),
	.combout(\low_pass|prod_5__mults21_4|d_3__dup_193 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z23 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52947 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52947 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N8
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52946 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_4__dup_192  = ((low_pass_in_4_ $ (\low_pass|prod_5__mults21_4|d_6_  $ (!\low_pass|prod_5__mults21_4|nx3244z23 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z22  = CARRY((low_pass_in_4_ & ((\low_pass|prod_5__mults21_4|d_6_ ) # (!\low_pass|prod_5__mults21_4|nx3244z23 ))) # (!low_pass_in_4_ & (\low_pass|prod_5__mults21_4|d_6_  & !\low_pass|prod_5__mults21_4|nx3244z23 )))

	.dataa(low_pass_in_4_),
	.datab(\low_pass|prod_5__mults21_4|d_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z23 ),
	.combout(\low_pass|prod_5__mults21_4|d_4__dup_192 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z22 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52946 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52946 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N16
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52942 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_8__dup_188  = ((low_pass_in_8_ $ (\low_pass|prod_5__mults21_4|d_10_  $ (!\low_pass|prod_5__mults21_4|nx3244z19 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z18  = CARRY((low_pass_in_8_ & ((\low_pass|prod_5__mults21_4|d_10_ ) # (!\low_pass|prod_5__mults21_4|nx3244z19 ))) # (!low_pass_in_8_ & (\low_pass|prod_5__mults21_4|d_10_  & !\low_pass|prod_5__mults21_4|nx3244z19 )))

	.dataa(low_pass_in_8_),
	.datab(\low_pass|prod_5__mults21_4|d_10_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z19 ),
	.combout(\low_pass|prod_5__mults21_4|d_8__dup_188 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z18 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52942 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52942 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N6
cycloneii_lcell_comb \low_pass_in_6_~feeder (
// Equation(s):
// \low_pass_in_6_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [6]

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [6]),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass_in_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_6_~feeder .lut_mask = 16'hAAAA;
defparam \low_pass_in_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X24_Y18_N7
cycloneii_lcell_ff reg_low_pass_in_6_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_6_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [2]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_6_));

// Location: LCCOMB_X29_Y20_N2
cycloneii_lcell_comb ix38219z52923(
// Equation(s):
// audio_out_1n1ss1_3_ = (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [3] & !\sw~combout [17])

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [3]),
	.datab(vcc),
	.datac(vcc),
	.datad(\sw~combout [17]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_3_),
	.cout());
// synopsys translate_off
defparam ix38219z52923.lut_mask = 16'h00AA;
defparam ix38219z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X23_Y18_N7
cycloneii_lcell_ff reg_low_pass_in_3_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(gnd),
	.sdata(audio_out_1n1ss1_3_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_3_));

// Location: LCCOMB_X27_Y20_N2
cycloneii_lcell_comb ix36225z52923(
// Equation(s):
// audio_out_1n1ss1_1_ = (!\sw~combout [17] & \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [1])

	.dataa(vcc),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [1]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_1_),
	.cout());
// synopsys translate_off
defparam ix36225z52923.lut_mask = 16'h3300;
defparam ix36225z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X23_Y18_N3
cycloneii_lcell_ff reg_low_pass_in_1_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(gnd),
	.sdata(audio_out_1n1ss1_1_),
	.aclr(gnd),
	.sclr(gnd),
	.sload(vcc),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_1_));

// Location: LCCOMB_X23_Y20_N0
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52939 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx3244z30  = CARRY((low_pass_in_1_ & low_pass_in_0_))

	.dataa(low_pass_in_1_),
	.datab(low_pass_in_0_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|prod_1__mults19_1|nx3244z30 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52939 .lut_mask = 16'h0088;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N2
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52938 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx3244z28  = CARRY((low_pass_in_2_ & (!low_pass_in_1_ & !\low_pass|prod_1__mults19_1|nx3244z30 )) # (!low_pass_in_2_ & ((!\low_pass|prod_1__mults19_1|nx3244z30 ) # (!low_pass_in_1_))))

	.dataa(low_pass_in_2_),
	.datab(low_pass_in_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z30 ),
	.combout(),
	.cout(\low_pass|prod_1__mults19_1|nx3244z28 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52938 .lut_mask = 16'h0017;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N4
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52937 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx3244z26  = CARRY((low_pass_in_2_ & ((low_pass_in_3_) # (!\low_pass|prod_1__mults19_1|nx3244z28 ))) # (!low_pass_in_2_ & (low_pass_in_3_ & !\low_pass|prod_1__mults19_1|nx3244z28 )))

	.dataa(low_pass_in_2_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z28 ),
	.combout(),
	.cout(\low_pass|prod_1__mults19_1|nx3244z26 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52937 .lut_mask = 16'h008E;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N6
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52936 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx3244z24  = CARRY((low_pass_in_4_ & (!low_pass_in_3_ & !\low_pass|prod_1__mults19_1|nx3244z26 )) # (!low_pass_in_4_ & ((!\low_pass|prod_1__mults19_1|nx3244z26 ) # (!low_pass_in_3_))))

	.dataa(low_pass_in_4_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z26 ),
	.combout(),
	.cout(\low_pass|prod_1__mults19_1|nx3244z24 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52936 .lut_mask = 16'h0017;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N8
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52935 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx42958z1  = ((low_pass_in_5_ $ (low_pass_in_4_ $ (!\low_pass|prod_1__mults19_1|nx3244z24 )))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z22  = CARRY((low_pass_in_5_ & ((low_pass_in_4_) # (!\low_pass|prod_1__mults19_1|nx3244z24 ))) # (!low_pass_in_5_ & (low_pass_in_4_ & !\low_pass|prod_1__mults19_1|nx3244z24 )))

	.dataa(low_pass_in_5_),
	.datab(low_pass_in_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z24 ),
	.combout(\low_pass|prod_1__mults19_1|nx42958z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z22 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52935 .lut_mask = 16'h698E;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N10
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52934 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx43955z1  = (low_pass_in_5_ & ((low_pass_in_6_ & (\low_pass|prod_1__mults19_1|nx3244z22  & VCC)) # (!low_pass_in_6_ & (!\low_pass|prod_1__mults19_1|nx3244z22 )))) # (!low_pass_in_5_ & ((low_pass_in_6_ & 
// (!\low_pass|prod_1__mults19_1|nx3244z22 )) # (!low_pass_in_6_ & ((\low_pass|prod_1__mults19_1|nx3244z22 ) # (GND)))))
// \low_pass|prod_1__mults19_1|nx3244z20  = CARRY((low_pass_in_5_ & (!low_pass_in_6_ & !\low_pass|prod_1__mults19_1|nx3244z22 )) # (!low_pass_in_5_ & ((!\low_pass|prod_1__mults19_1|nx3244z22 ) # (!low_pass_in_6_))))

	.dataa(low_pass_in_5_),
	.datab(low_pass_in_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z22 ),
	.combout(\low_pass|prod_1__mults19_1|nx43955z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z20 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52934 .lut_mask = 16'h9617;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N12
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52933 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx44952z1  = ((low_pass_in_7_ $ (low_pass_in_6_ $ (!\low_pass|prod_1__mults19_1|nx3244z20 )))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z18  = CARRY((low_pass_in_7_ & ((low_pass_in_6_) # (!\low_pass|prod_1__mults19_1|nx3244z20 ))) # (!low_pass_in_7_ & (low_pass_in_6_ & !\low_pass|prod_1__mults19_1|nx3244z20 )))

	.dataa(low_pass_in_7_),
	.datab(low_pass_in_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z20 ),
	.combout(\low_pass|prod_1__mults19_1|nx44952z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z18 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52933 .lut_mask = 16'h698E;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N14
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52932 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx45949z1  = (low_pass_in_7_ & ((low_pass_in_8_ & (\low_pass|prod_1__mults19_1|nx3244z18  & VCC)) # (!low_pass_in_8_ & (!\low_pass|prod_1__mults19_1|nx3244z18 )))) # (!low_pass_in_7_ & ((low_pass_in_8_ & 
// (!\low_pass|prod_1__mults19_1|nx3244z18 )) # (!low_pass_in_8_ & ((\low_pass|prod_1__mults19_1|nx3244z18 ) # (GND)))))
// \low_pass|prod_1__mults19_1|nx3244z16  = CARRY((low_pass_in_7_ & (!low_pass_in_8_ & !\low_pass|prod_1__mults19_1|nx3244z18 )) # (!low_pass_in_7_ & ((!\low_pass|prod_1__mults19_1|nx3244z18 ) # (!low_pass_in_8_))))

	.dataa(low_pass_in_7_),
	.datab(low_pass_in_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z18 ),
	.combout(\low_pass|prod_1__mults19_1|nx45949z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z16 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52932 .lut_mask = 16'h9617;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N0
cycloneii_lcell_comb \low_pass|prod_6__mults19_5|ix44471z52923 (
// Equation(s):
// \low_pass|prod_6__mults19_5|nx44471z1  = (low_pass_in_1_ & ((low_pass_in_2_) # ((low_pass_in_0_ & low_pass_in_3_)))) # (!low_pass_in_1_ & (low_pass_in_2_ & ((low_pass_in_3_))))

	.dataa(low_pass_in_1_),
	.datab(low_pass_in_2_),
	.datac(low_pass_in_0_),
	.datad(low_pass_in_3_),
	.cin(gnd),
	.combout(\low_pass|prod_6__mults19_5|nx44471z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_6__mults19_5|ix44471z52923 .lut_mask = 16'hEC88;
defparam \low_pass|prod_6__mults19_5|ix44471z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N16
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52940 (
// Equation(s):
// \low_pass|modgen_add_8|nx2247z49  = CARRY(\low_pass|prod_5__mults21_4|d_3__dup_193 )

	.dataa(\low_pass|prod_5__mults21_4|d_3__dup_193 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|modgen_add_8|nx2247z49 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52940 .lut_mask = 16'h00AA;
defparam \low_pass|modgen_add_8|ix2247z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N22
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_8|nx39967z1  = (\low_pass|prod_5__mults21_4|d_5__dup_191  & ((\low_pass|prod_1__mults19_1|nx43955z1  & (\low_pass|modgen_add_8|nx2247z43  & VCC)) # (!\low_pass|prod_1__mults19_1|nx43955z1  & (!\low_pass|modgen_add_8|nx2247z43 )))) # 
// (!\low_pass|prod_5__mults21_4|d_5__dup_191  & ((\low_pass|prod_1__mults19_1|nx43955z1  & (!\low_pass|modgen_add_8|nx2247z43 )) # (!\low_pass|prod_1__mults19_1|nx43955z1  & ((\low_pass|modgen_add_8|nx2247z43 ) # (GND)))))
// \low_pass|modgen_add_8|nx2247z40  = CARRY((\low_pass|prod_5__mults21_4|d_5__dup_191  & (!\low_pass|prod_1__mults19_1|nx43955z1  & !\low_pass|modgen_add_8|nx2247z43 )) # (!\low_pass|prod_5__mults21_4|d_5__dup_191  & ((!\low_pass|modgen_add_8|nx2247z43 ) # 
// (!\low_pass|prod_1__mults19_1|nx43955z1 ))))

	.dataa(\low_pass|prod_5__mults21_4|d_5__dup_191 ),
	.datab(\low_pass|prod_1__mults19_1|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z43 ),
	.combout(\low_pass|modgen_add_8|nx39967z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52937 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_8|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N24
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_8|nx40964z1  = ((\low_pass|prod_5__mults21_4|d_6__dup_190  $ (\low_pass|prod_1__mults19_1|nx44952z1  $ (!\low_pass|modgen_add_8|nx2247z40 )))) # (GND)
// \low_pass|modgen_add_8|nx2247z37  = CARRY((\low_pass|prod_5__mults21_4|d_6__dup_190  & ((\low_pass|prod_1__mults19_1|nx44952z1 ) # (!\low_pass|modgen_add_8|nx2247z40 ))) # (!\low_pass|prod_5__mults21_4|d_6__dup_190  & 
// (\low_pass|prod_1__mults19_1|nx44952z1  & !\low_pass|modgen_add_8|nx2247z40 )))

	.dataa(\low_pass|prod_5__mults21_4|d_6__dup_190 ),
	.datab(\low_pass|prod_1__mults19_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z40 ),
	.combout(\low_pass|modgen_add_8|nx40964z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52936 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_8|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y20_N28
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_8|nx42958z1  = ((\low_pass|prod_1__mults19_1|nx46946z1  $ (\low_pass|prod_5__mults21_4|d_8__dup_188  $ (!\low_pass|modgen_add_8|nx2247z34 )))) # (GND)
// \low_pass|modgen_add_8|nx2247z31  = CARRY((\low_pass|prod_1__mults19_1|nx46946z1  & ((\low_pass|prod_5__mults21_4|d_8__dup_188 ) # (!\low_pass|modgen_add_8|nx2247z34 ))) # (!\low_pass|prod_1__mults19_1|nx46946z1  & 
// (\low_pass|prod_5__mults21_4|d_8__dup_188  & !\low_pass|modgen_add_8|nx2247z34 )))

	.dataa(\low_pass|prod_1__mults19_1|nx46946z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_8__dup_188 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z34 ),
	.combout(\low_pass|modgen_add_8|nx42958z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52934 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_8|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N28
cycloneii_lcell_comb \low_pass|prod_6__mults19_5|ix44479z52923 (
// Equation(s):
// \low_pass|prod_6__mults19_5|nx44479z1  = low_pass_in_3_ $ (low_pass_in_4_)

	.dataa(vcc),
	.datab(vcc),
	.datac(low_pass_in_3_),
	.datad(low_pass_in_4_),
	.cin(gnd),
	.combout(\low_pass|prod_6__mults19_5|nx44479z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_6__mults19_5|ix44479z52923 .lut_mask = 16'h0FF0;
defparam \low_pass|prod_6__mults19_5|ix44479z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y18_N28
cycloneii_lcell_comb \low_pass|prod_6__mults19_5|ix41961z52924 (
// Equation(s):
// \low_pass|prod_6__mults19_5|nx41961z2  = (low_pass_in_2_ & low_pass_in_3_)

	.dataa(vcc),
	.datab(vcc),
	.datac(low_pass_in_2_),
	.datad(low_pass_in_3_),
	.cin(gnd),
	.combout(\low_pass|prod_6__mults19_5|nx41961z2 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_6__mults19_5|ix41961z52924 .lut_mask = 16'hF000;
defparam \low_pass|prod_6__mults19_5|ix41961z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N4
cycloneii_lcell_comb \low_pass|prod_6__mults19_5|ix41961z52927 (
// Equation(s):
// \low_pass|prod_6__mults19_5|nx41961z5  = (low_pass_in_3_ & low_pass_in_4_)

	.dataa(vcc),
	.datab(vcc),
	.datac(low_pass_in_3_),
	.datad(low_pass_in_4_),
	.cin(gnd),
	.combout(\low_pass|prod_6__mults19_5|nx41961z5 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_6__mults19_5|ix41961z52927 .lut_mask = 16'hF000;
defparam \low_pass|prod_6__mults19_5|ix41961z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N30
cycloneii_lcell_comb \low_pass|prod_6__mults19_5|ix41961z52926 (
// Equation(s):
// \low_pass|prod_6__mults19_5|nx41961z4  = (low_pass_in_3_) # (low_pass_in_4_)

	.dataa(vcc),
	.datab(vcc),
	.datac(low_pass_in_3_),
	.datad(low_pass_in_4_),
	.cin(gnd),
	.combout(\low_pass|prod_6__mults19_5|nx41961z4 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_6__mults19_5|ix41961z52926 .lut_mask = 16'hFFF0;
defparam \low_pass|prod_6__mults19_5|ix41961z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N14
cycloneii_lcell_comb \low_pass|prod_6__mults19_5|ix41961z52923 (
// Equation(s):
// \low_pass|prod_6__mults19_5|nx41961z1  = (\low_pass|prod_6__mults19_5|nx41961z3  & (((\low_pass|prod_6__mults19_5|nx41961z5 ) # (!\low_pass|prod_6__mults19_5|nx41961z4 )))) # (!\low_pass|prod_6__mults19_5|nx41961z3  & 
// (\low_pass|prod_6__mults19_5|nx41961z2  $ (((!\low_pass|prod_6__mults19_5|nx41961z5  & \low_pass|prod_6__mults19_5|nx41961z4 )))))

	.dataa(\low_pass|prod_6__mults19_5|nx41961z3 ),
	.datab(\low_pass|prod_6__mults19_5|nx41961z2 ),
	.datac(\low_pass|prod_6__mults19_5|nx41961z5 ),
	.datad(\low_pass|prod_6__mults19_5|nx41961z4 ),
	.cin(gnd),
	.combout(\low_pass|prod_6__mults19_5|nx41961z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_6__mults19_5|ix41961z52923 .lut_mask = 16'hE1EE;
defparam \low_pass|prod_6__mults19_5|ix41961z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N16
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52940 (
// Equation(s):
// \low_pass|modgen_add_4|nx2247z35  = CARRY(\low_pass|prod_6__mults19_5|nx41961z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_6__mults19_5|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|modgen_add_4|nx2247z35 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52940 .lut_mask = 16'h00CC;
defparam \low_pass|modgen_add_4|ix2247z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N18
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_4|nx37973z1  = (\low_pass|modgen_add_4|nx2247z35  & (\low_pass|prod_6__mults19_5|nx44471z1  $ ((!\low_pass|prod_6__mults19_5|nx44479z1 )))) # (!\low_pass|modgen_add_4|nx2247z35  & ((\low_pass|prod_6__mults19_5|nx44471z1  $ 
// (\low_pass|prod_6__mults19_5|nx44479z1 )) # (GND)))
// \low_pass|modgen_add_4|nx2247z32  = CARRY((\low_pass|prod_6__mults19_5|nx44471z1  $ (!\low_pass|prod_6__mults19_5|nx44479z1 )) # (!\low_pass|modgen_add_4|nx2247z35 ))

	.dataa(\low_pass|prod_6__mults19_5|nx44471z1 ),
	.datab(\low_pass|prod_6__mults19_5|nx44479z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z35 ),
	.combout(\low_pass|modgen_add_4|nx37973z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z32 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52939 .lut_mask = 16'h969F;
defparam \low_pass|modgen_add_4|ix2247z52939 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N20
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_4|nx38970z1  = (((!\low_pass|modgen_add_4|nx2247z32 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z30  = CARRY(\low_pass|prod_1__mults19_1|nx42958z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_1__mults19_1|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z32 ),
	.combout(\low_pass|modgen_add_4|nx38970z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z30 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52938 .lut_mask = 16'h0FCC;
defparam \low_pass|modgen_add_4|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N22
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_4|nx39967z1  = (((\low_pass|modgen_add_4|nx2247z30 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z28  = CARRY(\low_pass|prod_1__mults19_1|nx43955z1 )

	.dataa(\low_pass|prod_1__mults19_1|nx43955z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z30 ),
	.combout(\low_pass|modgen_add_4|nx39967z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52937 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_4|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N26
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_4|nx41961z1  = (((\low_pass|modgen_add_4|nx2247z26 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z24  = CARRY(\low_pass|prod_1__mults19_1|nx45949z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_1__mults19_1|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z26 ),
	.combout(\low_pass|modgen_add_4|nx41961z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z24 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52935 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_4|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N0
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_9|nx37973z1  = (\low_pass|modgen_add_8|nx37973z1  & (\low_pass|modgen_add_4|nx37973z1  $ (VCC))) # (!\low_pass|modgen_add_8|nx37973z1  & (\low_pass|modgen_add_4|nx37973z1  & VCC))
// \low_pass|modgen_add_9|nx2247z46  = CARRY((\low_pass|modgen_add_8|nx37973z1  & \low_pass|modgen_add_4|nx37973z1 ))

	.dataa(\low_pass|modgen_add_8|nx37973z1 ),
	.datab(\low_pass|modgen_add_4|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_9|nx37973z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_9|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N2
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_9|nx38970z1  = (\low_pass|modgen_add_8|nx38970z1  & ((\low_pass|modgen_add_4|nx38970z1  & (\low_pass|modgen_add_9|nx2247z46  & VCC)) # (!\low_pass|modgen_add_4|nx38970z1  & (!\low_pass|modgen_add_9|nx2247z46 )))) # 
// (!\low_pass|modgen_add_8|nx38970z1  & ((\low_pass|modgen_add_4|nx38970z1  & (!\low_pass|modgen_add_9|nx2247z46 )) # (!\low_pass|modgen_add_4|nx38970z1  & ((\low_pass|modgen_add_9|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_9|nx2247z43  = CARRY((\low_pass|modgen_add_8|nx38970z1  & (!\low_pass|modgen_add_4|nx38970z1  & !\low_pass|modgen_add_9|nx2247z46 )) # (!\low_pass|modgen_add_8|nx38970z1  & ((!\low_pass|modgen_add_9|nx2247z46 ) # 
// (!\low_pass|modgen_add_4|nx38970z1 ))))

	.dataa(\low_pass|modgen_add_8|nx38970z1 ),
	.datab(\low_pass|modgen_add_4|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z46 ),
	.combout(\low_pass|modgen_add_9|nx38970z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_9|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N4
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_9|nx39967z1  = ((\low_pass|modgen_add_4|nx39967z1  $ (\low_pass|modgen_add_8|nx39967z1  $ (!\low_pass|modgen_add_9|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_9|nx2247z40  = CARRY((\low_pass|modgen_add_4|nx39967z1  & ((\low_pass|modgen_add_8|nx39967z1 ) # (!\low_pass|modgen_add_9|nx2247z43 ))) # (!\low_pass|modgen_add_4|nx39967z1  & (\low_pass|modgen_add_8|nx39967z1  & 
// !\low_pass|modgen_add_9|nx2247z43 )))

	.dataa(\low_pass|modgen_add_4|nx39967z1 ),
	.datab(\low_pass|modgen_add_8|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z43 ),
	.combout(\low_pass|modgen_add_9|nx39967z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_9|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N10
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_9|nx42958z1  = (\low_pass|modgen_add_4|nx42958z1  & ((\low_pass|modgen_add_8|nx42958z1  & (\low_pass|modgen_add_9|nx2247z34  & VCC)) # (!\low_pass|modgen_add_8|nx42958z1  & (!\low_pass|modgen_add_9|nx2247z34 )))) # 
// (!\low_pass|modgen_add_4|nx42958z1  & ((\low_pass|modgen_add_8|nx42958z1  & (!\low_pass|modgen_add_9|nx2247z34 )) # (!\low_pass|modgen_add_8|nx42958z1  & ((\low_pass|modgen_add_9|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_9|nx2247z31  = CARRY((\low_pass|modgen_add_4|nx42958z1  & (!\low_pass|modgen_add_8|nx42958z1  & !\low_pass|modgen_add_9|nx2247z34 )) # (!\low_pass|modgen_add_4|nx42958z1  & ((!\low_pass|modgen_add_9|nx2247z34 ) # 
// (!\low_pass|modgen_add_8|nx42958z1 ))))

	.dataa(\low_pass|modgen_add_4|nx42958z1 ),
	.datab(\low_pass|modgen_add_8|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z34 ),
	.combout(\low_pass|modgen_add_9|nx42958z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_9|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N0
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52939 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx4241z30  = CARRY((low_pass_in_0_ & low_pass_in_2_))

	.dataa(low_pass_in_0_),
	.datab(low_pass_in_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|prod_4__mults20_3|nx4241z30 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52939 .lut_mask = 16'h0088;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N2
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52938 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx4241z28  = CARRY((low_pass_in_1_ & (!low_pass_in_3_ & !\low_pass|prod_4__mults20_3|nx4241z30 )) # (!low_pass_in_1_ & ((!\low_pass|prod_4__mults20_3|nx4241z30 ) # (!low_pass_in_3_))))

	.dataa(low_pass_in_1_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z30 ),
	.combout(),
	.cout(\low_pass|prod_4__mults20_3|nx4241z28 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52938 .lut_mask = 16'h0017;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N4
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52937 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx4241z26  = CARRY((low_pass_in_4_ & ((low_pass_in_2_) # (!\low_pass|prod_4__mults20_3|nx4241z28 ))) # (!low_pass_in_4_ & (low_pass_in_2_ & !\low_pass|prod_4__mults20_3|nx4241z28 )))

	.dataa(low_pass_in_4_),
	.datab(low_pass_in_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z28 ),
	.combout(),
	.cout(\low_pass|prod_4__mults20_3|nx4241z26 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52937 .lut_mask = 16'h008E;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N6
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52936 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx42958z1  = (low_pass_in_5_ & ((low_pass_in_3_ & (\low_pass|prod_4__mults20_3|nx4241z26  & VCC)) # (!low_pass_in_3_ & (!\low_pass|prod_4__mults20_3|nx4241z26 )))) # (!low_pass_in_5_ & ((low_pass_in_3_ & 
// (!\low_pass|prod_4__mults20_3|nx4241z26 )) # (!low_pass_in_3_ & ((\low_pass|prod_4__mults20_3|nx4241z26 ) # (GND)))))
// \low_pass|prod_4__mults20_3|nx4241z24  = CARRY((low_pass_in_5_ & (!low_pass_in_3_ & !\low_pass|prod_4__mults20_3|nx4241z26 )) # (!low_pass_in_5_ & ((!\low_pass|prod_4__mults20_3|nx4241z26 ) # (!low_pass_in_3_))))

	.dataa(low_pass_in_5_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z26 ),
	.combout(\low_pass|prod_4__mults20_3|nx42958z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z24 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52936 .lut_mask = 16'h9617;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N10
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52934 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx44952z1  = (low_pass_in_5_ & ((low_pass_in_7_ & (\low_pass|prod_4__mults20_3|nx4241z22  & VCC)) # (!low_pass_in_7_ & (!\low_pass|prod_4__mults20_3|nx4241z22 )))) # (!low_pass_in_5_ & ((low_pass_in_7_ & 
// (!\low_pass|prod_4__mults20_3|nx4241z22 )) # (!low_pass_in_7_ & ((\low_pass|prod_4__mults20_3|nx4241z22 ) # (GND)))))
// \low_pass|prod_4__mults20_3|nx4241z20  = CARRY((low_pass_in_5_ & (!low_pass_in_7_ & !\low_pass|prod_4__mults20_3|nx4241z22 )) # (!low_pass_in_5_ & ((!\low_pass|prod_4__mults20_3|nx4241z22 ) # (!low_pass_in_7_))))

	.dataa(low_pass_in_5_),
	.datab(low_pass_in_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z22 ),
	.combout(\low_pass|prod_4__mults20_3|nx44952z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z20 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52934 .lut_mask = 16'h9617;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N12
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52933 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx45949z1  = ((low_pass_in_8_ $ (low_pass_in_6_ $ (!\low_pass|prod_4__mults20_3|nx4241z20 )))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z18  = CARRY((low_pass_in_8_ & ((low_pass_in_6_) # (!\low_pass|prod_4__mults20_3|nx4241z20 ))) # (!low_pass_in_8_ & (low_pass_in_6_ & !\low_pass|prod_4__mults20_3|nx4241z20 )))

	.dataa(low_pass_in_8_),
	.datab(low_pass_in_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z20 ),
	.combout(\low_pass|prod_4__mults20_3|nx45949z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z18 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52933 .lut_mask = 16'h698E;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N14
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52932 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx46946z1  = (low_pass_in_9_ & ((low_pass_in_7_ & (\low_pass|prod_4__mults20_3|nx4241z18  & VCC)) # (!low_pass_in_7_ & (!\low_pass|prod_4__mults20_3|nx4241z18 )))) # (!low_pass_in_9_ & ((low_pass_in_7_ & 
// (!\low_pass|prod_4__mults20_3|nx4241z18 )) # (!low_pass_in_7_ & ((\low_pass|prod_4__mults20_3|nx4241z18 ) # (GND)))))
// \low_pass|prod_4__mults20_3|nx4241z16  = CARRY((low_pass_in_9_ & (!low_pass_in_7_ & !\low_pass|prod_4__mults20_3|nx4241z18 )) # (!low_pass_in_9_ & ((!\low_pass|prod_4__mults20_3|nx4241z18 ) # (!low_pass_in_7_))))

	.dataa(low_pass_in_9_),
	.datab(low_pass_in_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z18 ),
	.combout(\low_pass|prod_4__mults20_3|nx46946z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z16 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52932 .lut_mask = 16'h9617;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N0
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_10|nx37973z1  = (low_pass_in_3_ & (\low_pass|prod_4__mults20_3|nx42958z1  $ (VCC))) # (!low_pass_in_3_ & (\low_pass|prod_4__mults20_3|nx42958z1  & VCC))
// \low_pass|modgen_add_10|nx2247z41  = CARRY((low_pass_in_3_ & \low_pass|prod_4__mults20_3|nx42958z1 ))

	.dataa(low_pass_in_3_),
	.datab(\low_pass|prod_4__mults20_3|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_10|nx37973z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z41 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_10|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N8
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_10|nx41961z1  = ((low_pass_in_7_ $ (\low_pass|prod_4__mults20_3|nx46946z1  $ (!\low_pass|modgen_add_10|nx2247z32 )))) # (GND)
// \low_pass|modgen_add_10|nx2247z29  = CARRY((low_pass_in_7_ & ((\low_pass|prod_4__mults20_3|nx46946z1 ) # (!\low_pass|modgen_add_10|nx2247z32 ))) # (!low_pass_in_7_ & (\low_pass|prod_4__mults20_3|nx46946z1  & !\low_pass|modgen_add_10|nx2247z32 )))

	.dataa(low_pass_in_7_),
	.datab(\low_pass|prod_4__mults20_3|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z32 ),
	.combout(\low_pass|modgen_add_10|nx41961z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z29 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_10|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N0
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52939 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx5238z30  = CARRY((low_pass_in_0_ & low_pass_in_3_))

	.dataa(low_pass_in_0_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|prod_0__mults21_0|nx5238z30 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52939 .lut_mask = 16'h0088;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N2
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52938 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx5238z28  = CARRY((low_pass_in_1_ & (!low_pass_in_4_ & !\low_pass|prod_0__mults21_0|nx5238z30 )) # (!low_pass_in_1_ & ((!\low_pass|prod_0__mults21_0|nx5238z30 ) # (!low_pass_in_4_))))

	.dataa(low_pass_in_1_),
	.datab(low_pass_in_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z30 ),
	.combout(),
	.cout(\low_pass|prod_0__mults21_0|nx5238z28 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52938 .lut_mask = 16'h0017;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N4
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52937 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx5238z26  = CARRY((low_pass_in_5_ & ((low_pass_in_2_) # (!\low_pass|prod_0__mults21_0|nx5238z28 ))) # (!low_pass_in_5_ & (low_pass_in_2_ & !\low_pass|prod_0__mults21_0|nx5238z28 )))

	.dataa(low_pass_in_5_),
	.datab(low_pass_in_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z28 ),
	.combout(),
	.cout(\low_pass|prod_0__mults21_0|nx5238z26 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52937 .lut_mask = 16'h008E;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N6
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52936 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx43955z1  = (low_pass_in_6_ & ((low_pass_in_3_ & (\low_pass|prod_0__mults21_0|nx5238z26  & VCC)) # (!low_pass_in_3_ & (!\low_pass|prod_0__mults21_0|nx5238z26 )))) # (!low_pass_in_6_ & ((low_pass_in_3_ & 
// (!\low_pass|prod_0__mults21_0|nx5238z26 )) # (!low_pass_in_3_ & ((\low_pass|prod_0__mults21_0|nx5238z26 ) # (GND)))))
// \low_pass|prod_0__mults21_0|nx5238z24  = CARRY((low_pass_in_6_ & (!low_pass_in_3_ & !\low_pass|prod_0__mults21_0|nx5238z26 )) # (!low_pass_in_6_ & ((!\low_pass|prod_0__mults21_0|nx5238z26 ) # (!low_pass_in_3_))))

	.dataa(low_pass_in_6_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z26 ),
	.combout(\low_pass|prod_0__mults21_0|nx43955z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z24 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52936 .lut_mask = 16'h9617;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N8
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52935 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx44952z1  = ((low_pass_in_7_ $ (low_pass_in_4_ $ (!\low_pass|prod_0__mults21_0|nx5238z24 )))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z22  = CARRY((low_pass_in_7_ & ((low_pass_in_4_) # (!\low_pass|prod_0__mults21_0|nx5238z24 ))) # (!low_pass_in_7_ & (low_pass_in_4_ & !\low_pass|prod_0__mults21_0|nx5238z24 )))

	.dataa(low_pass_in_7_),
	.datab(low_pass_in_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z24 ),
	.combout(\low_pass|prod_0__mults21_0|nx44952z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z22 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52935 .lut_mask = 16'h698E;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N4
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_11|nx39967z1  = ((\low_pass|prod_0__mults21_0|nx45949z1  $ (\low_pass|prod_1__mults19_1|nx44952z1  $ (!\low_pass|modgen_add_11|nx2247z42 )))) # (GND)
// \low_pass|modgen_add_11|nx2247z39  = CARRY((\low_pass|prod_0__mults21_0|nx45949z1  & ((\low_pass|prod_1__mults19_1|nx44952z1 ) # (!\low_pass|modgen_add_11|nx2247z42 ))) # (!\low_pass|prod_0__mults21_0|nx45949z1  & (\low_pass|prod_1__mults19_1|nx44952z1  & 
// !\low_pass|modgen_add_11|nx2247z42 )))

	.dataa(\low_pass|prod_0__mults21_0|nx45949z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z42 ),
	.combout(\low_pass|modgen_add_11|nx39967z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z39 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_11|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y19_N6
cycloneii_lcell_comb \low_pass|modgen_add_11|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_11|nx40964z1  = (\low_pass|prod_0__mults21_0|nx46946z1  & ((\low_pass|prod_1__mults19_1|nx45949z1  & (\low_pass|modgen_add_11|nx2247z39  & VCC)) # (!\low_pass|prod_1__mults19_1|nx45949z1  & (!\low_pass|modgen_add_11|nx2247z39 )))) # 
// (!\low_pass|prod_0__mults21_0|nx46946z1  & ((\low_pass|prod_1__mults19_1|nx45949z1  & (!\low_pass|modgen_add_11|nx2247z39 )) # (!\low_pass|prod_1__mults19_1|nx45949z1  & ((\low_pass|modgen_add_11|nx2247z39 ) # (GND)))))
// \low_pass|modgen_add_11|nx2247z36  = CARRY((\low_pass|prod_0__mults21_0|nx46946z1  & (!\low_pass|prod_1__mults19_1|nx45949z1  & !\low_pass|modgen_add_11|nx2247z39 )) # (!\low_pass|prod_0__mults21_0|nx46946z1  & ((!\low_pass|modgen_add_11|nx2247z39 ) # 
// (!\low_pass|prod_1__mults19_1|nx45949z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx46946z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_11|nx2247z39 ),
	.combout(\low_pass|modgen_add_11|nx40964z1 ),
	.cout(\low_pass|modgen_add_11|nx2247z36 ));
// synopsys translate_off
defparam \low_pass|modgen_add_11|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_11|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N14
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52941 (
// Equation(s):
// \low_pass|prod_2__mults20_2|nx6235z18  = CARRY((!low_pass_in_0_ & !low_pass_in_1_))

	.dataa(low_pass_in_0_),
	.datab(low_pass_in_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\low_pass|prod_2__mults20_2|nx6235z18 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52941 .lut_mask = 16'h0011;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N16
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52940 (
// Equation(s):
// \low_pass|prod_2__mults20_2|nx6235z17  = CARRY((low_pass_in_2_) # (!\low_pass|prod_2__mults20_2|nx6235z18 ))

	.dataa(vcc),
	.datab(low_pass_in_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z18 ),
	.combout(),
	.cout(\low_pass|prod_2__mults20_2|nx6235z17 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52940 .lut_mask = 16'h00CF;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52940 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N18
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52939 (
// Equation(s):
// \low_pass|prod_2__mults20_2|nx6235z16  = CARRY((low_pass_in_0_ & ((!\low_pass|prod_2__mults20_2|nx6235z17 ) # (!low_pass_in_3_))) # (!low_pass_in_0_ & (!low_pass_in_3_ & !\low_pass|prod_2__mults20_2|nx6235z17 )))

	.dataa(low_pass_in_0_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z17 ),
	.combout(),
	.cout(\low_pass|prod_2__mults20_2|nx6235z16 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52939 .lut_mask = 16'h002B;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52939 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N20
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52938 (
// Equation(s):
// \low_pass|prod_2__mults20_2|nx6235z15  = CARRY((low_pass_in_4_ & ((!\low_pass|prod_2__mults20_2|nx6235z16 ) # (!low_pass_in_1_))) # (!low_pass_in_4_ & (!low_pass_in_1_ & !\low_pass|prod_2__mults20_2|nx6235z16 )))

	.dataa(low_pass_in_4_),
	.datab(low_pass_in_1_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z16 ),
	.combout(),
	.cout(\low_pass|prod_2__mults20_2|nx6235z15 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52938 .lut_mask = 16'h002B;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N22
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52937 (
// Equation(s):
// \low_pass|prod_2__mults20_2|nx6235z14  = CARRY((low_pass_in_5_ & (low_pass_in_2_ & !\low_pass|prod_2__mults20_2|nx6235z15 )) # (!low_pass_in_5_ & ((low_pass_in_2_) # (!\low_pass|prod_2__mults20_2|nx6235z15 ))))

	.dataa(low_pass_in_5_),
	.datab(low_pass_in_2_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z15 ),
	.combout(),
	.cout(\low_pass|prod_2__mults20_2|nx6235z14 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52937 .lut_mask = 16'h004D;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N24
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52936 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_5_  = (low_pass_in_6_ & ((low_pass_in_3_ & (!\low_pass|prod_2__mults20_2|nx6235z14 )) # (!low_pass_in_3_ & ((\low_pass|prod_2__mults20_2|nx6235z14 ) # (GND))))) # (!low_pass_in_6_ & ((low_pass_in_3_ & 
// (\low_pass|prod_2__mults20_2|nx6235z14  & VCC)) # (!low_pass_in_3_ & (!\low_pass|prod_2__mults20_2|nx6235z14 ))))
// \low_pass|prod_2__mults20_2|nx6235z13  = CARRY((low_pass_in_6_ & ((!\low_pass|prod_2__mults20_2|nx6235z14 ) # (!low_pass_in_3_))) # (!low_pass_in_6_ & (!low_pass_in_3_ & !\low_pass|prod_2__mults20_2|nx6235z14 )))

	.dataa(low_pass_in_6_),
	.datab(low_pass_in_3_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z14 ),
	.combout(\low_pass|prod_2__mults20_2|d_5_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z13 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52936 .lut_mask = 16'h692B;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N26
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52935 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_6_  = ((low_pass_in_4_ $ (low_pass_in_7_ $ (\low_pass|prod_2__mults20_2|nx6235z13 )))) # (GND)
// \low_pass|prod_2__mults20_2|nx6235z12  = CARRY((low_pass_in_4_ & ((!\low_pass|prod_2__mults20_2|nx6235z13 ) # (!low_pass_in_7_))) # (!low_pass_in_4_ & (!low_pass_in_7_ & !\low_pass|prod_2__mults20_2|nx6235z13 )))

	.dataa(low_pass_in_4_),
	.datab(low_pass_in_7_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z13 ),
	.combout(\low_pass|prod_2__mults20_2|d_6_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z12 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52935 .lut_mask = 16'h962B;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N2
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_12|nx38970z1  = (\low_pass|modgen_add_11|nx38970z1  & ((\low_pass|prod_2__mults20_2|d_6_  & (\low_pass|modgen_add_12|nx2247z45  & VCC)) # (!\low_pass|prod_2__mults20_2|d_6_  & (!\low_pass|modgen_add_12|nx2247z45 )))) # 
// (!\low_pass|modgen_add_11|nx38970z1  & ((\low_pass|prod_2__mults20_2|d_6_  & (!\low_pass|modgen_add_12|nx2247z45 )) # (!\low_pass|prod_2__mults20_2|d_6_  & ((\low_pass|modgen_add_12|nx2247z45 ) # (GND)))))
// \low_pass|modgen_add_12|nx2247z42  = CARRY((\low_pass|modgen_add_11|nx38970z1  & (!\low_pass|prod_2__mults20_2|d_6_  & !\low_pass|modgen_add_12|nx2247z45 )) # (!\low_pass|modgen_add_11|nx38970z1  & ((!\low_pass|modgen_add_12|nx2247z45 ) # 
// (!\low_pass|prod_2__mults20_2|d_6_ ))))

	.dataa(\low_pass|modgen_add_11|nx38970z1 ),
	.datab(\low_pass|prod_2__mults20_2|d_6_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z45 ),
	.combout(\low_pass|modgen_add_12|nx38970z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z42 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_12|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N4
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_12|nx39967z1  = ((\low_pass|prod_2__mults20_2|d_7_  $ (\low_pass|modgen_add_11|nx39967z1  $ (!\low_pass|modgen_add_12|nx2247z42 )))) # (GND)
// \low_pass|modgen_add_12|nx2247z39  = CARRY((\low_pass|prod_2__mults20_2|d_7_  & ((\low_pass|modgen_add_11|nx39967z1 ) # (!\low_pass|modgen_add_12|nx2247z42 ))) # (!\low_pass|prod_2__mults20_2|d_7_  & (\low_pass|modgen_add_11|nx39967z1  & 
// !\low_pass|modgen_add_12|nx2247z42 )))

	.dataa(\low_pass|prod_2__mults20_2|d_7_ ),
	.datab(\low_pass|modgen_add_11|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z42 ),
	.combout(\low_pass|modgen_add_12|nx39967z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z39 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_12|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y19_N6
cycloneii_lcell_comb \low_pass|modgen_add_12|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_12|nx40964z1  = (\low_pass|prod_2__mults20_2|d_8_  & ((\low_pass|modgen_add_11|nx40964z1  & (\low_pass|modgen_add_12|nx2247z39  & VCC)) # (!\low_pass|modgen_add_11|nx40964z1  & (!\low_pass|modgen_add_12|nx2247z39 )))) # 
// (!\low_pass|prod_2__mults20_2|d_8_  & ((\low_pass|modgen_add_11|nx40964z1  & (!\low_pass|modgen_add_12|nx2247z39 )) # (!\low_pass|modgen_add_11|nx40964z1  & ((\low_pass|modgen_add_12|nx2247z39 ) # (GND)))))
// \low_pass|modgen_add_12|nx2247z36  = CARRY((\low_pass|prod_2__mults20_2|d_8_  & (!\low_pass|modgen_add_11|nx40964z1  & !\low_pass|modgen_add_12|nx2247z39 )) # (!\low_pass|prod_2__mults20_2|d_8_  & ((!\low_pass|modgen_add_12|nx2247z39 ) # 
// (!\low_pass|modgen_add_11|nx40964z1 ))))

	.dataa(\low_pass|prod_2__mults20_2|d_8_ ),
	.datab(\low_pass|modgen_add_11|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_12|nx2247z39 ),
	.combout(\low_pass|modgen_add_12|nx40964z1 ),
	.cout(\low_pass|modgen_add_12|nx2247z36 ));
// synopsys translate_off
defparam \low_pass|modgen_add_12|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_12|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N6
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_13|nx40964z1  = (\low_pass|modgen_add_10|nx40964z1  & ((\low_pass|modgen_add_12|nx40964z1  & (\low_pass|modgen_add_13|nx2247z40  & VCC)) # (!\low_pass|modgen_add_12|nx40964z1  & (!\low_pass|modgen_add_13|nx2247z40 )))) # 
// (!\low_pass|modgen_add_10|nx40964z1  & ((\low_pass|modgen_add_12|nx40964z1  & (!\low_pass|modgen_add_13|nx2247z40 )) # (!\low_pass|modgen_add_12|nx40964z1  & ((\low_pass|modgen_add_13|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_13|nx2247z37  = CARRY((\low_pass|modgen_add_10|nx40964z1  & (!\low_pass|modgen_add_12|nx40964z1  & !\low_pass|modgen_add_13|nx2247z40 )) # (!\low_pass|modgen_add_10|nx40964z1  & ((!\low_pass|modgen_add_13|nx2247z40 ) # 
// (!\low_pass|modgen_add_12|nx40964z1 ))))

	.dataa(\low_pass|modgen_add_10|nx40964z1 ),
	.datab(\low_pass|modgen_add_12|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z40 ),
	.combout(\low_pass|modgen_add_13|nx40964z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_13|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N8
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_13|nx41961z1  = ((\low_pass|modgen_add_12|nx41961z1  $ (\low_pass|modgen_add_10|nx41961z1  $ (!\low_pass|modgen_add_13|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_13|nx2247z34  = CARRY((\low_pass|modgen_add_12|nx41961z1  & ((\low_pass|modgen_add_10|nx41961z1 ) # (!\low_pass|modgen_add_13|nx2247z37 ))) # (!\low_pass|modgen_add_12|nx41961z1  & (\low_pass|modgen_add_10|nx41961z1  & 
// !\low_pass|modgen_add_13|nx2247z37 )))

	.dataa(\low_pass|modgen_add_12|nx41961z1 ),
	.datab(\low_pass|modgen_add_10|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z37 ),
	.combout(\low_pass|modgen_add_13|nx41961z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_13|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N0
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_14|nx37973z1  = (\low_pass|modgen_add_13|nx37973z1  & (\low_pass|modgen_add_9|nx37973z1  $ (VCC))) # (!\low_pass|modgen_add_13|nx37973z1  & (\low_pass|modgen_add_9|nx37973z1  & VCC))
// \low_pass|modgen_add_14|nx2247z46  = CARRY((\low_pass|modgen_add_13|nx37973z1  & \low_pass|modgen_add_9|nx37973z1 ))

	.dataa(\low_pass|modgen_add_13|nx37973z1 ),
	.datab(\low_pass|modgen_add_9|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_14|nx37973z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_14|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N2
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_14|nx38970z1  = (\low_pass|modgen_add_13|nx38970z1  & ((\low_pass|modgen_add_9|nx38970z1  & (\low_pass|modgen_add_14|nx2247z46  & VCC)) # (!\low_pass|modgen_add_9|nx38970z1  & (!\low_pass|modgen_add_14|nx2247z46 )))) # 
// (!\low_pass|modgen_add_13|nx38970z1  & ((\low_pass|modgen_add_9|nx38970z1  & (!\low_pass|modgen_add_14|nx2247z46 )) # (!\low_pass|modgen_add_9|nx38970z1  & ((\low_pass|modgen_add_14|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_14|nx2247z43  = CARRY((\low_pass|modgen_add_13|nx38970z1  & (!\low_pass|modgen_add_9|nx38970z1  & !\low_pass|modgen_add_14|nx2247z46 )) # (!\low_pass|modgen_add_13|nx38970z1  & ((!\low_pass|modgen_add_14|nx2247z46 ) # 
// (!\low_pass|modgen_add_9|nx38970z1 ))))

	.dataa(\low_pass|modgen_add_13|nx38970z1 ),
	.datab(\low_pass|modgen_add_9|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z46 ),
	.combout(\low_pass|modgen_add_14|nx38970z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_14|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N8
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_14|nx41961z1  = ((\low_pass|modgen_add_9|nx41961z1  $ (\low_pass|modgen_add_13|nx41961z1  $ (!\low_pass|modgen_add_14|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_14|nx2247z34  = CARRY((\low_pass|modgen_add_9|nx41961z1  & ((\low_pass|modgen_add_13|nx41961z1 ) # (!\low_pass|modgen_add_14|nx2247z37 ))) # (!\low_pass|modgen_add_9|nx41961z1  & (\low_pass|modgen_add_13|nx41961z1  & 
// !\low_pass|modgen_add_14|nx2247z37 )))

	.dataa(\low_pass|modgen_add_9|nx41961z1 ),
	.datab(\low_pass|modgen_add_13|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z37 ),
	.combout(\low_pass|modgen_add_14|nx41961z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_14|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N10
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_14|nx42958z1  = (\low_pass|modgen_add_13|nx42958z1  & ((\low_pass|modgen_add_9|nx42958z1  & (\low_pass|modgen_add_14|nx2247z34  & VCC)) # (!\low_pass|modgen_add_9|nx42958z1  & (!\low_pass|modgen_add_14|nx2247z34 )))) # 
// (!\low_pass|modgen_add_13|nx42958z1  & ((\low_pass|modgen_add_9|nx42958z1  & (!\low_pass|modgen_add_14|nx2247z34 )) # (!\low_pass|modgen_add_9|nx42958z1  & ((\low_pass|modgen_add_14|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_14|nx2247z31  = CARRY((\low_pass|modgen_add_13|nx42958z1  & (!\low_pass|modgen_add_9|nx42958z1  & !\low_pass|modgen_add_14|nx2247z34 )) # (!\low_pass|modgen_add_13|nx42958z1  & ((!\low_pass|modgen_add_14|nx2247z34 ) # 
// (!\low_pass|modgen_add_9|nx42958z1 ))))

	.dataa(\low_pass|modgen_add_13|nx42958z1 ),
	.datab(\low_pass|modgen_add_9|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z34 ),
	.combout(\low_pass|modgen_add_14|nx42958z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_14|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y18_N28
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52934 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_7_  = (low_pass_in_8_ & ((low_pass_in_5_ & (!\low_pass|prod_2__mults20_2|nx6235z12 )) # (!low_pass_in_5_ & ((\low_pass|prod_2__mults20_2|nx6235z12 ) # (GND))))) # (!low_pass_in_8_ & ((low_pass_in_5_ & 
// (\low_pass|prod_2__mults20_2|nx6235z12  & VCC)) # (!low_pass_in_5_ & (!\low_pass|prod_2__mults20_2|nx6235z12 ))))
// \low_pass|prod_2__mults20_2|nx6235z11  = CARRY((low_pass_in_8_ & ((!\low_pass|prod_2__mults20_2|nx6235z12 ) # (!low_pass_in_5_))) # (!low_pass_in_8_ & (!low_pass_in_5_ & !\low_pass|prod_2__mults20_2|nx6235z12 )))

	.dataa(low_pass_in_8_),
	.datab(low_pass_in_5_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z12 ),
	.combout(\low_pass|prod_2__mults20_2|d_7_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z11 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52934 .lut_mask = 16'h692B;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N0
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_1|nx37973z1  = (low_pass_in_3_ & (\low_pass|prod_2__mults20_2|d_5_  $ (VCC))) # (!low_pass_in_3_ & (\low_pass|prod_2__mults20_2|d_5_  & VCC))
// \low_pass|modgen_add_1|nx2247z41  = CARRY((low_pass_in_3_ & \low_pass|prod_2__mults20_2|d_5_ ))

	.dataa(low_pass_in_3_),
	.datab(\low_pass|prod_2__mults20_2|d_5_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_1|nx37973z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z41 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_1|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N2
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_1|nx38970z1  = (\low_pass|prod_2__mults20_2|d_6_  & ((low_pass_in_4_ & (\low_pass|modgen_add_1|nx2247z41  & VCC)) # (!low_pass_in_4_ & (!\low_pass|modgen_add_1|nx2247z41 )))) # (!\low_pass|prod_2__mults20_2|d_6_  & ((low_pass_in_4_ & 
// (!\low_pass|modgen_add_1|nx2247z41 )) # (!low_pass_in_4_ & ((\low_pass|modgen_add_1|nx2247z41 ) # (GND)))))
// \low_pass|modgen_add_1|nx2247z38  = CARRY((\low_pass|prod_2__mults20_2|d_6_  & (!low_pass_in_4_ & !\low_pass|modgen_add_1|nx2247z41 )) # (!\low_pass|prod_2__mults20_2|d_6_  & ((!\low_pass|modgen_add_1|nx2247z41 ) # (!low_pass_in_4_))))

	.dataa(\low_pass|prod_2__mults20_2|d_6_ ),
	.datab(low_pass_in_4_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z41 ),
	.combout(\low_pass|modgen_add_1|nx38970z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z38 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_1|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N4
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_1|nx39967z1  = ((low_pass_in_5_ $ (\low_pass|prod_2__mults20_2|d_7_  $ (!\low_pass|modgen_add_1|nx2247z38 )))) # (GND)
// \low_pass|modgen_add_1|nx2247z35  = CARRY((low_pass_in_5_ & ((\low_pass|prod_2__mults20_2|d_7_ ) # (!\low_pass|modgen_add_1|nx2247z38 ))) # (!low_pass_in_5_ & (\low_pass|prod_2__mults20_2|d_7_  & !\low_pass|modgen_add_1|nx2247z38 )))

	.dataa(low_pass_in_5_),
	.datab(\low_pass|prod_2__mults20_2|d_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z38 ),
	.combout(\low_pass|modgen_add_1|nx39967z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z35 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_1|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N6
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_1|nx40964z1  = (\low_pass|prod_2__mults20_2|d_8_  & ((low_pass_in_6_ & (\low_pass|modgen_add_1|nx2247z35  & VCC)) # (!low_pass_in_6_ & (!\low_pass|modgen_add_1|nx2247z35 )))) # (!\low_pass|prod_2__mults20_2|d_8_  & ((low_pass_in_6_ & 
// (!\low_pass|modgen_add_1|nx2247z35 )) # (!low_pass_in_6_ & ((\low_pass|modgen_add_1|nx2247z35 ) # (GND)))))
// \low_pass|modgen_add_1|nx2247z32  = CARRY((\low_pass|prod_2__mults20_2|d_8_  & (!low_pass_in_6_ & !\low_pass|modgen_add_1|nx2247z35 )) # (!\low_pass|prod_2__mults20_2|d_8_  & ((!\low_pass|modgen_add_1|nx2247z35 ) # (!low_pass_in_6_))))

	.dataa(\low_pass|prod_2__mults20_2|d_8_ ),
	.datab(low_pass_in_6_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z35 ),
	.combout(\low_pass|modgen_add_1|nx40964z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z32 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_1|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N2
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52938 (
// Equation(s):
// \low_pass|modgen_add_2|nx38970z1  = (\low_pass|modgen_add_0|nx38970z1  & ((\low_pass|modgen_add_1|nx38970z1  & (\low_pass|modgen_add_2|nx2247z46  & VCC)) # (!\low_pass|modgen_add_1|nx38970z1  & (!\low_pass|modgen_add_2|nx2247z46 )))) # 
// (!\low_pass|modgen_add_0|nx38970z1  & ((\low_pass|modgen_add_1|nx38970z1  & (!\low_pass|modgen_add_2|nx2247z46 )) # (!\low_pass|modgen_add_1|nx38970z1  & ((\low_pass|modgen_add_2|nx2247z46 ) # (GND)))))
// \low_pass|modgen_add_2|nx2247z43  = CARRY((\low_pass|modgen_add_0|nx38970z1  & (!\low_pass|modgen_add_1|nx38970z1  & !\low_pass|modgen_add_2|nx2247z46 )) # (!\low_pass|modgen_add_0|nx38970z1  & ((!\low_pass|modgen_add_2|nx2247z46 ) # 
// (!\low_pass|modgen_add_1|nx38970z1 ))))

	.dataa(\low_pass|modgen_add_0|nx38970z1 ),
	.datab(\low_pass|modgen_add_1|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z46 ),
	.combout(\low_pass|modgen_add_2|nx38970z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z43 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52938 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_2|ix2247z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N4
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_2|nx39967z1  = ((\low_pass|modgen_add_0|nx39967z1  $ (\low_pass|modgen_add_1|nx39967z1  $ (!\low_pass|modgen_add_2|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_2|nx2247z40  = CARRY((\low_pass|modgen_add_0|nx39967z1  & ((\low_pass|modgen_add_1|nx39967z1 ) # (!\low_pass|modgen_add_2|nx2247z43 ))) # (!\low_pass|modgen_add_0|nx39967z1  & (\low_pass|modgen_add_1|nx39967z1  & 
// !\low_pass|modgen_add_2|nx2247z43 )))

	.dataa(\low_pass|modgen_add_0|nx39967z1 ),
	.datab(\low_pass|modgen_add_1|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z43 ),
	.combout(\low_pass|modgen_add_2|nx39967z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_2|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N6
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_2|nx40964z1  = (\low_pass|modgen_add_0|nx40964z1  & ((\low_pass|modgen_add_1|nx40964z1  & (\low_pass|modgen_add_2|nx2247z40  & VCC)) # (!\low_pass|modgen_add_1|nx40964z1  & (!\low_pass|modgen_add_2|nx2247z40 )))) # 
// (!\low_pass|modgen_add_0|nx40964z1  & ((\low_pass|modgen_add_1|nx40964z1  & (!\low_pass|modgen_add_2|nx2247z40 )) # (!\low_pass|modgen_add_1|nx40964z1  & ((\low_pass|modgen_add_2|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_2|nx2247z37  = CARRY((\low_pass|modgen_add_0|nx40964z1  & (!\low_pass|modgen_add_1|nx40964z1  & !\low_pass|modgen_add_2|nx2247z40 )) # (!\low_pass|modgen_add_0|nx40964z1  & ((!\low_pass|modgen_add_2|nx2247z40 ) # 
// (!\low_pass|modgen_add_1|nx40964z1 ))))

	.dataa(\low_pass|modgen_add_0|nx40964z1 ),
	.datab(\low_pass|modgen_add_1|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z40 ),
	.combout(\low_pass|modgen_add_2|nx40964z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_2|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N0
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52939 (
// Equation(s):
// \low_pass|modgen_add_5|nx37973z1  = (\low_pass|modgen_add_3|nx37973z1  & (\low_pass|modgen_add_4|nx37973z1  $ (VCC))) # (!\low_pass|modgen_add_3|nx37973z1  & (\low_pass|modgen_add_4|nx37973z1  & VCC))
// \low_pass|modgen_add_5|nx2247z46  = CARRY((\low_pass|modgen_add_3|nx37973z1  & \low_pass|modgen_add_4|nx37973z1 ))

	.dataa(\low_pass|modgen_add_3|nx37973z1 ),
	.datab(\low_pass|modgen_add_4|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass|modgen_add_5|nx37973z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z46 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52939 .lut_mask = 16'h6688;
defparam \low_pass|modgen_add_5|ix2247z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N4
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52937 (
// Equation(s):
// \low_pass|modgen_add_6|nx39967z1  = ((\low_pass|modgen_add_5|nx39967z1  $ (\low_pass|modgen_add_2|nx39967z1  $ (!\low_pass|modgen_add_6|nx2247z43 )))) # (GND)
// \low_pass|modgen_add_6|nx2247z40  = CARRY((\low_pass|modgen_add_5|nx39967z1  & ((\low_pass|modgen_add_2|nx39967z1 ) # (!\low_pass|modgen_add_6|nx2247z43 ))) # (!\low_pass|modgen_add_5|nx39967z1  & (\low_pass|modgen_add_2|nx39967z1  & 
// !\low_pass|modgen_add_6|nx2247z43 )))

	.dataa(\low_pass|modgen_add_5|nx39967z1 ),
	.datab(\low_pass|modgen_add_2|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z43 ),
	.combout(\low_pass|modgen_add_6|nx39967z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z40 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52937 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_6|ix2247z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N6
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_6|nx40964z1  = (\low_pass|modgen_add_5|nx40964z1  & ((\low_pass|modgen_add_2|nx40964z1  & (\low_pass|modgen_add_6|nx2247z40  & VCC)) # (!\low_pass|modgen_add_2|nx40964z1  & (!\low_pass|modgen_add_6|nx2247z40 )))) # 
// (!\low_pass|modgen_add_5|nx40964z1  & ((\low_pass|modgen_add_2|nx40964z1  & (!\low_pass|modgen_add_6|nx2247z40 )) # (!\low_pass|modgen_add_2|nx40964z1  & ((\low_pass|modgen_add_6|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_6|nx2247z37  = CARRY((\low_pass|modgen_add_5|nx40964z1  & (!\low_pass|modgen_add_2|nx40964z1  & !\low_pass|modgen_add_6|nx2247z40 )) # (!\low_pass|modgen_add_5|nx40964z1  & ((!\low_pass|modgen_add_6|nx2247z40 ) # 
// (!\low_pass|modgen_add_2|nx40964z1 ))))

	.dataa(\low_pass|modgen_add_5|nx40964z1 ),
	.datab(\low_pass|modgen_add_2|nx40964z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z40 ),
	.combout(\low_pass|modgen_add_6|nx40964z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_6|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N10
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_15|nx42958z1  = (\low_pass|modgen_add_6|nx42958z1  & ((\low_pass|modgen_add_14|nx42958z1  & (\low_pass|modgen_add_15|nx2247z34  & VCC)) # (!\low_pass|modgen_add_14|nx42958z1  & (!\low_pass|modgen_add_15|nx2247z34 )))) # 
// (!\low_pass|modgen_add_6|nx42958z1  & ((\low_pass|modgen_add_14|nx42958z1  & (!\low_pass|modgen_add_15|nx2247z34 )) # (!\low_pass|modgen_add_14|nx42958z1  & ((\low_pass|modgen_add_15|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_15|nx2247z31  = CARRY((\low_pass|modgen_add_6|nx42958z1  & (!\low_pass|modgen_add_14|nx42958z1  & !\low_pass|modgen_add_15|nx2247z34 )) # (!\low_pass|modgen_add_6|nx42958z1  & ((!\low_pass|modgen_add_15|nx2247z34 ) # 
// (!\low_pass|modgen_add_14|nx42958z1 ))))

	.dataa(\low_pass|modgen_add_6|nx42958z1 ),
	.datab(\low_pass|modgen_add_14|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z34 ),
	.combout(\low_pass|modgen_add_15|nx42958z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_15|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y20_N27
cycloneii_lcell_ff reg_audio_out_5_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_5_),
	.sdata(\low_pass|modgen_add_15|nx42958z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_5_));

// Location: LCCOMB_X28_Y20_N14
cycloneii_lcell_comb ix24999z52926(
// Equation(s):
// nx24999z3 = (bit_position_0_ & (audio_out_4_ & (bit_position_1_))) # (!bit_position_0_ & (((audio_out_5_) # (!bit_position_1_))))

	.dataa(audio_out_4_),
	.datab(bit_position_0_),
	.datac(bit_position_1_),
	.datad(audio_out_5_),
	.cin(gnd),
	.combout(nx24999z3),
	.cout());
// synopsys translate_off
defparam ix24999z52926.lut_mask = 16'hB383;
defparam ix24999z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N8
cycloneii_lcell_comb ix60126z52923(
// Equation(s):
// audio_out_1n1ss1_7_ = (\sw~combout [17] & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [3])) # (!\sw~combout [17] & ((\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [7])))

	.dataa(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [3]),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [7]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_7_),
	.cout());
// synopsys translate_off
defparam ix60126z52923.lut_mask = 16'hBB88;
defparam ix60126z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N2
cycloneii_lcell_comb \low_pass_in_9_~feeder (
// Equation(s):
// \low_pass_in_9_~feeder_combout  = \u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [9]

	.dataa(vcc),
	.datab(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [9]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\low_pass_in_9_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \low_pass_in_9_~feeder .lut_mask = 16'hCCCC;
defparam \low_pass_in_9_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X24_Y18_N3
cycloneii_lcell_ff reg_low_pass_in_9_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\low_pass_in_9_~feeder_combout ),
	.sdata(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [5]),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [17]),
	.ena(\sw~combout [16]),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(low_pass_in_9_));

// Location: LCCOMB_X30_Y18_N20
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52929 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx64792z1  = ((low_pass_in_15_ $ (low_pass_in_10_ $ (!\low_pass|prod_4__mults20_3|nx4241z12 )))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z10  = CARRY((low_pass_in_15_ & ((low_pass_in_10_) # (!\low_pass|prod_4__mults20_3|nx4241z12 ))) # (!low_pass_in_15_ & (low_pass_in_10_ & !\low_pass|prod_4__mults20_3|nx4241z12 )))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z12 ),
	.combout(\low_pass|prod_4__mults20_3|nx64792z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z10 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52929 .lut_mask = 16'h698E;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N10
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_10|nx42958z1  = (\low_pass|prod_4__mults20_3|nx62798z1  & ((low_pass_in_8_ & (\low_pass|modgen_add_10|nx2247z29  & VCC)) # (!low_pass_in_8_ & (!\low_pass|modgen_add_10|nx2247z29 )))) # (!\low_pass|prod_4__mults20_3|nx62798z1  & 
// ((low_pass_in_8_ & (!\low_pass|modgen_add_10|nx2247z29 )) # (!low_pass_in_8_ & ((\low_pass|modgen_add_10|nx2247z29 ) # (GND)))))
// \low_pass|modgen_add_10|nx2247z26  = CARRY((\low_pass|prod_4__mults20_3|nx62798z1  & (!low_pass_in_8_ & !\low_pass|modgen_add_10|nx2247z29 )) # (!\low_pass|prod_4__mults20_3|nx62798z1  & ((!\low_pass|modgen_add_10|nx2247z29 ) # (!low_pass_in_8_))))

	.dataa(\low_pass|prod_4__mults20_3|nx62798z1 ),
	.datab(low_pass_in_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z29 ),
	.combout(\low_pass|modgen_add_10|nx42958z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z26 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_10|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N12
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_10|nx43955z1  = ((\low_pass|prod_4__mults20_3|nx63795z1  $ (low_pass_in_9_ $ (!\low_pass|modgen_add_10|nx2247z26 )))) # (GND)
// \low_pass|modgen_add_10|nx2247z23  = CARRY((\low_pass|prod_4__mults20_3|nx63795z1  & ((low_pass_in_9_) # (!\low_pass|modgen_add_10|nx2247z26 ))) # (!\low_pass|prod_4__mults20_3|nx63795z1  & (low_pass_in_9_ & !\low_pass|modgen_add_10|nx2247z26 )))

	.dataa(\low_pass|prod_4__mults20_3|nx63795z1 ),
	.datab(low_pass_in_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z26 ),
	.combout(\low_pass|modgen_add_10|nx43955z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z23 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_10|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N14
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_10|nx44952z1  = (low_pass_in_10_ & ((\low_pass|prod_4__mults20_3|nx64792z1  & (\low_pass|modgen_add_10|nx2247z23  & VCC)) # (!\low_pass|prod_4__mults20_3|nx64792z1  & (!\low_pass|modgen_add_10|nx2247z23 )))) # (!low_pass_in_10_ & 
// ((\low_pass|prod_4__mults20_3|nx64792z1  & (!\low_pass|modgen_add_10|nx2247z23 )) # (!\low_pass|prod_4__mults20_3|nx64792z1  & ((\low_pass|modgen_add_10|nx2247z23 ) # (GND)))))
// \low_pass|modgen_add_10|nx2247z20  = CARRY((low_pass_in_10_ & (!\low_pass|prod_4__mults20_3|nx64792z1  & !\low_pass|modgen_add_10|nx2247z23 )) # (!low_pass_in_10_ & ((!\low_pass|modgen_add_10|nx2247z23 ) # (!\low_pass|prod_4__mults20_3|nx64792z1 ))))

	.dataa(low_pass_in_10_),
	.datab(\low_pass|prod_4__mults20_3|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z23 ),
	.combout(\low_pass|modgen_add_10|nx44952z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z20 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_10|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N12
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_13|nx43955z1  = ((\low_pass|modgen_add_12|nx43955z1  $ (\low_pass|modgen_add_10|nx43955z1  $ (!\low_pass|modgen_add_13|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_13|nx2247z28  = CARRY((\low_pass|modgen_add_12|nx43955z1  & ((\low_pass|modgen_add_10|nx43955z1 ) # (!\low_pass|modgen_add_13|nx2247z31 ))) # (!\low_pass|modgen_add_12|nx43955z1  & (\low_pass|modgen_add_10|nx43955z1  & 
// !\low_pass|modgen_add_13|nx2247z31 )))

	.dataa(\low_pass|modgen_add_12|nx43955z1 ),
	.datab(\low_pass|modgen_add_10|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z31 ),
	.combout(\low_pass|modgen_add_13|nx43955z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_13|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N14
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_13|nx44952z1  = (\low_pass|modgen_add_12|nx44952z1  & ((\low_pass|modgen_add_10|nx44952z1  & (\low_pass|modgen_add_13|nx2247z28  & VCC)) # (!\low_pass|modgen_add_10|nx44952z1  & (!\low_pass|modgen_add_13|nx2247z28 )))) # 
// (!\low_pass|modgen_add_12|nx44952z1  & ((\low_pass|modgen_add_10|nx44952z1  & (!\low_pass|modgen_add_13|nx2247z28 )) # (!\low_pass|modgen_add_10|nx44952z1  & ((\low_pass|modgen_add_13|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_13|nx2247z25  = CARRY((\low_pass|modgen_add_12|nx44952z1  & (!\low_pass|modgen_add_10|nx44952z1  & !\low_pass|modgen_add_13|nx2247z28 )) # (!\low_pass|modgen_add_12|nx44952z1  & ((!\low_pass|modgen_add_13|nx2247z28 ) # 
// (!\low_pass|modgen_add_10|nx44952z1 ))))

	.dataa(\low_pass|modgen_add_12|nx44952z1 ),
	.datab(\low_pass|modgen_add_10|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z28 ),
	.combout(\low_pass|modgen_add_13|nx44952z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_13|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N14
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_14|nx44952z1  = (\low_pass|modgen_add_9|nx44952z1  & ((\low_pass|modgen_add_13|nx44952z1  & (\low_pass|modgen_add_14|nx2247z28  & VCC)) # (!\low_pass|modgen_add_13|nx44952z1  & (!\low_pass|modgen_add_14|nx2247z28 )))) # 
// (!\low_pass|modgen_add_9|nx44952z1  & ((\low_pass|modgen_add_13|nx44952z1  & (!\low_pass|modgen_add_14|nx2247z28 )) # (!\low_pass|modgen_add_13|nx44952z1  & ((\low_pass|modgen_add_14|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_14|nx2247z25  = CARRY((\low_pass|modgen_add_9|nx44952z1  & (!\low_pass|modgen_add_13|nx44952z1  & !\low_pass|modgen_add_14|nx2247z28 )) # (!\low_pass|modgen_add_9|nx44952z1  & ((!\low_pass|modgen_add_14|nx2247z28 ) # 
// (!\low_pass|modgen_add_13|nx44952z1 ))))

	.dataa(\low_pass|modgen_add_9|nx44952z1 ),
	.datab(\low_pass|modgen_add_13|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z28 ),
	.combout(\low_pass|modgen_add_14|nx44952z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_14|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y18_N30
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_4|nx43955z1  = (((\low_pass|modgen_add_4|nx2247z22 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z20  = CARRY(\low_pass|prod_1__mults19_1|nx62798z1 )

	.dataa(\low_pass|prod_1__mults19_1|nx62798z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z22 ),
	.combout(\low_pass|modgen_add_4|nx43955z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z20 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52933 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_4|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N6
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52936 (
// Equation(s):
// \low_pass|modgen_add_3|nx40964z1  = (\low_pass|prod_5__mults21_4|d_6__dup_190  & ((\low_pass|prod_4__mults20_3|nx45949z1  & (\low_pass|modgen_add_3|nx2247z40  & VCC)) # (!\low_pass|prod_4__mults20_3|nx45949z1  & (!\low_pass|modgen_add_3|nx2247z40 )))) # 
// (!\low_pass|prod_5__mults21_4|d_6__dup_190  & ((\low_pass|prod_4__mults20_3|nx45949z1  & (!\low_pass|modgen_add_3|nx2247z40 )) # (!\low_pass|prod_4__mults20_3|nx45949z1  & ((\low_pass|modgen_add_3|nx2247z40 ) # (GND)))))
// \low_pass|modgen_add_3|nx2247z37  = CARRY((\low_pass|prod_5__mults21_4|d_6__dup_190  & (!\low_pass|prod_4__mults20_3|nx45949z1  & !\low_pass|modgen_add_3|nx2247z40 )) # (!\low_pass|prod_5__mults21_4|d_6__dup_190  & ((!\low_pass|modgen_add_3|nx2247z40 ) # 
// (!\low_pass|prod_4__mults20_3|nx45949z1 ))))

	.dataa(\low_pass|prod_5__mults21_4|d_6__dup_190 ),
	.datab(\low_pass|prod_4__mults20_3|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z40 ),
	.combout(\low_pass|modgen_add_3|nx40964z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z37 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52936 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_3|ix2247z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N10
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_3|nx42958z1  = (\low_pass|prod_4__mults20_3|nx62798z1  & ((\low_pass|prod_5__mults21_4|d_8__dup_188  & (\low_pass|modgen_add_3|nx2247z34  & VCC)) # (!\low_pass|prod_5__mults21_4|d_8__dup_188  & (!\low_pass|modgen_add_3|nx2247z34 )))) 
// # (!\low_pass|prod_4__mults20_3|nx62798z1  & ((\low_pass|prod_5__mults21_4|d_8__dup_188  & (!\low_pass|modgen_add_3|nx2247z34 )) # (!\low_pass|prod_5__mults21_4|d_8__dup_188  & ((\low_pass|modgen_add_3|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_3|nx2247z31  = CARRY((\low_pass|prod_4__mults20_3|nx62798z1  & (!\low_pass|prod_5__mults21_4|d_8__dup_188  & !\low_pass|modgen_add_3|nx2247z34 )) # (!\low_pass|prod_4__mults20_3|nx62798z1  & ((!\low_pass|modgen_add_3|nx2247z34 ) # 
// (!\low_pass|prod_5__mults21_4|d_8__dup_188 ))))

	.dataa(\low_pass|prod_4__mults20_3|nx62798z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_8__dup_188 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z34 ),
	.combout(\low_pass|modgen_add_3|nx42958z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_3|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N8
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_5|nx41961z1  = ((\low_pass|modgen_add_3|nx41961z1  $ (\low_pass|modgen_add_4|nx41961z1  $ (!\low_pass|modgen_add_5|nx2247z37 )))) # (GND)
// \low_pass|modgen_add_5|nx2247z34  = CARRY((\low_pass|modgen_add_3|nx41961z1  & ((\low_pass|modgen_add_4|nx41961z1 ) # (!\low_pass|modgen_add_5|nx2247z37 ))) # (!\low_pass|modgen_add_3|nx41961z1  & (\low_pass|modgen_add_4|nx41961z1  & 
// !\low_pass|modgen_add_5|nx2247z37 )))

	.dataa(\low_pass|modgen_add_3|nx41961z1 ),
	.datab(\low_pass|modgen_add_4|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z37 ),
	.combout(\low_pass|modgen_add_5|nx41961z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z34 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_5|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N10
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_5|nx42958z1  = (\low_pass|modgen_add_4|nx42958z1  & ((\low_pass|modgen_add_3|nx42958z1  & (\low_pass|modgen_add_5|nx2247z34  & VCC)) # (!\low_pass|modgen_add_3|nx42958z1  & (!\low_pass|modgen_add_5|nx2247z34 )))) # 
// (!\low_pass|modgen_add_4|nx42958z1  & ((\low_pass|modgen_add_3|nx42958z1  & (!\low_pass|modgen_add_5|nx2247z34 )) # (!\low_pass|modgen_add_3|nx42958z1  & ((\low_pass|modgen_add_5|nx2247z34 ) # (GND)))))
// \low_pass|modgen_add_5|nx2247z31  = CARRY((\low_pass|modgen_add_4|nx42958z1  & (!\low_pass|modgen_add_3|nx42958z1  & !\low_pass|modgen_add_5|nx2247z34 )) # (!\low_pass|modgen_add_4|nx42958z1  & ((!\low_pass|modgen_add_5|nx2247z34 ) # 
// (!\low_pass|modgen_add_3|nx42958z1 ))))

	.dataa(\low_pass|modgen_add_4|nx42958z1 ),
	.datab(\low_pass|modgen_add_3|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z34 ),
	.combout(\low_pass|modgen_add_5|nx42958z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z31 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_5|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N12
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_5|nx43955z1  = ((\low_pass|modgen_add_3|nx43955z1  $ (\low_pass|modgen_add_4|nx43955z1  $ (!\low_pass|modgen_add_5|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_5|nx2247z28  = CARRY((\low_pass|modgen_add_3|nx43955z1  & ((\low_pass|modgen_add_4|nx43955z1 ) # (!\low_pass|modgen_add_5|nx2247z31 ))) # (!\low_pass|modgen_add_3|nx43955z1  & (\low_pass|modgen_add_4|nx43955z1  & 
// !\low_pass|modgen_add_5|nx2247z31 )))

	.dataa(\low_pass|modgen_add_3|nx43955z1 ),
	.datab(\low_pass|modgen_add_4|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z31 ),
	.combout(\low_pass|modgen_add_5|nx43955z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_5|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N12
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_6|nx43955z1  = ((\low_pass|modgen_add_2|nx43955z1  $ (\low_pass|modgen_add_5|nx43955z1  $ (!\low_pass|modgen_add_6|nx2247z31 )))) # (GND)
// \low_pass|modgen_add_6|nx2247z28  = CARRY((\low_pass|modgen_add_2|nx43955z1  & ((\low_pass|modgen_add_5|nx43955z1 ) # (!\low_pass|modgen_add_6|nx2247z31 ))) # (!\low_pass|modgen_add_2|nx43955z1  & (\low_pass|modgen_add_5|nx43955z1  & 
// !\low_pass|modgen_add_6|nx2247z31 )))

	.dataa(\low_pass|modgen_add_2|nx43955z1 ),
	.datab(\low_pass|modgen_add_5|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z31 ),
	.combout(\low_pass|modgen_add_6|nx43955z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z28 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_6|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N14
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_15|nx44952z1  = (\low_pass|modgen_add_6|nx44952z1  & ((\low_pass|modgen_add_14|nx44952z1  & (\low_pass|modgen_add_15|nx2247z28  & VCC)) # (!\low_pass|modgen_add_14|nx44952z1  & (!\low_pass|modgen_add_15|nx2247z28 )))) # 
// (!\low_pass|modgen_add_6|nx44952z1  & ((\low_pass|modgen_add_14|nx44952z1  & (!\low_pass|modgen_add_15|nx2247z28 )) # (!\low_pass|modgen_add_14|nx44952z1  & ((\low_pass|modgen_add_15|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_15|nx2247z25  = CARRY((\low_pass|modgen_add_6|nx44952z1  & (!\low_pass|modgen_add_14|nx44952z1  & !\low_pass|modgen_add_15|nx2247z28 )) # (!\low_pass|modgen_add_6|nx44952z1  & ((!\low_pass|modgen_add_15|nx2247z28 ) # 
// (!\low_pass|modgen_add_14|nx44952z1 ))))

	.dataa(\low_pass|modgen_add_6|nx44952z1 ),
	.datab(\low_pass|modgen_add_14|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z28 ),
	.combout(\low_pass|modgen_add_15|nx44952z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_15|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y20_N9
cycloneii_lcell_ff reg_audio_out_7_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_7_),
	.sdata(\low_pass|modgen_add_15|nx44952z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_7_));

// Location: LCCOMB_X28_Y20_N8
cycloneii_lcell_comb ix24999z52925(
// Equation(s):
// nx24999z2 = (bit_position_1_ & (((nx24999z3)))) # (!bit_position_1_ & ((nx24999z3 & ((audio_out_7_))) # (!nx24999z3 & (audio_out_6_))))

	.dataa(audio_out_6_),
	.datab(bit_position_1_),
	.datac(nx24999z3),
	.datad(audio_out_7_),
	.cin(gnd),
	.combout(nx24999z2),
	.cout());
// synopsys translate_off
defparam ix24999z52925.lut_mask = 16'hF2C2;
defparam ix24999z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y20_N0
cycloneii_lcell_comb ix48820z52923(
// Equation(s):
// nx48820z1 = bit_position_3_ $ (((bit_position_2_ & (bit_position_1_ & bit_position_0_))))

	.dataa(bit_position_2_),
	.datab(bit_position_1_),
	.datac(bit_position_3_),
	.datad(bit_position_0_),
	.cin(gnd),
	.combout(nx48820z1),
	.cout());
// synopsys translate_off
defparam ix48820z52923.lut_mask = 16'h78F0;
defparam ix48820z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y20_N1
cycloneii_lcell_ff modgen_counter_bit_position_reg_q_3_(
	.clk(\aud_bclk_dup0~clkctrl_outclk ),
	.datain(nx48820z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(bit_position_3_));

// Location: LCCOMB_X28_Y20_N16
cycloneii_lcell_comb ix24999z52924(
// Equation(s):
// nx24999z1 = (bit_position_2_ & (nx24999z4 & ((bit_position_3_)))) # (!bit_position_2_ & (((nx24999z2) # (!bit_position_3_))))

	.dataa(nx24999z4),
	.datab(bit_position_2_),
	.datac(nx24999z2),
	.datad(bit_position_3_),
	.cin(gnd),
	.combout(nx24999z1),
	.cout());
// synopsys translate_off
defparam ix24999z52924.lut_mask = 16'hB833;
defparam ix24999z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N0
cycloneii_lcell_comb ix26560z52923(
// Equation(s):
// audio_out_1n1ss1_10_ = (\sw~combout [17] & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [6]))) # (!\sw~combout [17] & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [10]))

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [10]),
	.datab(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [6]),
	.datac(vcc),
	.datad(\sw~combout [17]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_10_),
	.cout());
// synopsys translate_off
defparam ix26560z52923.lut_mask = 16'hCCAA;
defparam ix26560z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N16
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52931 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx46946z1  = ((low_pass_in_8_ $ (low_pass_in_9_ $ (!\low_pass|prod_1__mults19_1|nx3244z16 )))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z14  = CARRY((low_pass_in_8_ & ((low_pass_in_9_) # (!\low_pass|prod_1__mults19_1|nx3244z16 ))) # (!low_pass_in_8_ & (low_pass_in_9_ & !\low_pass|prod_1__mults19_1|nx3244z16 )))

	.dataa(low_pass_in_8_),
	.datab(low_pass_in_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z16 ),
	.combout(\low_pass|prod_1__mults19_1|nx46946z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z14 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52931 .lut_mask = 16'h698E;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N18
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52930 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx62798z1  = (low_pass_in_9_ & ((low_pass_in_10_ & (\low_pass|prod_1__mults19_1|nx3244z14  & VCC)) # (!low_pass_in_10_ & (!\low_pass|prod_1__mults19_1|nx3244z14 )))) # (!low_pass_in_9_ & ((low_pass_in_10_ & 
// (!\low_pass|prod_1__mults19_1|nx3244z14 )) # (!low_pass_in_10_ & ((\low_pass|prod_1__mults19_1|nx3244z14 ) # (GND)))))
// \low_pass|prod_1__mults19_1|nx3244z12  = CARRY((low_pass_in_9_ & (!low_pass_in_10_ & !\low_pass|prod_1__mults19_1|nx3244z14 )) # (!low_pass_in_9_ & ((!\low_pass|prod_1__mults19_1|nx3244z14 ) # (!low_pass_in_10_))))

	.dataa(low_pass_in_9_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z14 ),
	.combout(\low_pass|prod_1__mults19_1|nx62798z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z12 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52930 .lut_mask = 16'h9617;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N20
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52929 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx63795z1  = ((low_pass_in_15_ $ (low_pass_in_10_ $ (!\low_pass|prod_1__mults19_1|nx3244z12 )))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z10  = CARRY((low_pass_in_15_ & ((low_pass_in_10_) # (!\low_pass|prod_1__mults19_1|nx3244z12 ))) # (!low_pass_in_15_ & (low_pass_in_10_ & !\low_pass|prod_1__mults19_1|nx3244z12 )))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z12 ),
	.combout(\low_pass|prod_1__mults19_1|nx63795z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z10 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52929 .lut_mask = 16'h698E;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N22
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52928 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx64792z1  = (((\low_pass|prod_1__mults19_1|nx3244z10 ))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z8  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z10 ),
	.combout(\low_pass|prod_1__mults19_1|nx64792z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z8 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52928 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N24
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52927 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx253z1  = (((\low_pass|prod_1__mults19_1|nx3244z8 ))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z6  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z8 ),
	.combout(\low_pass|prod_1__mults19_1|nx253z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z6 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52927 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N26
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52926 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx1250z1  = (((\low_pass|prod_1__mults19_1|nx3244z6 ))) # (GND)
// \low_pass|prod_1__mults19_1|nx3244z4  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z6 ),
	.combout(\low_pass|prod_1__mults19_1|nx1250z1 ),
	.cout(\low_pass|prod_1__mults19_1|nx3244z4 ));
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52926 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_1__mults19_1|modgen_add_1_ix3244z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N2
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_4|nx45949z1  = (((\low_pass|modgen_add_4|nx2247z18 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z16  = CARRY(\low_pass|prod_1__mults19_1|nx64792z1 )

	.dataa(\low_pass|prod_1__mults19_1|nx64792z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z18 ),
	.combout(\low_pass|modgen_add_4|nx45949z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52931 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_4|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N4
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_4|nx46946z1  = (((\low_pass|modgen_add_4|nx2247z16 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z14  = CARRY(\low_pass|prod_1__mults19_1|nx253z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_1__mults19_1|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z16 ),
	.combout(\low_pass|modgen_add_4|nx46946z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z14 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52930 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_4|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N6
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_4|nx62798z1  = (((\low_pass|modgen_add_4|nx2247z14 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z12  = CARRY(\low_pass|prod_1__mults19_1|nx1250z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_1__mults19_1|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z14 ),
	.combout(\low_pass|modgen_add_4|nx62798z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z12 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52929 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_4|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N22
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52928 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx253z1  = (((\low_pass|prod_4__mults20_3|nx4241z10 ))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z8  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z10 ),
	.combout(\low_pass|prod_4__mults20_3|nx253z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z8 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52928 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N18
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52941 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_9__dup_187  = (low_pass_in_9_ & ((\low_pass|prod_5__mults21_4|d_11_  & (\low_pass|prod_5__mults21_4|nx3244z18  & VCC)) # (!\low_pass|prod_5__mults21_4|d_11_  & (!\low_pass|prod_5__mults21_4|nx3244z18 )))) # (!low_pass_in_9_ & 
// ((\low_pass|prod_5__mults21_4|d_11_  & (!\low_pass|prod_5__mults21_4|nx3244z18 )) # (!\low_pass|prod_5__mults21_4|d_11_  & ((\low_pass|prod_5__mults21_4|nx3244z18 ) # (GND)))))
// \low_pass|prod_5__mults21_4|nx3244z17  = CARRY((low_pass_in_9_ & (!\low_pass|prod_5__mults21_4|d_11_  & !\low_pass|prod_5__mults21_4|nx3244z18 )) # (!low_pass_in_9_ & ((!\low_pass|prod_5__mults21_4|nx3244z18 ) # (!\low_pass|prod_5__mults21_4|d_11_ ))))

	.dataa(low_pass_in_9_),
	.datab(\low_pass|prod_5__mults21_4|d_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z18 ),
	.combout(\low_pass|prod_5__mults21_4|d_9__dup_187 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z17 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52941 .lut_mask = 16'h9617;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52941 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N14
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_3|nx44952z1  = (\low_pass|prod_5__mults21_4|d_10__dup_186  & ((\low_pass|prod_4__mults20_3|nx64792z1  & (\low_pass|modgen_add_3|nx2247z28  & VCC)) # (!\low_pass|prod_4__mults20_3|nx64792z1  & (!\low_pass|modgen_add_3|nx2247z28 )))) # 
// (!\low_pass|prod_5__mults21_4|d_10__dup_186  & ((\low_pass|prod_4__mults20_3|nx64792z1  & (!\low_pass|modgen_add_3|nx2247z28 )) # (!\low_pass|prod_4__mults20_3|nx64792z1  & ((\low_pass|modgen_add_3|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_3|nx2247z25  = CARRY((\low_pass|prod_5__mults21_4|d_10__dup_186  & (!\low_pass|prod_4__mults20_3|nx64792z1  & !\low_pass|modgen_add_3|nx2247z28 )) # (!\low_pass|prod_5__mults21_4|d_10__dup_186  & ((!\low_pass|modgen_add_3|nx2247z28 ) 
// # (!\low_pass|prod_4__mults20_3|nx64792z1 ))))

	.dataa(\low_pass|prod_5__mults21_4|d_10__dup_186 ),
	.datab(\low_pass|prod_4__mults20_3|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z28 ),
	.combout(\low_pass|modgen_add_3|nx44952z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_3|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N16
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_3|nx45949z1  = ((\low_pass|prod_5__mults21_4|d_11__dup_185  $ (\low_pass|prod_4__mults20_3|nx253z1  $ (!\low_pass|modgen_add_3|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_3|nx2247z22  = CARRY((\low_pass|prod_5__mults21_4|d_11__dup_185  & ((\low_pass|prod_4__mults20_3|nx253z1 ) # (!\low_pass|modgen_add_3|nx2247z25 ))) # (!\low_pass|prod_5__mults21_4|d_11__dup_185  & (\low_pass|prod_4__mults20_3|nx253z1  
// & !\low_pass|modgen_add_3|nx2247z25 )))

	.dataa(\low_pass|prod_5__mults21_4|d_11__dup_185 ),
	.datab(\low_pass|prod_4__mults20_3|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z25 ),
	.combout(\low_pass|modgen_add_3|nx45949z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_3|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N14
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_5|nx44952z1  = (\low_pass|modgen_add_4|nx44952z1  & ((\low_pass|modgen_add_3|nx44952z1  & (\low_pass|modgen_add_5|nx2247z28  & VCC)) # (!\low_pass|modgen_add_3|nx44952z1  & (!\low_pass|modgen_add_5|nx2247z28 )))) # 
// (!\low_pass|modgen_add_4|nx44952z1  & ((\low_pass|modgen_add_3|nx44952z1  & (!\low_pass|modgen_add_5|nx2247z28 )) # (!\low_pass|modgen_add_3|nx44952z1  & ((\low_pass|modgen_add_5|nx2247z28 ) # (GND)))))
// \low_pass|modgen_add_5|nx2247z25  = CARRY((\low_pass|modgen_add_4|nx44952z1  & (!\low_pass|modgen_add_3|nx44952z1  & !\low_pass|modgen_add_5|nx2247z28 )) # (!\low_pass|modgen_add_4|nx44952z1  & ((!\low_pass|modgen_add_5|nx2247z28 ) # 
// (!\low_pass|modgen_add_3|nx44952z1 ))))

	.dataa(\low_pass|modgen_add_4|nx44952z1 ),
	.datab(\low_pass|modgen_add_3|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z28 ),
	.combout(\low_pass|modgen_add_5|nx44952z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_5|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N18
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_5|nx46946z1  = (\low_pass|modgen_add_3|nx46946z1  & ((\low_pass|modgen_add_4|nx46946z1  & (\low_pass|modgen_add_5|nx2247z22  & VCC)) # (!\low_pass|modgen_add_4|nx46946z1  & (!\low_pass|modgen_add_5|nx2247z22 )))) # 
// (!\low_pass|modgen_add_3|nx46946z1  & ((\low_pass|modgen_add_4|nx46946z1  & (!\low_pass|modgen_add_5|nx2247z22 )) # (!\low_pass|modgen_add_4|nx46946z1  & ((\low_pass|modgen_add_5|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_5|nx2247z19  = CARRY((\low_pass|modgen_add_3|nx46946z1  & (!\low_pass|modgen_add_4|nx46946z1  & !\low_pass|modgen_add_5|nx2247z22 )) # (!\low_pass|modgen_add_3|nx46946z1  & ((!\low_pass|modgen_add_5|nx2247z22 ) # 
// (!\low_pass|modgen_add_4|nx46946z1 ))))

	.dataa(\low_pass|modgen_add_3|nx46946z1 ),
	.datab(\low_pass|modgen_add_4|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z22 ),
	.combout(\low_pass|modgen_add_5|nx46946z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_5|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N20
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_5|nx62798z1  = ((\low_pass|modgen_add_3|nx62798z1  $ (\low_pass|modgen_add_4|nx62798z1  $ (!\low_pass|modgen_add_5|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_5|nx2247z16  = CARRY((\low_pass|modgen_add_3|nx62798z1  & ((\low_pass|modgen_add_4|nx62798z1 ) # (!\low_pass|modgen_add_5|nx2247z19 ))) # (!\low_pass|modgen_add_3|nx62798z1  & (\low_pass|modgen_add_4|nx62798z1  & 
// !\low_pass|modgen_add_5|nx2247z19 )))

	.dataa(\low_pass|modgen_add_3|nx62798z1 ),
	.datab(\low_pass|modgen_add_4|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z19 ),
	.combout(\low_pass|modgen_add_5|nx62798z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_5|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N16
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52931 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx63795z1  = ((low_pass_in_15_ $ (low_pass_in_8_ $ (!\low_pass|prod_0__mults21_0|nx5238z16 )))) # (GND)
// \low_pass|prod_0__mults21_0|nx5238z14  = CARRY((low_pass_in_15_ & ((low_pass_in_8_) # (!\low_pass|prod_0__mults21_0|nx5238z16 ))) # (!low_pass_in_15_ & (low_pass_in_8_ & !\low_pass|prod_0__mults21_0|nx5238z16 )))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z16 ),
	.combout(\low_pass|prod_0__mults21_0|nx63795z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z14 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52931 .lut_mask = 16'h698E;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y20_N18
cycloneii_lcell_comb \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52930 (
// Equation(s):
// \low_pass|prod_0__mults21_0|nx64792z1  = (low_pass_in_15_ & ((low_pass_in_9_ & (\low_pass|prod_0__mults21_0|nx5238z14  & VCC)) # (!low_pass_in_9_ & (!\low_pass|prod_0__mults21_0|nx5238z14 )))) # (!low_pass_in_15_ & ((low_pass_in_9_ & 
// (!\low_pass|prod_0__mults21_0|nx5238z14 )) # (!low_pass_in_9_ & ((\low_pass|prod_0__mults21_0|nx5238z14 ) # (GND)))))
// \low_pass|prod_0__mults21_0|nx5238z12  = CARRY((low_pass_in_15_ & (!low_pass_in_9_ & !\low_pass|prod_0__mults21_0|nx5238z14 )) # (!low_pass_in_15_ & ((!\low_pass|prod_0__mults21_0|nx5238z14 ) # (!low_pass_in_9_))))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_0__mults21_0|nx5238z14 ),
	.combout(\low_pass|prod_0__mults21_0|nx64792z1 ),
	.cout(\low_pass|prod_0__mults21_0|nx5238z12 ));
// synopsys translate_off
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52930 .lut_mask = 16'h9617;
defparam \low_pass|prod_0__mults21_0|modgen_add_0_ix5238z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N8
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52935 (
// Equation(s):
// \low_pass|modgen_add_0|nx41961z1  = ((\low_pass|prod_0__mults21_0|nx62798z1  $ (\low_pass|prod_1__mults19_1|nx46946z1  $ (!\low_pass|modgen_add_0|nx2247z36 )))) # (GND)
// \low_pass|modgen_add_0|nx2247z33  = CARRY((\low_pass|prod_0__mults21_0|nx62798z1  & ((\low_pass|prod_1__mults19_1|nx46946z1 ) # (!\low_pass|modgen_add_0|nx2247z36 ))) # (!\low_pass|prod_0__mults21_0|nx62798z1  & (\low_pass|prod_1__mults19_1|nx46946z1  & 
// !\low_pass|modgen_add_0|nx2247z36 )))

	.dataa(\low_pass|prod_0__mults21_0|nx62798z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z36 ),
	.combout(\low_pass|modgen_add_0|nx41961z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z33 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52935 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_0|ix2247z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N10
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52934 (
// Equation(s):
// \low_pass|modgen_add_0|nx42958z1  = (\low_pass|prod_1__mults19_1|nx62798z1  & ((\low_pass|prod_0__mults21_0|nx63795z1  & (\low_pass|modgen_add_0|nx2247z33  & VCC)) # (!\low_pass|prod_0__mults21_0|nx63795z1  & (!\low_pass|modgen_add_0|nx2247z33 )))) # 
// (!\low_pass|prod_1__mults19_1|nx62798z1  & ((\low_pass|prod_0__mults21_0|nx63795z1  & (!\low_pass|modgen_add_0|nx2247z33 )) # (!\low_pass|prod_0__mults21_0|nx63795z1  & ((\low_pass|modgen_add_0|nx2247z33 ) # (GND)))))
// \low_pass|modgen_add_0|nx2247z30  = CARRY((\low_pass|prod_1__mults19_1|nx62798z1  & (!\low_pass|prod_0__mults21_0|nx63795z1  & !\low_pass|modgen_add_0|nx2247z33 )) # (!\low_pass|prod_1__mults19_1|nx62798z1  & ((!\low_pass|modgen_add_0|nx2247z33 ) # 
// (!\low_pass|prod_0__mults21_0|nx63795z1 ))))

	.dataa(\low_pass|prod_1__mults19_1|nx62798z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z33 ),
	.combout(\low_pass|modgen_add_0|nx42958z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z30 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52934 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_0|ix2247z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N12
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52933 (
// Equation(s):
// \low_pass|modgen_add_0|nx43955z1  = ((\low_pass|prod_1__mults19_1|nx63795z1  $ (\low_pass|prod_0__mults21_0|nx64792z1  $ (!\low_pass|modgen_add_0|nx2247z30 )))) # (GND)
// \low_pass|modgen_add_0|nx2247z27  = CARRY((\low_pass|prod_1__mults19_1|nx63795z1  & ((\low_pass|prod_0__mults21_0|nx64792z1 ) # (!\low_pass|modgen_add_0|nx2247z30 ))) # (!\low_pass|prod_1__mults19_1|nx63795z1  & (\low_pass|prod_0__mults21_0|nx64792z1  & 
// !\low_pass|modgen_add_0|nx2247z30 )))

	.dataa(\low_pass|prod_1__mults19_1|nx63795z1 ),
	.datab(\low_pass|prod_0__mults21_0|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z30 ),
	.combout(\low_pass|modgen_add_0|nx43955z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z27 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52933 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_0|ix2247z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y20_N14
cycloneii_lcell_comb \low_pass|modgen_add_0|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_0|nx44952z1  = (\low_pass|prod_0__mults21_0|nx253z1  & ((\low_pass|prod_1__mults19_1|nx64792z1  & (\low_pass|modgen_add_0|nx2247z27  & VCC)) # (!\low_pass|prod_1__mults19_1|nx64792z1  & (!\low_pass|modgen_add_0|nx2247z27 )))) # 
// (!\low_pass|prod_0__mults21_0|nx253z1  & ((\low_pass|prod_1__mults19_1|nx64792z1  & (!\low_pass|modgen_add_0|nx2247z27 )) # (!\low_pass|prod_1__mults19_1|nx64792z1  & ((\low_pass|modgen_add_0|nx2247z27 ) # (GND)))))
// \low_pass|modgen_add_0|nx2247z24  = CARRY((\low_pass|prod_0__mults21_0|nx253z1  & (!\low_pass|prod_1__mults19_1|nx64792z1  & !\low_pass|modgen_add_0|nx2247z27 )) # (!\low_pass|prod_0__mults21_0|nx253z1  & ((!\low_pass|modgen_add_0|nx2247z27 ) # 
// (!\low_pass|prod_1__mults19_1|nx64792z1 ))))

	.dataa(\low_pass|prod_0__mults21_0|nx253z1 ),
	.datab(\low_pass|prod_1__mults19_1|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_0|nx2247z27 ),
	.combout(\low_pass|modgen_add_0|nx44952z1 ),
	.cout(\low_pass|modgen_add_0|nx2247z24 ));
// synopsys translate_off
defparam \low_pass|modgen_add_0|ix2247z52932 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_0|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y18_N16
cycloneii_lcell_comb \low_pass|modgen_add_2|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_2|nx45949z1  = ((\low_pass|modgen_add_1|nx45949z1  $ (\low_pass|modgen_add_0|nx45949z1  $ (!\low_pass|modgen_add_2|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_2|nx2247z22  = CARRY((\low_pass|modgen_add_1|nx45949z1  & ((\low_pass|modgen_add_0|nx45949z1 ) # (!\low_pass|modgen_add_2|nx2247z25 ))) # (!\low_pass|modgen_add_1|nx45949z1  & (\low_pass|modgen_add_0|nx45949z1  & 
// !\low_pass|modgen_add_2|nx2247z25 )))

	.dataa(\low_pass|modgen_add_1|nx45949z1 ),
	.datab(\low_pass|modgen_add_0|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_2|nx2247z25 ),
	.combout(\low_pass|modgen_add_2|nx45949z1 ),
	.cout(\low_pass|modgen_add_2|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_2|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_2|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N16
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_6|nx45949z1  = ((\low_pass|modgen_add_5|nx45949z1  $ (\low_pass|modgen_add_2|nx45949z1  $ (!\low_pass|modgen_add_6|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_6|nx2247z22  = CARRY((\low_pass|modgen_add_5|nx45949z1  & ((\low_pass|modgen_add_2|nx45949z1 ) # (!\low_pass|modgen_add_6|nx2247z25 ))) # (!\low_pass|modgen_add_5|nx45949z1  & (\low_pass|modgen_add_2|nx45949z1  & 
// !\low_pass|modgen_add_6|nx2247z25 )))

	.dataa(\low_pass|modgen_add_5|nx45949z1 ),
	.datab(\low_pass|modgen_add_2|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z25 ),
	.combout(\low_pass|modgen_add_6|nx45949z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_6|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y21_N20
cycloneii_lcell_comb \low_pass|modgen_add_6|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_6|nx62798z1  = ((\low_pass|modgen_add_2|nx62798z1  $ (\low_pass|modgen_add_5|nx62798z1  $ (!\low_pass|modgen_add_6|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_6|nx2247z16  = CARRY((\low_pass|modgen_add_2|nx62798z1  & ((\low_pass|modgen_add_5|nx62798z1 ) # (!\low_pass|modgen_add_6|nx2247z19 ))) # (!\low_pass|modgen_add_2|nx62798z1  & (\low_pass|modgen_add_5|nx62798z1  & 
// !\low_pass|modgen_add_6|nx2247z19 )))

	.dataa(\low_pass|modgen_add_2|nx62798z1 ),
	.datab(\low_pass|modgen_add_5|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_6|nx2247z19 ),
	.combout(\low_pass|modgen_add_6|nx62798z1 ),
	.cout(\low_pass|modgen_add_6|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_6|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_6|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N24
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52927 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx1250z1  = (((\low_pass|prod_4__mults20_3|nx4241z8 ))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z6  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z8 ),
	.combout(\low_pass|prod_4__mults20_3|nx1250z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z6 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52927 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N18
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_10|nx46946z1  = (low_pass_in_15_ & ((\low_pass|prod_4__mults20_3|nx1250z1  & (\low_pass|modgen_add_10|nx2247z17  & VCC)) # (!\low_pass|prod_4__mults20_3|nx1250z1  & (!\low_pass|modgen_add_10|nx2247z17 )))) # (!low_pass_in_15_ & 
// ((\low_pass|prod_4__mults20_3|nx1250z1  & (!\low_pass|modgen_add_10|nx2247z17 )) # (!\low_pass|prod_4__mults20_3|nx1250z1  & ((\low_pass|modgen_add_10|nx2247z17 ) # (GND)))))
// \low_pass|modgen_add_10|nx2247z15  = CARRY((low_pass_in_15_ & (!\low_pass|prod_4__mults20_3|nx1250z1  & !\low_pass|modgen_add_10|nx2247z17 )) # (!low_pass_in_15_ & ((!\low_pass|modgen_add_10|nx2247z17 ) # (!\low_pass|prod_4__mults20_3|nx1250z1 ))))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_4__mults20_3|nx1250z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z17 ),
	.combout(\low_pass|modgen_add_10|nx46946z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z15 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_10|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N0
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52932 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_9_  = (low_pass_in_7_ & ((low_pass_in_10_ & (!\low_pass|prod_2__mults20_2|nx6235z10 )) # (!low_pass_in_10_ & (\low_pass|prod_2__mults20_2|nx6235z10  & VCC)))) # (!low_pass_in_7_ & ((low_pass_in_10_ & 
// ((\low_pass|prod_2__mults20_2|nx6235z10 ) # (GND))) # (!low_pass_in_10_ & (!\low_pass|prod_2__mults20_2|nx6235z10 ))))
// \low_pass|prod_2__mults20_2|nx6235z9  = CARRY((low_pass_in_7_ & (low_pass_in_10_ & !\low_pass|prod_2__mults20_2|nx6235z10 )) # (!low_pass_in_7_ & ((low_pass_in_10_) # (!\low_pass|prod_2__mults20_2|nx6235z10 ))))

	.dataa(low_pass_in_7_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z10 ),
	.combout(\low_pass|prod_2__mults20_2|d_9_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z9 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52932 .lut_mask = 16'h694D;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N2
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52931 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_10_  = ((low_pass_in_15_ $ (low_pass_in_8_ $ (\low_pass|prod_2__mults20_2|nx6235z9 )))) # (GND)
// \low_pass|prod_2__mults20_2|nx6235z8  = CARRY((low_pass_in_15_ & (low_pass_in_8_ & !\low_pass|prod_2__mults20_2|nx6235z9 )) # (!low_pass_in_15_ & ((low_pass_in_8_) # (!\low_pass|prod_2__mults20_2|nx6235z9 ))))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_8_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z9 ),
	.combout(\low_pass|prod_2__mults20_2|d_10_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z8 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52931 .lut_mask = 16'h964D;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N4
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52930 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_11_  = (low_pass_in_15_ & ((low_pass_in_9_ & (!\low_pass|prod_2__mults20_2|nx6235z8 )) # (!low_pass_in_9_ & ((\low_pass|prod_2__mults20_2|nx6235z8 ) # (GND))))) # (!low_pass_in_15_ & ((low_pass_in_9_ & 
// (\low_pass|prod_2__mults20_2|nx6235z8  & VCC)) # (!low_pass_in_9_ & (!\low_pass|prod_2__mults20_2|nx6235z8 ))))
// \low_pass|prod_2__mults20_2|nx6235z7  = CARRY((low_pass_in_15_ & ((!\low_pass|prod_2__mults20_2|nx6235z8 ) # (!low_pass_in_9_))) # (!low_pass_in_15_ & (!low_pass_in_9_ & !\low_pass|prod_2__mults20_2|nx6235z8 )))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_9_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z8 ),
	.combout(\low_pass|prod_2__mults20_2|d_11_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z7 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52930 .lut_mask = 16'h692B;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N6
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52929 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_12_  = ((low_pass_in_15_ $ (low_pass_in_10_ $ (\low_pass|prod_2__mults20_2|nx6235z7 )))) # (GND)
// \low_pass|prod_2__mults20_2|nx6235z6  = CARRY((low_pass_in_15_ & (low_pass_in_10_ & !\low_pass|prod_2__mults20_2|nx6235z7 )) # (!low_pass_in_15_ & ((low_pass_in_10_) # (!\low_pass|prod_2__mults20_2|nx6235z7 ))))

	.dataa(low_pass_in_15_),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z7 ),
	.combout(\low_pass|prod_2__mults20_2|d_12_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z6 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52929 .lut_mask = 16'h964D;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N16
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_13|nx45949z1  = ((\low_pass|modgen_add_10|nx45949z1  $ (\low_pass|modgen_add_12|nx45949z1  $ (!\low_pass|modgen_add_13|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_13|nx2247z22  = CARRY((\low_pass|modgen_add_10|nx45949z1  & ((\low_pass|modgen_add_12|nx45949z1 ) # (!\low_pass|modgen_add_13|nx2247z25 ))) # (!\low_pass|modgen_add_10|nx45949z1  & (\low_pass|modgen_add_12|nx45949z1  & 
// !\low_pass|modgen_add_13|nx2247z25 )))

	.dataa(\low_pass|modgen_add_10|nx45949z1 ),
	.datab(\low_pass|modgen_add_12|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z25 ),
	.combout(\low_pass|modgen_add_13|nx45949z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_13|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y19_N18
cycloneii_lcell_comb \low_pass|modgen_add_13|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_13|nx46946z1  = (\low_pass|modgen_add_12|nx46946z1  & ((\low_pass|modgen_add_10|nx46946z1  & (\low_pass|modgen_add_13|nx2247z22  & VCC)) # (!\low_pass|modgen_add_10|nx46946z1  & (!\low_pass|modgen_add_13|nx2247z22 )))) # 
// (!\low_pass|modgen_add_12|nx46946z1  & ((\low_pass|modgen_add_10|nx46946z1  & (!\low_pass|modgen_add_13|nx2247z22 )) # (!\low_pass|modgen_add_10|nx46946z1  & ((\low_pass|modgen_add_13|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_13|nx2247z19  = CARRY((\low_pass|modgen_add_12|nx46946z1  & (!\low_pass|modgen_add_10|nx46946z1  & !\low_pass|modgen_add_13|nx2247z22 )) # (!\low_pass|modgen_add_12|nx46946z1  & ((!\low_pass|modgen_add_13|nx2247z22 ) # 
// (!\low_pass|modgen_add_10|nx46946z1 ))))

	.dataa(\low_pass|modgen_add_12|nx46946z1 ),
	.datab(\low_pass|modgen_add_10|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_13|nx2247z22 ),
	.combout(\low_pass|modgen_add_13|nx46946z1 ),
	.cout(\low_pass|modgen_add_13|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_13|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_13|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N18
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_14|nx46946z1  = (\low_pass|modgen_add_9|nx46946z1  & ((\low_pass|modgen_add_13|nx46946z1  & (\low_pass|modgen_add_14|nx2247z22  & VCC)) # (!\low_pass|modgen_add_13|nx46946z1  & (!\low_pass|modgen_add_14|nx2247z22 )))) # 
// (!\low_pass|modgen_add_9|nx46946z1  & ((\low_pass|modgen_add_13|nx46946z1  & (!\low_pass|modgen_add_14|nx2247z22 )) # (!\low_pass|modgen_add_13|nx46946z1  & ((\low_pass|modgen_add_14|nx2247z22 ) # (GND)))))
// \low_pass|modgen_add_14|nx2247z19  = CARRY((\low_pass|modgen_add_9|nx46946z1  & (!\low_pass|modgen_add_13|nx46946z1  & !\low_pass|modgen_add_14|nx2247z22 )) # (!\low_pass|modgen_add_9|nx46946z1  & ((!\low_pass|modgen_add_14|nx2247z22 ) # 
// (!\low_pass|modgen_add_13|nx46946z1 ))))

	.dataa(\low_pass|modgen_add_9|nx46946z1 ),
	.datab(\low_pass|modgen_add_13|nx46946z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z22 ),
	.combout(\low_pass|modgen_add_14|nx46946z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z19 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_14|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N16
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52931 (
// Equation(s):
// \low_pass|modgen_add_15|nx45949z1  = ((\low_pass|modgen_add_14|nx45949z1  $ (\low_pass|modgen_add_6|nx45949z1  $ (!\low_pass|modgen_add_15|nx2247z25 )))) # (GND)
// \low_pass|modgen_add_15|nx2247z22  = CARRY((\low_pass|modgen_add_14|nx45949z1  & ((\low_pass|modgen_add_6|nx45949z1 ) # (!\low_pass|modgen_add_15|nx2247z25 ))) # (!\low_pass|modgen_add_14|nx45949z1  & (\low_pass|modgen_add_6|nx45949z1  & 
// !\low_pass|modgen_add_15|nx2247z25 )))

	.dataa(\low_pass|modgen_add_14|nx45949z1 ),
	.datab(\low_pass|modgen_add_6|nx45949z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z25 ),
	.combout(\low_pass|modgen_add_15|nx45949z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z22 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52931 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_15|ix2247z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N20
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_15|nx62798z1  = ((\low_pass|modgen_add_14|nx62798z1  $ (\low_pass|modgen_add_6|nx62798z1  $ (!\low_pass|modgen_add_15|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_15|nx2247z16  = CARRY((\low_pass|modgen_add_14|nx62798z1  & ((\low_pass|modgen_add_6|nx62798z1 ) # (!\low_pass|modgen_add_15|nx2247z19 ))) # (!\low_pass|modgen_add_14|nx62798z1  & (\low_pass|modgen_add_6|nx62798z1  & 
// !\low_pass|modgen_add_15|nx2247z19 )))

	.dataa(\low_pass|modgen_add_14|nx62798z1 ),
	.datab(\low_pass|modgen_add_6|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z19 ),
	.combout(\low_pass|modgen_add_15|nx62798z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_15|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y20_N1
cycloneii_lcell_ff reg_audio_out_10_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_10_),
	.sdata(\low_pass|modgen_add_15|nx62798z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_10_));

// Location: LCCOMB_X29_Y20_N30
cycloneii_lcell_comb ix59129z52923(
// Equation(s):
// audio_out_1n1ss1_8_ = (\sw~combout [17] & ((\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [4]))) # (!\sw~combout [17] & (\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [8]))

	.dataa(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [8]),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [4]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_8_),
	.cout());
// synopsys translate_off
defparam ix59129z52923.lut_mask = 16'hEE22;
defparam ix59129z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y20_N31
cycloneii_lcell_ff reg_audio_out_8_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(audio_out_1n1ss1_8_),
	.sdata(\low_pass|modgen_add_15|nx45949z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_8_));

// Location: LCCOMB_X28_Y20_N26
cycloneii_lcell_comb ix24999z52930(
// Equation(s):
// nx24999z7 = (bit_position_1_ & ((bit_position_0_ & ((audio_out_8_))) # (!bit_position_0_ & (audio_out_9_)))) # (!bit_position_1_ & (((!bit_position_0_))))

	.dataa(audio_out_9_),
	.datab(bit_position_1_),
	.datac(bit_position_0_),
	.datad(audio_out_8_),
	.cin(gnd),
	.combout(nx24999z7),
	.cout());
// synopsys translate_off
defparam ix24999z52930.lut_mask = 16'hCB0B;
defparam ix24999z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y20_N28
cycloneii_lcell_comb ix24999z52929(
// Equation(s):
// nx24999z6 = (bit_position_1_ & (((nx24999z7)))) # (!bit_position_1_ & ((nx24999z7 & (audio_out_11_)) # (!nx24999z7 & ((audio_out_10_)))))

	.dataa(audio_out_11_),
	.datab(bit_position_1_),
	.datac(audio_out_10_),
	.datad(nx24999z7),
	.cin(gnd),
	.combout(nx24999z6),
	.cout());
// synopsys translate_off
defparam ix24999z52929.lut_mask = 16'hEE30;
defparam ix24999z52929.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N18
cycloneii_lcell_comb ix27557z52923(
// Equation(s):
// audio_out_1n1ss1_11_ = (\sw~combout [17] & (\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [7])) # (!\sw~combout [17] & ((\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [11])))

	.dataa(\u_noise_modgen_rom_ix24__ix62120z34212|auto_generated|q_a [7]),
	.datab(\sw~combout [17]),
	.datac(vcc),
	.datad(\u_sine_modgen_rom_ix21__ix62120z58996|auto_generated|q_a [11]),
	.cin(gnd),
	.combout(audio_out_1n1ss1_11_),
	.cout());
// synopsys translate_off
defparam ix27557z52923.lut_mask = 16'hBB88;
defparam ix27557z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y20_N4
cycloneii_lcell_comb \audio_out_14_~feeder (
// Equation(s):
// \audio_out_14_~feeder_combout  = audio_out_1n1ss1_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(audio_out_1n1ss1_11_),
	.cin(gnd),
	.combout(\audio_out_14_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \audio_out_14_~feeder .lut_mask = 16'hFF00;
defparam \audio_out_14_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X23_Y20_N30
cycloneii_lcell_comb \low_pass|prod_1__mults19_1|ix3244z52923 (
// Equation(s):
// \low_pass|prod_1__mults19_1|nx3244z1  = \low_pass|prod_1__mults19_1|nx3244z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_1__mults19_1|nx3244z2 ),
	.combout(\low_pass|prod_1__mults19_1|nx3244z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_1__mults19_1|ix3244z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|prod_1__mults19_1|ix3244z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N8
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_4|nx63795z1  = (((\low_pass|modgen_add_4|nx2247z12 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z10  = CARRY(\low_pass|prod_1__mults19_1|nx2247z1 )

	.dataa(\low_pass|prod_1__mults19_1|nx2247z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z12 ),
	.combout(\low_pass|modgen_add_4|nx63795z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52928 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_4|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N10
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_4|nx64792z1  = (((\low_pass|modgen_add_4|nx2247z10 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z8  = CARRY(\low_pass|prod_1__mults19_1|nx3244z1 )

	.dataa(vcc),
	.datab(\low_pass|prod_1__mults19_1|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z10 ),
	.combout(\low_pass|modgen_add_4|nx64792z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z8 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52927 .lut_mask = 16'hF0CC;
defparam \low_pass|modgen_add_4|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X24_Y17_N12
cycloneii_lcell_comb \low_pass|modgen_add_4|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_4|nx253z1  = (((\low_pass|modgen_add_4|nx2247z8 ))) # (GND)
// \low_pass|modgen_add_4|nx2247z6  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_4|nx2247z8 ),
	.combout(\low_pass|modgen_add_4|nx253z1 ),
	.cout(\low_pass|modgen_add_4|nx2247z6 ));
// synopsys translate_off
defparam \low_pass|modgen_add_4|ix2247z52926 .lut_mask = 16'hF0AA;
defparam \low_pass|modgen_add_4|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N26
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52926 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx2247z1  = (((\low_pass|prod_4__mults20_3|nx4241z6 ))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z4  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z6 ),
	.combout(\low_pass|prod_4__mults20_3|nx2247z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z4 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52926 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N28
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52925 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx3244z1  = (((\low_pass|prod_4__mults20_3|nx4241z4 ))) # (GND)
// \low_pass|prod_4__mults20_3|nx4241z2  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z4 ),
	.combout(\low_pass|prod_4__mults20_3|nx3244z1 ),
	.cout(\low_pass|prod_4__mults20_3|nx4241z2 ));
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52925 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_4__mults20_3|modgen_add_3_ix4241z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y18_N30
cycloneii_lcell_comb \low_pass|prod_4__mults20_3|ix4241z52923 (
// Equation(s):
// \low_pass|prod_4__mults20_3|nx4241z1  = \low_pass|prod_4__mults20_3|nx4241z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_4__mults20_3|nx4241z2 ),
	.combout(\low_pass|prod_4__mults20_3|nx4241z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_4__mults20_3|ix4241z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|prod_4__mults20_3|ix4241z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N20
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52927 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_10__dup_186  = ((\low_pass|prod_5__mults21_4|nx3244z5  $ (low_pass_in_10_ $ (!\low_pass|prod_5__mults21_4|nx3244z17 )))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z4  = CARRY((\low_pass|prod_5__mults21_4|nx3244z5  & ((low_pass_in_10_) # (!\low_pass|prod_5__mults21_4|nx3244z17 ))) # (!\low_pass|prod_5__mults21_4|nx3244z5  & (low_pass_in_10_ & !\low_pass|prod_5__mults21_4|nx3244z17 
// )))

	.dataa(\low_pass|prod_5__mults21_4|nx3244z5 ),
	.datab(low_pass_in_10_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z17 ),
	.combout(\low_pass|prod_5__mults21_4|d_10__dup_186 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z4 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52927 .lut_mask = 16'h698E;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N22
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52926 (
// Equation(s):
// \low_pass|prod_5__mults21_4|d_11__dup_185  = (((\low_pass|prod_5__mults21_4|nx3244z4 ))) # (GND)
// \low_pass|prod_5__mults21_4|nx3244z3  = CARRY(low_pass_in_15_)

	.dataa(low_pass_in_15_),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z4 ),
	.combout(\low_pass|prod_5__mults21_4|d_11__dup_185 ),
	.cout(\low_pass|prod_5__mults21_4|nx3244z3 ));
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52926 .lut_mask = 16'hF0AA;
defparam \low_pass|prod_5__mults21_4|modgen_add_5_ix3244z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y18_N26
cycloneii_lcell_comb \low_pass|prod_5__mults21_4|ix3244z52923 (
// Equation(s):
// \low_pass|prod_5__mults21_4|nx3244z1  = \low_pass|prod_5__mults21_4|nx3244z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_5__mults21_4|nx3244z2 ),
	.combout(\low_pass|prod_5__mults21_4|nx3244z1 ),
	.cout());
// synopsys translate_off
defparam \low_pass|prod_5__mults21_4|ix3244z52923 .lut_mask = 16'hF0F0;
defparam \low_pass|prod_5__mults21_4|ix3244z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N22
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_3|nx63795z1  = (low_pass_in_15_ & ((\low_pass|prod_4__mults20_3|nx3244z1  & (\low_pass|modgen_add_3|nx2247z16  & VCC)) # (!\low_pass|prod_4__mults20_3|nx3244z1  & (!\low_pass|modgen_add_3|nx2247z16 )))) # (!low_pass_in_15_ & 
// ((\low_pass|prod_4__mults20_3|nx3244z1  & (!\low_pass|modgen_add_3|nx2247z16 )) # (!\low_pass|prod_4__mults20_3|nx3244z1  & ((\low_pass|modgen_add_3|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_3|nx2247z13  = CARRY((low_pass_in_15_ & (!\low_pass|prod_4__mults20_3|nx3244z1  & !\low_pass|modgen_add_3|nx2247z16 )) # (!low_pass_in_15_ & ((!\low_pass|modgen_add_3|nx2247z16 ) # (!\low_pass|prod_4__mults20_3|nx3244z1 ))))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_4__mults20_3|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z16 ),
	.combout(\low_pass|modgen_add_3|nx63795z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_3|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y18_N24
cycloneii_lcell_comb \low_pass|modgen_add_3|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_3|nx64792z1  = ((low_pass_in_15_ $ (\low_pass|prod_4__mults20_3|nx4241z1  $ (!\low_pass|modgen_add_3|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_3|nx2247z10  = CARRY((low_pass_in_15_ & ((\low_pass|prod_4__mults20_3|nx4241z1 ) # (!\low_pass|modgen_add_3|nx2247z13 ))) # (!low_pass_in_15_ & (\low_pass|prod_4__mults20_3|nx4241z1  & !\low_pass|modgen_add_3|nx2247z13 )))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_4__mults20_3|nx4241z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_3|nx2247z13 ),
	.combout(\low_pass|modgen_add_3|nx64792z1 ),
	.cout(\low_pass|modgen_add_3|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_3|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_3|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N22
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_5|nx63795z1  = (\low_pass|modgen_add_4|nx63795z1  & ((\low_pass|modgen_add_3|nx63795z1  & (\low_pass|modgen_add_5|nx2247z16  & VCC)) # (!\low_pass|modgen_add_3|nx63795z1  & (!\low_pass|modgen_add_5|nx2247z16 )))) # 
// (!\low_pass|modgen_add_4|nx63795z1  & ((\low_pass|modgen_add_3|nx63795z1  & (!\low_pass|modgen_add_5|nx2247z16 )) # (!\low_pass|modgen_add_3|nx63795z1  & ((\low_pass|modgen_add_5|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_5|nx2247z13  = CARRY((\low_pass|modgen_add_4|nx63795z1  & (!\low_pass|modgen_add_3|nx63795z1  & !\low_pass|modgen_add_5|nx2247z16 )) # (!\low_pass|modgen_add_4|nx63795z1  & ((!\low_pass|modgen_add_5|nx2247z16 ) # 
// (!\low_pass|modgen_add_3|nx63795z1 ))))

	.dataa(\low_pass|modgen_add_4|nx63795z1 ),
	.datab(\low_pass|modgen_add_3|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z16 ),
	.combout(\low_pass|modgen_add_5|nx63795z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_5|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y21_N24
cycloneii_lcell_comb \low_pass|modgen_add_5|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_5|nx64792z1  = ((\low_pass|modgen_add_4|nx64792z1  $ (\low_pass|modgen_add_3|nx64792z1  $ (!\low_pass|modgen_add_5|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_5|nx2247z10  = CARRY((\low_pass|modgen_add_4|nx64792z1  & ((\low_pass|modgen_add_3|nx64792z1 ) # (!\low_pass|modgen_add_5|nx2247z13 ))) # (!\low_pass|modgen_add_4|nx64792z1  & (\low_pass|modgen_add_3|nx64792z1  & 
// !\low_pass|modgen_add_5|nx2247z13 )))

	.dataa(\low_pass|modgen_add_4|nx64792z1 ),
	.datab(\low_pass|modgen_add_3|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_5|nx2247z13 ),
	.combout(\low_pass|modgen_add_5|nx64792z1 ),
	.cout(\low_pass|modgen_add_5|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_5|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_5|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N8
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52928 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_13_  = !\low_pass|prod_2__mults20_2|nx6235z6 
// \low_pass|prod_2__mults20_2|nx6235z5  = CARRY(!\low_pass|prod_2__mults20_2|nx6235z6 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z6 ),
	.combout(\low_pass|prod_2__mults20_2|d_13_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z5 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52928 .lut_mask = 16'h0F0F;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N10
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52927 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_14_  = \low_pass|prod_2__mults20_2|nx6235z5  $ (GND)
// \low_pass|prod_2__mults20_2|nx6235z4  = CARRY(!\low_pass|prod_2__mults20_2|nx6235z5 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z5 ),
	.combout(\low_pass|prod_2__mults20_2|d_14_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z4 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52927 .lut_mask = 16'hF00F;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y17_N12
cycloneii_lcell_comb \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52926 (
// Equation(s):
// \low_pass|prod_2__mults20_2|d_15_  = !\low_pass|prod_2__mults20_2|nx6235z4 
// \low_pass|prod_2__mults20_2|nx6235z3  = CARRY(!\low_pass|prod_2__mults20_2|nx6235z4 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|prod_2__mults20_2|nx6235z4 ),
	.combout(\low_pass|prod_2__mults20_2|d_15_ ),
	.cout(\low_pass|prod_2__mults20_2|nx6235z3 ));
// synopsys translate_off
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52926 .lut_mask = 16'h0F0F;
defparam \low_pass|prod_2__mults20_2|modgen_sub_2_ix6235z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N18
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52930 (
// Equation(s):
// \low_pass|modgen_add_1|nx46946z1  = (low_pass_in_15_ & ((\low_pass|prod_2__mults20_2|d_14_  & (\low_pass|modgen_add_1|nx2247z17  & VCC)) # (!\low_pass|prod_2__mults20_2|d_14_  & (!\low_pass|modgen_add_1|nx2247z17 )))) # (!low_pass_in_15_ & 
// ((\low_pass|prod_2__mults20_2|d_14_  & (!\low_pass|modgen_add_1|nx2247z17 )) # (!\low_pass|prod_2__mults20_2|d_14_  & ((\low_pass|modgen_add_1|nx2247z17 ) # (GND)))))
// \low_pass|modgen_add_1|nx2247z14  = CARRY((low_pass_in_15_ & (!\low_pass|prod_2__mults20_2|d_14_  & !\low_pass|modgen_add_1|nx2247z17 )) # (!low_pass_in_15_ & ((!\low_pass|modgen_add_1|nx2247z17 ) # (!\low_pass|prod_2__mults20_2|d_14_ ))))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_2__mults20_2|d_14_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z17 ),
	.combout(\low_pass|modgen_add_1|nx46946z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z14 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52930 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_1|ix2247z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N20
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_1|nx62798z1  = ((low_pass_in_15_ $ (\low_pass|prod_2__mults20_2|d_15_  $ (!\low_pass|modgen_add_1|nx2247z14 )))) # (GND)
// \low_pass|modgen_add_1|nx2247z11  = CARRY((low_pass_in_15_ & ((\low_pass|prod_2__mults20_2|d_15_ ) # (!\low_pass|modgen_add_1|nx2247z14 ))) # (!low_pass_in_15_ & (\low_pass|prod_2__mults20_2|d_15_  & !\low_pass|modgen_add_1|nx2247z14 )))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_2__mults20_2|d_15_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z14 ),
	.combout(\low_pass|modgen_add_1|nx62798z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z11 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_1|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N22
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_1|nx63795z1  = (low_pass_in_15_ & ((\low_pass|prod_2__mults20_2|d_16_  & (\low_pass|modgen_add_1|nx2247z11  & VCC)) # (!\low_pass|prod_2__mults20_2|d_16_  & (!\low_pass|modgen_add_1|nx2247z11 )))) # (!low_pass_in_15_ & 
// ((\low_pass|prod_2__mults20_2|d_16_  & (!\low_pass|modgen_add_1|nx2247z11 )) # (!\low_pass|prod_2__mults20_2|d_16_  & ((\low_pass|modgen_add_1|nx2247z11 ) # (GND)))))
// \low_pass|modgen_add_1|nx2247z8  = CARRY((low_pass_in_15_ & (!\low_pass|prod_2__mults20_2|d_16_  & !\low_pass|modgen_add_1|nx2247z11 )) # (!low_pass_in_15_ & ((!\low_pass|modgen_add_1|nx2247z11 ) # (!\low_pass|prod_2__mults20_2|d_16_ ))))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_2__mults20_2|d_16_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z11 ),
	.combout(\low_pass|modgen_add_1|nx63795z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z8 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_1|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y18_N24
cycloneii_lcell_comb \low_pass|modgen_add_1|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_1|nx64792z1  = ((\low_pass|prod_2__mults20_2|nx6235z1  $ (low_pass_in_15_ $ (!\low_pass|modgen_add_1|nx2247z8 )))) # (GND)
// \low_pass|modgen_add_1|nx2247z6  = CARRY((\low_pass|prod_2__mults20_2|nx6235z1  & ((low_pass_in_15_) # (!\low_pass|modgen_add_1|nx2247z8 ))) # (!\low_pass|prod_2__mults20_2|nx6235z1  & (low_pass_in_15_ & !\low_pass|modgen_add_1|nx2247z8 )))

	.dataa(\low_pass|prod_2__mults20_2|nx6235z1 ),
	.datab(low_pass_in_15_),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_1|nx2247z8 ),
	.combout(\low_pass|modgen_add_1|nx64792z1 ),
	.cout(\low_pass|modgen_add_1|nx2247z6 ));
// synopsys translate_off
defparam \low_pass|modgen_add_1|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_1|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X22_Y19_N0
cycloneii_lcell_comb \low_pass|modgen_add_8|ix2247z52932 (
// Equation(s):
// \low_pass|modgen_add_8|nx44952z1  = ((\low_pass|prod_1__mults19_1|nx63795z1  $ (\low_pass|prod_5__mults21_4|d_10__dup_186  $ (!\low_pass|modgen_add_8|nx2247z28 )))) # (GND)
// \low_pass|modgen_add_8|nx2247z25  = CARRY((\low_pass|prod_1__mults19_1|nx63795z1  & ((\low_pass|prod_5__mults21_4|d_10__dup_186 ) # (!\low_pass|modgen_add_8|nx2247z28 ))) # (!\low_pass|prod_1__mults19_1|nx63795z1  & 
// (\low_pass|prod_5__mults21_4|d_10__dup_186  & !\low_pass|modgen_add_8|nx2247z28 )))

	.dataa(\low_pass|prod_1__mults19_1|nx63795z1 ),
	.datab(\low_pass|prod_5__mults21_4|d_10__dup_186 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_8|nx2247z28 ),
	.combout(\low_pass|modgen_add_8|nx44952z1 ),
	.cout(\low_pass|modgen_add_8|nx2247z25 ));
// synopsys translate_off
defparam \low_pass|modgen_add_8|ix2247z52932 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_8|ix2247z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N20
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_9|nx62798z1  = ((\low_pass|modgen_add_8|nx62798z1  $ (\low_pass|modgen_add_4|nx62798z1  $ (!\low_pass|modgen_add_9|nx2247z19 )))) # (GND)
// \low_pass|modgen_add_9|nx2247z16  = CARRY((\low_pass|modgen_add_8|nx62798z1  & ((\low_pass|modgen_add_4|nx62798z1 ) # (!\low_pass|modgen_add_9|nx2247z19 ))) # (!\low_pass|modgen_add_8|nx62798z1  & (\low_pass|modgen_add_4|nx62798z1  & 
// !\low_pass|modgen_add_9|nx2247z19 )))

	.dataa(\low_pass|modgen_add_8|nx62798z1 ),
	.datab(\low_pass|modgen_add_4|nx62798z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z19 ),
	.combout(\low_pass|modgen_add_9|nx62798z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z16 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_9|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X23_Y19_N22
cycloneii_lcell_comb \low_pass|modgen_add_9|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_9|nx63795z1  = (\low_pass|modgen_add_8|nx63795z1  & ((\low_pass|modgen_add_4|nx63795z1  & (\low_pass|modgen_add_9|nx2247z16  & VCC)) # (!\low_pass|modgen_add_4|nx63795z1  & (!\low_pass|modgen_add_9|nx2247z16 )))) # 
// (!\low_pass|modgen_add_8|nx63795z1  & ((\low_pass|modgen_add_4|nx63795z1  & (!\low_pass|modgen_add_9|nx2247z16 )) # (!\low_pass|modgen_add_4|nx63795z1  & ((\low_pass|modgen_add_9|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_9|nx2247z13  = CARRY((\low_pass|modgen_add_8|nx63795z1  & (!\low_pass|modgen_add_4|nx63795z1  & !\low_pass|modgen_add_9|nx2247z16 )) # (!\low_pass|modgen_add_8|nx63795z1  & ((!\low_pass|modgen_add_9|nx2247z16 ) # 
// (!\low_pass|modgen_add_4|nx63795z1 ))))

	.dataa(\low_pass|modgen_add_8|nx63795z1 ),
	.datab(\low_pass|modgen_add_4|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_9|nx2247z16 ),
	.combout(\low_pass|modgen_add_9|nx63795z1 ),
	.cout(\low_pass|modgen_add_9|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_9|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_9|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N20
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52929 (
// Equation(s):
// \low_pass|modgen_add_10|nx62798z1  = ((low_pass_in_15_ $ (\low_pass|prod_4__mults20_3|nx2247z1  $ (!\low_pass|modgen_add_10|nx2247z15 )))) # (GND)
// \low_pass|modgen_add_10|nx2247z13  = CARRY((low_pass_in_15_ & ((\low_pass|prod_4__mults20_3|nx2247z1 ) # (!\low_pass|modgen_add_10|nx2247z15 ))) # (!low_pass_in_15_ & (\low_pass|prod_4__mults20_3|nx2247z1  & !\low_pass|modgen_add_10|nx2247z15 )))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_4__mults20_3|nx2247z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z15 ),
	.combout(\low_pass|modgen_add_10|nx62798z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52929 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_10|ix2247z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y19_N22
cycloneii_lcell_comb \low_pass|modgen_add_10|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_10|nx63795z1  = (low_pass_in_15_ & ((\low_pass|prod_4__mults20_3|nx3244z1  & (\low_pass|modgen_add_10|nx2247z13  & VCC)) # (!\low_pass|prod_4__mults20_3|nx3244z1  & (!\low_pass|modgen_add_10|nx2247z13 )))) # (!low_pass_in_15_ & 
// ((\low_pass|prod_4__mults20_3|nx3244z1  & (!\low_pass|modgen_add_10|nx2247z13 )) # (!\low_pass|prod_4__mults20_3|nx3244z1  & ((\low_pass|modgen_add_10|nx2247z13 ) # (GND)))))
// \low_pass|modgen_add_10|nx2247z10  = CARRY((low_pass_in_15_ & (!\low_pass|prod_4__mults20_3|nx3244z1  & !\low_pass|modgen_add_10|nx2247z13 )) # (!low_pass_in_15_ & ((!\low_pass|modgen_add_10|nx2247z13 ) # (!\low_pass|prod_4__mults20_3|nx3244z1 ))))

	.dataa(low_pass_in_15_),
	.datab(\low_pass|prod_4__mults20_3|nx3244z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_10|nx2247z13 ),
	.combout(\low_pass|modgen_add_10|nx63795z1 ),
	.cout(\low_pass|modgen_add_10|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_10|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_10|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N22
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52928 (
// Equation(s):
// \low_pass|modgen_add_14|nx63795z1  = (\low_pass|modgen_add_13|nx63795z1  & ((\low_pass|modgen_add_9|nx63795z1  & (\low_pass|modgen_add_14|nx2247z16  & VCC)) # (!\low_pass|modgen_add_9|nx63795z1  & (!\low_pass|modgen_add_14|nx2247z16 )))) # 
// (!\low_pass|modgen_add_13|nx63795z1  & ((\low_pass|modgen_add_9|nx63795z1  & (!\low_pass|modgen_add_14|nx2247z16 )) # (!\low_pass|modgen_add_9|nx63795z1  & ((\low_pass|modgen_add_14|nx2247z16 ) # (GND)))))
// \low_pass|modgen_add_14|nx2247z13  = CARRY((\low_pass|modgen_add_13|nx63795z1  & (!\low_pass|modgen_add_9|nx63795z1  & !\low_pass|modgen_add_14|nx2247z16 )) # (!\low_pass|modgen_add_13|nx63795z1  & ((!\low_pass|modgen_add_14|nx2247z16 ) # 
// (!\low_pass|modgen_add_9|nx63795z1 ))))

	.dataa(\low_pass|modgen_add_13|nx63795z1 ),
	.datab(\low_pass|modgen_add_9|nx63795z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z16 ),
	.combout(\low_pass|modgen_add_14|nx63795z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z13 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52928 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_14|ix2247z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y19_N24
cycloneii_lcell_comb \low_pass|modgen_add_14|ix2247z52927 (
// Equation(s):
// \low_pass|modgen_add_14|nx64792z1  = ((\low_pass|modgen_add_9|nx64792z1  $ (\low_pass|modgen_add_13|nx64792z1  $ (!\low_pass|modgen_add_14|nx2247z13 )))) # (GND)
// \low_pass|modgen_add_14|nx2247z10  = CARRY((\low_pass|modgen_add_9|nx64792z1  & ((\low_pass|modgen_add_13|nx64792z1 ) # (!\low_pass|modgen_add_14|nx2247z13 ))) # (!\low_pass|modgen_add_9|nx64792z1  & (\low_pass|modgen_add_13|nx64792z1  & 
// !\low_pass|modgen_add_14|nx2247z13 )))

	.dataa(\low_pass|modgen_add_9|nx64792z1 ),
	.datab(\low_pass|modgen_add_13|nx64792z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_14|nx2247z13 ),
	.combout(\low_pass|modgen_add_14|nx64792z1 ),
	.cout(\low_pass|modgen_add_14|nx2247z10 ));
// synopsys translate_off
defparam \low_pass|modgen_add_14|ix2247z52927 .lut_mask = 16'h698E;
defparam \low_pass|modgen_add_14|ix2247z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y21_N26
cycloneii_lcell_comb \low_pass|modgen_add_15|ix2247z52926 (
// Equation(s):
// \low_pass|modgen_add_15|nx253z1  = (\low_pass|modgen_add_6|nx253z1  & ((\low_pass|modgen_add_14|nx253z1  & (\low_pass|modgen_add_15|nx2247z10  & VCC)) # (!\low_pass|modgen_add_14|nx253z1  & (!\low_pass|modgen_add_15|nx2247z10 )))) # 
// (!\low_pass|modgen_add_6|nx253z1  & ((\low_pass|modgen_add_14|nx253z1  & (!\low_pass|modgen_add_15|nx2247z10 )) # (!\low_pass|modgen_add_14|nx253z1  & ((\low_pass|modgen_add_15|nx2247z10 ) # (GND)))))
// \low_pass|modgen_add_15|nx2247z7  = CARRY((\low_pass|modgen_add_6|nx253z1  & (!\low_pass|modgen_add_14|nx253z1  & !\low_pass|modgen_add_15|nx2247z10 )) # (!\low_pass|modgen_add_6|nx253z1  & ((!\low_pass|modgen_add_15|nx2247z10 ) # 
// (!\low_pass|modgen_add_14|nx253z1 ))))

	.dataa(\low_pass|modgen_add_6|nx253z1 ),
	.datab(\low_pass|modgen_add_14|nx253z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\low_pass|modgen_add_15|nx2247z10 ),
	.combout(\low_pass|modgen_add_15|nx253z1 ),
	.cout(\low_pass|modgen_add_15|nx2247z7 ));
// synopsys translate_off
defparam \low_pass|modgen_add_15|ix2247z52926 .lut_mask = 16'h9617;
defparam \low_pass|modgen_add_15|ix2247z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y20_N5
cycloneii_lcell_ff reg_audio_out_14_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\audio_out_14_~feeder_combout ),
	.sdata(\low_pass|modgen_add_15|nx1250z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_14_));

// Location: LCCOMB_X28_Y20_N30
cycloneii_lcell_comb \audio_out_13_~feeder (
// Equation(s):
// \audio_out_13_~feeder_combout  = audio_out_1n1ss1_11_

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(audio_out_1n1ss1_11_),
	.cin(gnd),
	.combout(\audio_out_13_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \audio_out_13_~feeder .lut_mask = 16'hFF00;
defparam \audio_out_13_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y20_N31
cycloneii_lcell_ff reg_audio_out_13_(
	.clk(\aud_adclrck_dup0~clkctrl_outclk ),
	.datain(\audio_out_13_~feeder_combout ),
	.sdata(\low_pass|modgen_add_15|nx253z1 ),
	.aclr(gnd),
	.sclr(gnd),
	.sload(\sw~combout [16]),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(audio_out_13_));

// Location: LCCOMB_X28_Y20_N2
cycloneii_lcell_comb ix24999z52932(
// Equation(s):
// nx24999z9 = (bit_position_0_ & (audio_out_12_ & (bit_position_1_))) # (!bit_position_0_ & (((audio_out_13_) # (!bit_position_1_))))

	.dataa(audio_out_12_),
	.datab(bit_position_0_),
	.datac(bit_position_1_),
	.datad(audio_out_13_),
	.cin(gnd),
	.combout(nx24999z9),
	.cout());
// synopsys translate_off
defparam ix24999z52932.lut_mask = 16'hB383;
defparam ix24999z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y20_N4
cycloneii_lcell_comb ix24999z52931(
// Equation(s):
// nx24999z8 = (bit_position_1_ & (((nx24999z9)))) # (!bit_position_1_ & ((nx24999z9 & (audio_out_15_)) # (!nx24999z9 & ((audio_out_14_)))))

	.dataa(audio_out_15_),
	.datab(bit_position_1_),
	.datac(audio_out_14_),
	.datad(nx24999z9),
	.cin(gnd),
	.combout(nx24999z8),
	.cout());
// synopsys translate_off
defparam ix24999z52931.lut_mask = 16'hEE30;
defparam ix24999z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y20_N22
cycloneii_lcell_comb ix24999z52923(
// Equation(s):
// aud_dacdat_dup0 = (nx24999z1 & (((nx24999z8) # (bit_position_3_)))) # (!nx24999z1 & (nx24999z6 & ((!bit_position_3_))))

	.dataa(nx24999z1),
	.datab(nx24999z6),
	.datac(nx24999z8),
	.datad(bit_position_3_),
	.cin(gnd),
	.combout(aud_dacdat_dup0),
	.cout());
// synopsys translate_off
defparam ix24999z52923.lut_mask = 16'hAAE4;
defparam ix24999z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N10
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1  = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  $ (VCC)
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10  = CARRY(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929 .lut_mask = 16'h55AA;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & 
// ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ) # (GND)))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8  = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z10 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N14
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8  $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8  & VCC))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z8 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N0
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52939 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx51271z1  = \u_i2c_av_config|modgen_counter_cont|q_0_  $ (VCC)
// \u_i2c_av_config|modgen_counter_cont|nx22081z16  = CARRY(\u_i2c_av_config|modgen_counter_cont|q_0_ )

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_0_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx51271z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z16 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52939 .lut_mask = 16'h33CC;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N16
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52931 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx59247z1  = (\u_i2c_av_config|modgen_counter_cont|q_8_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z9  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_8_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z9  & 
// VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z8  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_8_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z9 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_8_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z9 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx59247z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N17
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_8_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_8_ ));

// Location: LCCOMB_X36_Y33_N24
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52925 (
// Equation(s):
// \u_i2c_av_config|nx35560z3  = (\u_i2c_av_config|modgen_counter_cont|q_10_  & (\u_i2c_av_config|modgen_counter_cont|q_11_  & (\u_i2c_av_config|modgen_counter_cont|q_8_  & \u_i2c_av_config|modgen_counter_cont|q_9_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_10_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_11_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_8_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_9_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52925 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix35560z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y33_N12
cycloneii_lcell_comb \u_i2c_av_config|ix17807z52924 (
// Equation(s):
// \u_i2c_av_config|nx17807z2  = (\u_i2c_av_config|modgen_counter_cont|q_3_  & (\u_i2c_av_config|modgen_counter_cont|q_1_  & (\u_i2c_av_config|modgen_counter_cont|q_0_  & \u_i2c_av_config|modgen_counter_cont|q_2_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_3_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_1_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_0_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_2_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx17807z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix17807z52924 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix17807z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y33_N20
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52923 (
// Equation(s):
// \u_i2c_av_config|nx35560z1  = (((!\u_i2c_av_config|nx17807z2 ) # (!\u_i2c_av_config|nx35560z3 )) # (!\u_i2c_av_config|nx35560z4 )) # (!\u_i2c_av_config|nx35560z2 )

	.dataa(\u_i2c_av_config|nx35560z2 ),
	.datab(\u_i2c_av_config|nx35560z4 ),
	.datac(\u_i2c_av_config|nx35560z3 ),
	.datad(\u_i2c_av_config|nx17807z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52923 .lut_mask = 16'h7FFF;
defparam \u_i2c_av_config|ix35560z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y33_N1
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_0_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_0_ ));

// Location: LCCOMB_X37_Y33_N2
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52938 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx52268z1  = (\u_i2c_av_config|modgen_counter_cont|q_1_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z16 )) # (!\u_i2c_av_config|modgen_counter_cont|q_1_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z16 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z15  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z16 ) # (!\u_i2c_av_config|modgen_counter_cont|q_1_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_1_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z16 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx52268z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z15 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N3
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_1_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_1_ ));

// Location: LCCOMB_X37_Y33_N4
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52937 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx53265z1  = (\u_i2c_av_config|modgen_counter_cont|q_2_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z15  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_2_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z15  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z14  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_2_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z15 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_2_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z15 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx53265z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z14 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N5
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_2_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_2_ ));

// Location: LCCOMB_X37_Y33_N8
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52935 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx55259z1  = (\u_i2c_av_config|modgen_counter_cont|q_4_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z13  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_4_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z13  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z12  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_4_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z13 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_4_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z13 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx55259z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z12 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N9
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_4_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_4_ ));

// Location: LCCOMB_X37_Y33_N14
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52932 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx58250z1  = (\u_i2c_av_config|modgen_counter_cont|q_7_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z10 )) # (!\u_i2c_av_config|modgen_counter_cont|q_7_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z10 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z9  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z10 ) # (!\u_i2c_av_config|modgen_counter_cont|q_7_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_7_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z10 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx58250z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z9 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N15
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_7_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_7_ ));

// Location: LCCOMB_X37_Y33_N18
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52930 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx60244z1  = (\u_i2c_av_config|modgen_counter_cont|q_9_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z8 )) # (!\u_i2c_av_config|modgen_counter_cont|q_9_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z8 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z7  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z8 ) # (!\u_i2c_av_config|modgen_counter_cont|q_9_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_9_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z8 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx60244z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z7 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N19
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_9_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_9_ ));

// Location: LCCOMB_X37_Y33_N22
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52928 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx18093z1  = (\u_i2c_av_config|modgen_counter_cont|q_11_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z6 )) # (!\u_i2c_av_config|modgen_counter_cont|q_11_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z6 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z5  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z6 ) # (!\u_i2c_av_config|modgen_counter_cont|q_11_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_11_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z6 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx18093z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z5 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N23
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_11_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_11_ ));

// Location: LCCOMB_X37_Y33_N24
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52927 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx19090z1  = (\u_i2c_av_config|modgen_counter_cont|q_12_  & (\u_i2c_av_config|modgen_counter_cont|nx22081z5  $ (GND))) # (!\u_i2c_av_config|modgen_counter_cont|q_12_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z5  
// & VCC))
// \u_i2c_av_config|modgen_counter_cont|nx22081z4  = CARRY((\u_i2c_av_config|modgen_counter_cont|q_12_  & !\u_i2c_av_config|modgen_counter_cont|nx22081z5 ))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_12_ ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z5 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx19090z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z4 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y33_N26
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_cont|ix22081z52926 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_cont|nx20087z1  = (\u_i2c_av_config|modgen_counter_cont|q_13_  & (!\u_i2c_av_config|modgen_counter_cont|nx22081z4 )) # (!\u_i2c_av_config|modgen_counter_cont|q_13_  & ((\u_i2c_av_config|modgen_counter_cont|nx22081z4 ) # 
// (GND)))
// \u_i2c_av_config|modgen_counter_cont|nx22081z3  = CARRY((!\u_i2c_av_config|modgen_counter_cont|nx22081z4 ) # (!\u_i2c_av_config|modgen_counter_cont|q_13_ ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_13_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_cont|nx22081z4 ),
	.combout(\u_i2c_av_config|modgen_counter_cont|nx20087z1 ),
	.cout(\u_i2c_av_config|modgen_counter_cont|nx22081z3 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_cont|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y33_N27
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_13_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx20087z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_13_ ));

// Location: LCFF_X37_Y33_N29
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_14_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx21084z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_14_ ));

// Location: LCFF_X37_Y33_N25
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_cont|reg_q_12_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_cont|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_i2c_av_config|nx35560z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_cont|q_12_ ));

// Location: LCCOMB_X36_Y33_N2
cycloneii_lcell_comb \u_i2c_av_config|ix35560z52926 (
// Equation(s):
// \u_i2c_av_config|nx35560z4  = (\u_i2c_av_config|modgen_counter_cont|q_15_  & (\u_i2c_av_config|modgen_counter_cont|q_14_  & (\u_i2c_av_config|modgen_counter_cont|q_13_  & \u_i2c_av_config|modgen_counter_cont|q_12_ )))

	.dataa(\u_i2c_av_config|modgen_counter_cont|q_15_ ),
	.datab(\u_i2c_av_config|modgen_counter_cont|q_14_ ),
	.datac(\u_i2c_av_config|modgen_counter_cont|q_13_ ),
	.datad(\u_i2c_av_config|modgen_counter_cont|q_12_ ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx35560z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix35560z52926 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix35560z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y33_N18
cycloneii_lcell_comb \u_i2c_av_config|ix17807z52923 (
// Equation(s):
// \u_i2c_av_config|nx17807z1  = (\u_i2c_av_config|nx35560z2  & (\u_i2c_av_config|nx35560z4  & (\u_i2c_av_config|nx35560z3  & \u_i2c_av_config|nx17807z2 )))

	.dataa(\u_i2c_av_config|nx35560z2 ),
	.datab(\u_i2c_av_config|nx35560z4 ),
	.datac(\u_i2c_av_config|nx35560z3 ),
	.datad(\u_i2c_av_config|nx17807z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx17807z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix17807z52923 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix17807z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y33_N19
cycloneii_lcell_ff \u_i2c_av_config|reg_reset_n (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|nx17807z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|reset_n ));

// Location: LCCOMB_X36_Y33_N0
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52923 (
// Equation(s):
// \u_i2c_av_config|nx2692z1  = \u_i2c_av_config|nx2692z2  $ (\u_i2c_av_config|m_i2c_ctrl_clk )

	.dataa(\u_i2c_av_config|nx2692z2 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52923 .lut_mask = 16'h5A5A;
defparam \u_i2c_av_config|ix2692z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y33_N1
cycloneii_lcell_ff \u_i2c_av_config|reg_m_i2c_ctrl_clk (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|nx2692z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_i2c_av_config|reset_n ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|m_i2c_ctrl_clk ));

// Location: LCFF_X36_Y35_N11
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_0_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx51271z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ));

// Location: LCCOMB_X36_Y35_N24
cycloneii_lcell_comb \u_i2c_av_config|u0|ix7286z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx7286z1  = (\u_i2c_av_config|u0|nx7286z2 ) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ))

	.dataa(\u_i2c_av_config|u0|nx7286z2 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx7286z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix7286z52923 .lut_mask = 16'hAFFF;
defparam \u_i2c_av_config|u0|ix7286z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y35_N4
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1  = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25  $ (VCC)
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24  = CARRY(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 )

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z24 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936 .lut_mask = 16'h33CC;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N4
cycloneii_lcell_comb \u_i2c_av_config|ix23875z52923 (
// Equation(s):
// \u_i2c_av_config|nx23875z1  = (\u_i2c_av_config|nx2692z2 ) # (!\u_i2c_av_config|reset_n )

	.dataa(\u_i2c_av_config|reset_n ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|nx2692z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx23875z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix23875z52923 .lut_mask = 16'hFF55;
defparam \u_i2c_av_config|ix23875z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y35_N5
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_0_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z25 ));

// Location: LCCOMB_X37_Y35_N8
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z22 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N9
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_2_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ));

// Location: LCCOMB_X37_Y35_N10
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z20 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z18 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X37_Y35_N14
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z16 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z14 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N15
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_5_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ));

// Location: LCCOMB_X37_Y35_N18
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z12 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N19
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_7_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ));

// Location: LCCOMB_X37_Y35_N20
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10  $ (GND))) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & 
// (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10  & VCC))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8  = CARRY((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & !\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z10 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928 .lut_mask = 16'hA50A;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N21
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_8_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ));

// Location: LCCOMB_X37_Y35_N22
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z8 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z6 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N23
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_9_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z7 ));

// Location: LCCOMB_X37_Y35_N26
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3  & (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 )) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3  & 
// ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ) # (GND)))
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2  = CARRY((!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ) # (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z4 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1 ),
	.cout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2 ));
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925 .lut_mask = 16'h3C3F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N27
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_11_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ));

// Location: LCCOMB_X36_Y35_N2
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52926 (
// Equation(s):
// \u_i2c_av_config|nx2692z4  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9  & (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3  & 
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 )))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z13 ),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z9 ),
	.datac(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z3 ),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z11 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52926 .lut_mask = 16'h8000;
defparam \u_i2c_av_config|ix2692z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X37_Y35_N11
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_3_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ));

// Location: LCCOMB_X36_Y35_N8
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52925 (
// Equation(s):
// \u_i2c_av_config|nx2692z3  = (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ) # 
// (\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 )))

	.dataa(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z17 ),
	.datab(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z19 ),
	.datac(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z15 ),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z21 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52925 .lut_mask = 16'hFFFE;
defparam \u_i2c_av_config|ix2692z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X37_Y35_N28
cycloneii_lcell_comb \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923 (
// Equation(s):
// \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1  = \u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2  $ (!\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ),
	.cin(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z2 ),
	.combout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923 .lut_mask = 16'hF00F;
defparam \u_i2c_av_config|modgen_counter_m_i2c_clk_div|ix19090z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X37_Y35_N29
cycloneii_lcell_ff \u_i2c_av_config|modgen_counter_m_i2c_clk_div|reg_q_12_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_i2c_av_config|nx23875z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ));

// Location: LCCOMB_X36_Y35_N30
cycloneii_lcell_comb \u_i2c_av_config|ix2692z52924 (
// Equation(s):
// \u_i2c_av_config|nx2692z2  = (\u_i2c_av_config|nx2692z5 ) # ((\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ) # ((\u_i2c_av_config|nx2692z4  & \u_i2c_av_config|nx2692z3 )))

	.dataa(\u_i2c_av_config|nx2692z5 ),
	.datab(\u_i2c_av_config|nx2692z4 ),
	.datac(\u_i2c_av_config|nx2692z3 ),
	.datad(\u_i2c_av_config|modgen_counter_m_i2c_clk_div|nx1963z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx2692z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix2692z52924 .lut_mask = 16'hFFEA;
defparam \u_i2c_av_config|ix2692z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N0
cycloneii_lcell_comb \u_i2c_av_config|ix51161z52923 (
// Equation(s):
// \u_i2c_av_config|nx51161z1  = (\u_i2c_av_config|reset_n  & (\u_i2c_av_config|m_i2c_ctrl_clk  $ (\u_i2c_av_config|nx2692z2 )))

	.dataa(\u_i2c_av_config|reset_n ),
	.datab(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datac(vcc),
	.datad(\u_i2c_av_config|nx2692z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|nx51161z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|ix51161z52923 .lut_mask = 16'h2288;
defparam \u_i2c_av_config|ix51161z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3  = (!\u_i2c_av_config|m_i2c_ctrl_clk  & (\u_i2c_av_config|nx51161z1  & ((\u_i2c_av_config|u0|nx7286z1 ) # (!\u_i2c_av_config|reset_n ))))

	.dataa(\u_i2c_av_config|reset_n ),
	.datab(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datac(\u_i2c_av_config|u0|nx7286z1 ),
	.datad(\u_i2c_av_config|nx51161z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924 .lut_mask = 16'h3100;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix55259z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y35_N15
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_2_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx53265z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ));

// Location: LCCOMB_X36_Y35_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & 
// ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ) # (GND)))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4  = CARRY((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z6 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926 .lut_mask = 16'h5A5F;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4  $ (GND))) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4  & VCC))
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z4 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1 ),
	.cout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925 .lut_mask = 16'hC30C;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X36_Y35_N19
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_4_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ));

// Location: LCCOMB_X36_Y35_N20
cycloneii_lcell_comb \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923 (
// Equation(s):
// \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1  = \u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  $ (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z2 ),
	.combout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923 .lut_mask = 16'h5A5A;
defparam \u_i2c_av_config|u0|modgen_counter_sd_counter|ix56256z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X36_Y35_N21
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_5_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ));

// Location: LCFF_X36_Y35_N17
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_3_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx54262z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ));

// Location: LCFF_X36_Y35_N13
cycloneii_lcell_ff \u_i2c_av_config|u0|modgen_counter_sd_counter|reg_q_1_ (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx52268z1 ),
	.sdata(vcc),
	.aclr(gnd),
	.sclr(gnd),
	.sload(!\u_i2c_av_config|reset_n ),
	.ena(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx55259z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ));

// Location: LCCOMB_X34_Y35_N0
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx43379z4  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx43379z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52926 .lut_mask = 16'hA000;
defparam \u_i2c_av_config|u0|ix43379z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N12
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52925 (
// Equation(s):
// \u_i2c_av_config|u0|nx43379z3  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ) # (!\u_i2c_av_config|u0|nx43379z4 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datac(\u_i2c_av_config|u0|nx43379z4 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx43379z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52925 .lut_mask = 16'h0222;
defparam \u_i2c_av_config|u0|ix43379z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N8
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z1  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52923 .lut_mask = 16'h5500;
defparam \u_i2c_av_config|u0|ix44942z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N0
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z4  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52926 .lut_mask = 16'hFFCC;
defparam \u_i2c_av_config|u0|ix44942z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N0
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52927 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z5  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ) # (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z5 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52927 .lut_mask = 16'hFAFA;
defparam \u_i2c_av_config|u0|ix44942z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N2
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52930 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z8  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z8 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52930 .lut_mask = 16'h0FFF;
defparam \u_i2c_av_config|u0|ix44942z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N28
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52928 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z6  = ((!\u_i2c_av_config|u0|nx44942z7  & (!\u_i2c_av_config|u0|nx44942z8  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ))) # (!\u_i2c_av_config|reset_n )

	.dataa(\u_i2c_av_config|u0|nx44942z7 ),
	.datab(\u_i2c_av_config|u0|nx44942z8 ),
	.datac(\u_i2c_av_config|reset_n ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z6 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52928 .lut_mask = 16'h0F1F;
defparam \u_i2c_av_config|u0|ix44942z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N30
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52925 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z3  = (\u_i2c_av_config|u0|nx44942z6 ) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & (!\u_i2c_av_config|u0|nx44942z4  & !\u_i2c_av_config|u0|nx44942z5 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(\u_i2c_av_config|u0|nx44942z4 ),
	.datac(\u_i2c_av_config|u0|nx44942z5 ),
	.datad(\u_i2c_av_config|u0|nx44942z6 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52925 .lut_mask = 16'hFF01;
defparam \u_i2c_av_config|u0|ix44942z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z2  = (\u_i2c_av_config|u0|nx44942z3  & (!\u_i2c_av_config|m_i2c_ctrl_clk  & \u_i2c_av_config|nx51161z1 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|nx44942z3 ),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|nx51161z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52924 .lut_mask = 16'h0C00;
defparam \u_i2c_av_config|u0|ix44942z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y35_N9
cycloneii_lcell_ff \u_i2c_av_config|u0|reg_sclk (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|nx44942z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_i2c_av_config|reset_n ),
	.sload(gnd),
	.ena(\u_i2c_av_config|u0|nx44942z2 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|nx43379z1 ));

// Location: LCCOMB_X33_Y35_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx43379z2  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ) # 
// (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx43379z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52924 .lut_mask = 16'h1110;
defparam \u_i2c_av_config|u0|ix43379z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|ix43379z52923 (
// Equation(s):
// \u_i2c_av_config|u0|p_i2c_sclk  = ((!\u_i2c_av_config|m_i2c_ctrl_clk  & ((\u_i2c_av_config|u0|nx43379z3 ) # (\u_i2c_av_config|u0|nx43379z2 )))) # (!\u_i2c_av_config|u0|nx43379z1 )

	.dataa(\u_i2c_av_config|u0|nx43379z3 ),
	.datab(\u_i2c_av_config|u0|nx43379z1 ),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|u0|nx43379z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|p_i2c_sclk ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix43379z52923 .lut_mask = 16'h3F3B;
defparam \u_i2c_av_config|u0|ix43379z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: CLKCTRL_G9
cycloneii_clkctrl \clock_27~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clock_27~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clock_27~clkctrl_outclk ));
// synopsys translate_off
defparam \clock_27~clkctrl .clock_type = "global clock";
defparam \clock_27~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X36_Y35_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|ix22137z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx22137z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ) # ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ) # 
// (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx22137z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix22137z52923 .lut_mask = 16'hFEF0;
defparam \u_i2c_av_config|u0|ix22137z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N14
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1  = (\u_i2c_av_config|u0|sdo_5n5s2f1_0_  & ((GND) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_0_  & 
// (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  $ (GND)))
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11  = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_0_ ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ))

	.dataa(\u_i2c_av_config|u0|sdo_5n5s2f1_0_ ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928 .lut_mask = 16'h66BB;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  = (\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  
// & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11  & VCC)))) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & ((\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ) # (GND))) # 
// (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ))))
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8  = CARRY((\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 )) # (!\u_i2c_av_config|u0|sdo_5n5s2f1_1_  & 
// ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ))))

	.dataa(\u_i2c_av_config|u0|sdo_5n5s2f1_1_ ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z11 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927 .lut_mask = 16'h694D;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1  = ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  $ (\u_i2c_av_config|u0|nx22137z1  $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 )))) # (GND)
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (\u_i2c_av_config|u0|nx22137z1  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & 
// ((\u_i2c_av_config|u0|nx22137z1 ) # (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|nx22137z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z8 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926 .lut_mask = 16'h964D;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N20
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 )) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & 
// (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5  & VCC))
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3  = CARRY((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z5 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ),
	.cout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3 ));
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925 .lut_mask = 16'h5A0A;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923 (
// Equation(s):
// \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1  = \u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3  $ (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z3 ),
	.combout(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923 .lut_mask = 16'hF00F;
defparam \u_i2c_av_config|u0|sdo_sub5_5i2|ix41961z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N2
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52932 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z10  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1  $ (\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 )))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|sdo_sub5_5i2|nx41961z1 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx37973z1 ),
	.datad(\u_i2c_av_config|u0|sdo_sub5_5i2|nx39967z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z10 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52932 .lut_mask = 16'h003C;
defparam \u_i2c_av_config|u0|ix41315z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y35_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52928 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z6  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3  & ((\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (\u_i2c_av_config|u0|nx44942z5 ))))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datac(\u_i2c_av_config|u0|nx44942z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z6 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52928 .lut_mask = 16'h0032;
defparam \u_i2c_av_config|u0|ix41315z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N4
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52926 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z4  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ) # (!\u_i2c_av_config|u0|nx7286z2 )

	.dataa(\u_i2c_av_config|u0|nx7286z2 ),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z4 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52926 .lut_mask = 16'hFF55;
defparam \u_i2c_av_config|u0|ix41315z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N24
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52925 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z3  = (\u_i2c_av_config|u0|nx41315z6 ) # ((\u_i2c_av_config|u0|nx22137z1  & ((!\u_i2c_av_config|u0|nx41315z4 ))) # (!\u_i2c_av_config|u0|nx22137z1  & (\u_i2c_av_config|u0|nx41315z5 )))

	.dataa(\u_i2c_av_config|u0|nx41315z5 ),
	.datab(\u_i2c_av_config|u0|nx41315z6 ),
	.datac(\u_i2c_av_config|u0|nx41315z4 ),
	.datad(\u_i2c_av_config|u0|nx22137z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z3 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52925 .lut_mask = 16'hCFEE;
defparam \u_i2c_av_config|u0|ix41315z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N10
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52924 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z2  = (!\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1  & \u_i2c_av_config|u0|nx41315z3 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx40964z1 ),
	.datad(\u_i2c_av_config|u0|nx41315z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z2 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52924 .lut_mask = 16'h0F00;
defparam \u_i2c_av_config|u0|ix41315z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N4
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52929 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z7  = (\u_i2c_av_config|u0|nx41315z8 ) # ((\u_i2c_av_config|u0|nx41315z10  & (\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1  & \u_i2c_av_config|u0|nx41315z2 )))

	.dataa(\u_i2c_av_config|u0|nx41315z8 ),
	.datab(\u_i2c_av_config|u0|nx41315z10 ),
	.datac(\u_i2c_av_config|u0|sdo_sub5_5i2|nx38970z1 ),
	.datad(\u_i2c_av_config|u0|nx41315z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z7 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52929 .lut_mask = 16'hEAAA;
defparam \u_i2c_av_config|u0|ix41315z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N28
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52936 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z14  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx64583z1 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z14 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52936 .lut_mask = 16'h3000;
defparam \u_i2c_av_config|u0|ix41315z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N22
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52935 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z13  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & (\u_i2c_av_config|u0|nx41315z14  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(\u_i2c_av_config|u0|nx41315z14 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z13 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52935 .lut_mask = 16'h0004;
defparam \u_i2c_av_config|u0|ix41315z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N18
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52939 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z17  = (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & (\u_i2c_av_config|u0|nx41315z14  & (\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(\u_i2c_av_config|u0|nx41315z14 ),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z17 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52939 .lut_mask = 16'h0080;
defparam \u_i2c_av_config|u0|ix41315z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N16
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52938 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z16  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z16 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52938 .lut_mask = 16'h0005;
defparam \u_i2c_av_config|u0|ix41315z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N20
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52937 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z15  = (\u_i2c_av_config|u0|nx41315z17 ) # ((!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11  & (\u_i2c_av_config|u0|nx41315z16  & !\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.datab(\u_i2c_av_config|u0|nx41315z17 ),
	.datac(\u_i2c_av_config|u0|nx41315z16 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z3 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z15 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52937 .lut_mask = 16'hCCDC;
defparam \u_i2c_av_config|u0|ix41315z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|ix44942z52929 (
// Equation(s):
// \u_i2c_av_config|u0|nx44942z7  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ) # (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z5 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z9 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx44942z7 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix44942z52929 .lut_mask = 16'h0FFF;
defparam \u_i2c_av_config|u0|ix44942z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N10
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52934 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z12  = (!\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7  & (!\u_i2c_av_config|u0|nx44942z7  & (!\u_i2c_av_config|u0|nx44942z4  & \u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 )))

	.dataa(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z7 ),
	.datab(\u_i2c_av_config|u0|nx44942z7 ),
	.datac(\u_i2c_av_config|u0|nx44942z4 ),
	.datad(\u_i2c_av_config|u0|modgen_counter_sd_counter|nx56256z11 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z12 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52934 .lut_mask = 16'h0100;
defparam \u_i2c_av_config|u0|ix41315z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N14
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52933 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z11  = (\u_i2c_av_config|u0|nx41315z13 ) # ((\u_i2c_av_config|u0|nx41315z15 ) # (\u_i2c_av_config|u0|nx41315z12 ))

	.dataa(vcc),
	.datab(\u_i2c_av_config|u0|nx41315z13 ),
	.datac(\u_i2c_av_config|u0|nx41315z15 ),
	.datad(\u_i2c_av_config|u0|nx41315z12 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z11 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52933 .lut_mask = 16'hFFFC;
defparam \u_i2c_av_config|u0|ix41315z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y35_N26
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52923 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z1  = (!\u_i2c_av_config|u0|nx41315z7  & (!\u_i2c_av_config|u0|nx41315z11  & ((!\u_i2c_av_config|u0|nx41315z2 ) # (!\u_i2c_av_config|u0|nx41315z18 ))))

	.dataa(\u_i2c_av_config|u0|nx41315z18 ),
	.datab(\u_i2c_av_config|u0|nx41315z7 ),
	.datac(\u_i2c_av_config|u0|nx41315z11 ),
	.datad(\u_i2c_av_config|u0|nx41315z2 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z1 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52923 .lut_mask = 16'h0103;
defparam \u_i2c_av_config|u0|ix41315z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y35_N30
cycloneii_lcell_comb \u_i2c_av_config|u0|ix41315z52941 (
// Equation(s):
// \u_i2c_av_config|u0|nx41315z19  = (\u_i2c_av_config|u0|nx41315z20  & (!\u_i2c_av_config|m_i2c_ctrl_clk  & \u_i2c_av_config|nx51161z1 ))

	.dataa(\u_i2c_av_config|u0|nx41315z20 ),
	.datab(vcc),
	.datac(\u_i2c_av_config|m_i2c_ctrl_clk ),
	.datad(\u_i2c_av_config|nx51161z1 ),
	.cin(gnd),
	.combout(\u_i2c_av_config|u0|nx41315z19 ),
	.cout());
// synopsys translate_off
defparam \u_i2c_av_config|u0|ix41315z52941 .lut_mask = 16'h0A00;
defparam \u_i2c_av_config|u0|ix41315z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y35_N27
cycloneii_lcell_ff \u_i2c_av_config|u0|reg_sdo (
	.clk(\clock_27~clkctrl_outclk ),
	.datain(\u_i2c_av_config|u0|nx41315z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\u_i2c_av_config|reset_n ),
	.sload(gnd),
	.ena(\u_i2c_av_config|u0|nx41315z19 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_i2c_av_config|u0|nx51857z1 ));

// Location: LCCOMB_X36_Y27_N24
cycloneii_lcell_comb ix30102z52923(
// Equation(s):
// nx30102z1 = (!u_audio_dac_bck_div_2_ & \key~combout [0])

	.dataa(vcc),
	.datab(vcc),
	.datac(u_audio_dac_bck_div_2_),
	.datad(\key~combout [0]),
	.cin(gnd),
	.combout(nx30102z1),
	.cout());
// synopsys translate_off
defparam ix30102z52923.lut_mask = 16'h0F00;
defparam ix30102z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y27_N6
cycloneii_lcell_comb ix32096z52923(
// Equation(s):
// nx32096z1 = (!u_audio_dac_bck_div_0_ & (\key~combout [0] & ((!u_audio_dac_bck_div_2_) # (!u_audio_dac_bck_div_1_))))

	.dataa(u_audio_dac_bck_div_1_),
	.datab(u_audio_dac_bck_div_2_),
	.datac(u_audio_dac_bck_div_0_),
	.datad(\key~combout [0]),
	.cin(gnd),
	.combout(nx32096z1),
	.cout());
// synopsys translate_off
defparam ix32096z52923.lut_mask = 16'h0700;
defparam ix32096z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y27_N7
cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_0_(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx32096z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_audio_dac_bck_div_0_));

// Location: LCCOMB_X35_Y27_N30
cycloneii_lcell_comb ix30102z52924(
// Equation(s):
// nx30102z2 = ((u_audio_dac_bck_div_1_ & ((u_audio_dac_bck_div_2_) # (u_audio_dac_bck_div_0_))) # (!u_audio_dac_bck_div_1_ & (u_audio_dac_bck_div_2_ & u_audio_dac_bck_div_0_))) # (!\key~combout [0])

	.dataa(u_audio_dac_bck_div_1_),
	.datab(u_audio_dac_bck_div_2_),
	.datac(u_audio_dac_bck_div_0_),
	.datad(\key~combout [0]),
	.cin(gnd),
	.combout(nx30102z2),
	.cout());
// synopsys translate_off
defparam ix30102z52924.lut_mask = 16'hE8FF;
defparam ix30102z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X36_Y27_N25
cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_2_(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx30102z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx30102z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_audio_dac_bck_div_2_));

// Location: LCCOMB_X35_Y27_N10
cycloneii_lcell_comb ix31099z52923(
// Equation(s):
// nx31099z1 = (!u_audio_dac_bck_div_1_ & (\key~combout [0] & ((!u_audio_dac_bck_div_2_) # (!u_audio_dac_bck_div_0_))))

	.dataa(u_audio_dac_bck_div_0_),
	.datab(u_audio_dac_bck_div_2_),
	.datac(u_audio_dac_bck_div_1_),
	.datad(\key~combout [0]),
	.cin(gnd),
	.combout(nx31099z1),
	.cout());
// synopsys translate_off
defparam ix31099z52923.lut_mask = 16'h0700;
defparam ix31099z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X35_Y27_N8
cycloneii_lcell_comb ix31099z52924(
// Equation(s):
// nx31099z2 = (u_audio_dac_bck_div_0_) # (((u_audio_dac_bck_div_1_ & u_audio_dac_bck_div_2_)) # (!\key~combout [0]))

	.dataa(u_audio_dac_bck_div_1_),
	.datab(u_audio_dac_bck_div_2_),
	.datac(u_audio_dac_bck_div_0_),
	.datad(\key~combout [0]),
	.cin(gnd),
	.combout(nx31099z2),
	.cout());
// synopsys translate_off
defparam ix31099z52924.lut_mask = 16'hF8FF;
defparam ix31099z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y27_N11
cycloneii_lcell_ff u_audio_dac_modgen_counter_bck_div_reg_q_1_(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx31099z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx31099z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(u_audio_dac_bck_div_1_));

// Location: LCCOMB_X35_Y27_N4
cycloneii_lcell_comb ix15494z52923(
// Equation(s):
// nx15494z1 = aud_bclk_dup0 $ (((u_audio_dac_bck_div_2_ & ((u_audio_dac_bck_div_0_) # (u_audio_dac_bck_div_1_)))))

	.dataa(u_audio_dac_bck_div_0_),
	.datab(u_audio_dac_bck_div_2_),
	.datac(aud_bclk_dup0),
	.datad(u_audio_dac_bck_div_1_),
	.cin(gnd),
	.combout(nx15494z1),
	.cout());
// synopsys translate_off
defparam ix15494z52923.lut_mask = 16'h3C78;
defparam ix15494z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X35_Y27_N5
cycloneii_lcell_ff u_audio_dac_reg_aud_bck(
	.clk(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.datain(nx15494z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\key~combout [0]),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(aud_bclk_dup0));

// Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[0]));
// synopsys translate_off
defparam ledg_triBus1_0_.input_async_reset = "none";
defparam ledg_triBus1_0_.input_power_up = "low";
defparam ledg_triBus1_0_.input_register_mode = "none";
defparam ledg_triBus1_0_.input_sync_reset = "none";
defparam ledg_triBus1_0_.oe_async_reset = "none";
defparam ledg_triBus1_0_.oe_power_up = "low";
defparam ledg_triBus1_0_.oe_register_mode = "none";
defparam ledg_triBus1_0_.oe_sync_reset = "none";
defparam ledg_triBus1_0_.operation_mode = "output";
defparam ledg_triBus1_0_.output_async_reset = "none";
defparam ledg_triBus1_0_.output_power_up = "low";
defparam ledg_triBus1_0_.output_register_mode = "none";
defparam ledg_triBus1_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[1]));
// synopsys translate_off
defparam ledg_triBus1_1_.input_async_reset = "none";
defparam ledg_triBus1_1_.input_power_up = "low";
defparam ledg_triBus1_1_.input_register_mode = "none";
defparam ledg_triBus1_1_.input_sync_reset = "none";
defparam ledg_triBus1_1_.oe_async_reset = "none";
defparam ledg_triBus1_1_.oe_power_up = "low";
defparam ledg_triBus1_1_.oe_register_mode = "none";
defparam ledg_triBus1_1_.oe_sync_reset = "none";
defparam ledg_triBus1_1_.operation_mode = "output";
defparam ledg_triBus1_1_.output_async_reset = "none";
defparam ledg_triBus1_1_.output_power_up = "low";
defparam ledg_triBus1_1_.output_register_mode = "none";
defparam ledg_triBus1_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[2]));
// synopsys translate_off
defparam ledg_triBus1_2_.input_async_reset = "none";
defparam ledg_triBus1_2_.input_power_up = "low";
defparam ledg_triBus1_2_.input_register_mode = "none";
defparam ledg_triBus1_2_.input_sync_reset = "none";
defparam ledg_triBus1_2_.oe_async_reset = "none";
defparam ledg_triBus1_2_.oe_power_up = "low";
defparam ledg_triBus1_2_.oe_register_mode = "none";
defparam ledg_triBus1_2_.oe_sync_reset = "none";
defparam ledg_triBus1_2_.operation_mode = "output";
defparam ledg_triBus1_2_.output_async_reset = "none";
defparam ledg_triBus1_2_.output_power_up = "low";
defparam ledg_triBus1_2_.output_register_mode = "none";
defparam ledg_triBus1_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[3]));
// synopsys translate_off
defparam ledg_triBus1_3_.input_async_reset = "none";
defparam ledg_triBus1_3_.input_power_up = "low";
defparam ledg_triBus1_3_.input_register_mode = "none";
defparam ledg_triBus1_3_.input_sync_reset = "none";
defparam ledg_triBus1_3_.oe_async_reset = "none";
defparam ledg_triBus1_3_.oe_power_up = "low";
defparam ledg_triBus1_3_.oe_register_mode = "none";
defparam ledg_triBus1_3_.oe_sync_reset = "none";
defparam ledg_triBus1_3_.operation_mode = "output";
defparam ledg_triBus1_3_.output_async_reset = "none";
defparam ledg_triBus1_3_.output_power_up = "low";
defparam ledg_triBus1_3_.output_register_mode = "none";
defparam ledg_triBus1_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[4]));
// synopsys translate_off
defparam ledg_triBus1_4_.input_async_reset = "none";
defparam ledg_triBus1_4_.input_power_up = "low";
defparam ledg_triBus1_4_.input_register_mode = "none";
defparam ledg_triBus1_4_.input_sync_reset = "none";
defparam ledg_triBus1_4_.oe_async_reset = "none";
defparam ledg_triBus1_4_.oe_power_up = "low";
defparam ledg_triBus1_4_.oe_register_mode = "none";
defparam ledg_triBus1_4_.oe_sync_reset = "none";
defparam ledg_triBus1_4_.operation_mode = "output";
defparam ledg_triBus1_4_.output_async_reset = "none";
defparam ledg_triBus1_4_.output_power_up = "low";
defparam ledg_triBus1_4_.output_register_mode = "none";
defparam ledg_triBus1_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[5]));
// synopsys translate_off
defparam ledg_triBus1_5_.input_async_reset = "none";
defparam ledg_triBus1_5_.input_power_up = "low";
defparam ledg_triBus1_5_.input_register_mode = "none";
defparam ledg_triBus1_5_.input_sync_reset = "none";
defparam ledg_triBus1_5_.oe_async_reset = "none";
defparam ledg_triBus1_5_.oe_power_up = "low";
defparam ledg_triBus1_5_.oe_register_mode = "none";
defparam ledg_triBus1_5_.oe_sync_reset = "none";
defparam ledg_triBus1_5_.operation_mode = "output";
defparam ledg_triBus1_5_.output_async_reset = "none";
defparam ledg_triBus1_5_.output_power_up = "low";
defparam ledg_triBus1_5_.output_register_mode = "none";
defparam ledg_triBus1_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[6]));
// synopsys translate_off
defparam ledg_triBus1_6_.input_async_reset = "none";
defparam ledg_triBus1_6_.input_power_up = "low";
defparam ledg_triBus1_6_.input_register_mode = "none";
defparam ledg_triBus1_6_.input_sync_reset = "none";
defparam ledg_triBus1_6_.oe_async_reset = "none";
defparam ledg_triBus1_6_.oe_power_up = "low";
defparam ledg_triBus1_6_.oe_register_mode = "none";
defparam ledg_triBus1_6_.oe_sync_reset = "none";
defparam ledg_triBus1_6_.operation_mode = "output";
defparam ledg_triBus1_6_.output_async_reset = "none";
defparam ledg_triBus1_6_.output_power_up = "low";
defparam ledg_triBus1_6_.output_register_mode = "none";
defparam ledg_triBus1_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[7]));
// synopsys translate_off
defparam ledg_triBus1_7_.input_async_reset = "none";
defparam ledg_triBus1_7_.input_power_up = "low";
defparam ledg_triBus1_7_.input_register_mode = "none";
defparam ledg_triBus1_7_.input_sync_reset = "none";
defparam ledg_triBus1_7_.oe_async_reset = "none";
defparam ledg_triBus1_7_.oe_power_up = "low";
defparam ledg_triBus1_7_.oe_register_mode = "none";
defparam ledg_triBus1_7_.oe_sync_reset = "none";
defparam ledg_triBus1_7_.operation_mode = "output";
defparam ledg_triBus1_7_.output_async_reset = "none";
defparam ledg_triBus1_7_.output_power_up = "low";
defparam ledg_triBus1_7_.output_register_mode = "none";
defparam ledg_triBus1_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledg_triBus1_8_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledg[8]));
// synopsys translate_off
defparam ledg_triBus1_8_.input_async_reset = "none";
defparam ledg_triBus1_8_.input_power_up = "low";
defparam ledg_triBus1_8_.input_register_mode = "none";
defparam ledg_triBus1_8_.input_sync_reset = "none";
defparam ledg_triBus1_8_.oe_async_reset = "none";
defparam ledg_triBus1_8_.oe_power_up = "low";
defparam ledg_triBus1_8_.oe_register_mode = "none";
defparam ledg_triBus1_8_.oe_sync_reset = "none";
defparam ledg_triBus1_8_.operation_mode = "output";
defparam ledg_triBus1_8_.output_async_reset = "none";
defparam ledg_triBus1_8_.output_power_up = "low";
defparam ledg_triBus1_8_.output_register_mode = "none";
defparam ledg_triBus1_8_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[0]));
// synopsys translate_off
defparam ledr_triBus2_0_.input_async_reset = "none";
defparam ledr_triBus2_0_.input_power_up = "low";
defparam ledr_triBus2_0_.input_register_mode = "none";
defparam ledr_triBus2_0_.input_sync_reset = "none";
defparam ledr_triBus2_0_.oe_async_reset = "none";
defparam ledr_triBus2_0_.oe_power_up = "low";
defparam ledr_triBus2_0_.oe_register_mode = "none";
defparam ledr_triBus2_0_.oe_sync_reset = "none";
defparam ledr_triBus2_0_.operation_mode = "output";
defparam ledr_triBus2_0_.output_async_reset = "none";
defparam ledr_triBus2_0_.output_power_up = "low";
defparam ledr_triBus2_0_.output_register_mode = "none";
defparam ledr_triBus2_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[1]));
// synopsys translate_off
defparam ledr_triBus2_1_.input_async_reset = "none";
defparam ledr_triBus2_1_.input_power_up = "low";
defparam ledr_triBus2_1_.input_register_mode = "none";
defparam ledr_triBus2_1_.input_sync_reset = "none";
defparam ledr_triBus2_1_.oe_async_reset = "none";
defparam ledr_triBus2_1_.oe_power_up = "low";
defparam ledr_triBus2_1_.oe_register_mode = "none";
defparam ledr_triBus2_1_.oe_sync_reset = "none";
defparam ledr_triBus2_1_.operation_mode = "output";
defparam ledr_triBus2_1_.output_async_reset = "none";
defparam ledr_triBus2_1_.output_power_up = "low";
defparam ledr_triBus2_1_.output_register_mode = "none";
defparam ledr_triBus2_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[2]));
// synopsys translate_off
defparam ledr_triBus2_2_.input_async_reset = "none";
defparam ledr_triBus2_2_.input_power_up = "low";
defparam ledr_triBus2_2_.input_register_mode = "none";
defparam ledr_triBus2_2_.input_sync_reset = "none";
defparam ledr_triBus2_2_.oe_async_reset = "none";
defparam ledr_triBus2_2_.oe_power_up = "low";
defparam ledr_triBus2_2_.oe_register_mode = "none";
defparam ledr_triBus2_2_.oe_sync_reset = "none";
defparam ledr_triBus2_2_.operation_mode = "output";
defparam ledr_triBus2_2_.output_async_reset = "none";
defparam ledr_triBus2_2_.output_power_up = "low";
defparam ledr_triBus2_2_.output_register_mode = "none";
defparam ledr_triBus2_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[3]));
// synopsys translate_off
defparam ledr_triBus2_3_.input_async_reset = "none";
defparam ledr_triBus2_3_.input_power_up = "low";
defparam ledr_triBus2_3_.input_register_mode = "none";
defparam ledr_triBus2_3_.input_sync_reset = "none";
defparam ledr_triBus2_3_.oe_async_reset = "none";
defparam ledr_triBus2_3_.oe_power_up = "low";
defparam ledr_triBus2_3_.oe_register_mode = "none";
defparam ledr_triBus2_3_.oe_sync_reset = "none";
defparam ledr_triBus2_3_.operation_mode = "output";
defparam ledr_triBus2_3_.output_async_reset = "none";
defparam ledr_triBus2_3_.output_power_up = "low";
defparam ledr_triBus2_3_.output_register_mode = "none";
defparam ledr_triBus2_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[4]));
// synopsys translate_off
defparam ledr_triBus2_4_.input_async_reset = "none";
defparam ledr_triBus2_4_.input_power_up = "low";
defparam ledr_triBus2_4_.input_register_mode = "none";
defparam ledr_triBus2_4_.input_sync_reset = "none";
defparam ledr_triBus2_4_.oe_async_reset = "none";
defparam ledr_triBus2_4_.oe_power_up = "low";
defparam ledr_triBus2_4_.oe_register_mode = "none";
defparam ledr_triBus2_4_.oe_sync_reset = "none";
defparam ledr_triBus2_4_.operation_mode = "output";
defparam ledr_triBus2_4_.output_async_reset = "none";
defparam ledr_triBus2_4_.output_power_up = "low";
defparam ledr_triBus2_4_.output_register_mode = "none";
defparam ledr_triBus2_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[5]));
// synopsys translate_off
defparam ledr_triBus2_5_.input_async_reset = "none";
defparam ledr_triBus2_5_.input_power_up = "low";
defparam ledr_triBus2_5_.input_register_mode = "none";
defparam ledr_triBus2_5_.input_sync_reset = "none";
defparam ledr_triBus2_5_.oe_async_reset = "none";
defparam ledr_triBus2_5_.oe_power_up = "low";
defparam ledr_triBus2_5_.oe_register_mode = "none";
defparam ledr_triBus2_5_.oe_sync_reset = "none";
defparam ledr_triBus2_5_.operation_mode = "output";
defparam ledr_triBus2_5_.output_async_reset = "none";
defparam ledr_triBus2_5_.output_power_up = "low";
defparam ledr_triBus2_5_.output_register_mode = "none";
defparam ledr_triBus2_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[6]));
// synopsys translate_off
defparam ledr_triBus2_6_.input_async_reset = "none";
defparam ledr_triBus2_6_.input_power_up = "low";
defparam ledr_triBus2_6_.input_register_mode = "none";
defparam ledr_triBus2_6_.input_sync_reset = "none";
defparam ledr_triBus2_6_.oe_async_reset = "none";
defparam ledr_triBus2_6_.oe_power_up = "low";
defparam ledr_triBus2_6_.oe_register_mode = "none";
defparam ledr_triBus2_6_.oe_sync_reset = "none";
defparam ledr_triBus2_6_.operation_mode = "output";
defparam ledr_triBus2_6_.output_async_reset = "none";
defparam ledr_triBus2_6_.output_power_up = "low";
defparam ledr_triBus2_6_.output_register_mode = "none";
defparam ledr_triBus2_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[7]));
// synopsys translate_off
defparam ledr_triBus2_7_.input_async_reset = "none";
defparam ledr_triBus2_7_.input_power_up = "low";
defparam ledr_triBus2_7_.input_register_mode = "none";
defparam ledr_triBus2_7_.input_sync_reset = "none";
defparam ledr_triBus2_7_.oe_async_reset = "none";
defparam ledr_triBus2_7_.oe_power_up = "low";
defparam ledr_triBus2_7_.oe_register_mode = "none";
defparam ledr_triBus2_7_.oe_sync_reset = "none";
defparam ledr_triBus2_7_.operation_mode = "output";
defparam ledr_triBus2_7_.output_async_reset = "none";
defparam ledr_triBus2_7_.output_power_up = "low";
defparam ledr_triBus2_7_.output_register_mode = "none";
defparam ledr_triBus2_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_8_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[8]));
// synopsys translate_off
defparam ledr_triBus2_8_.input_async_reset = "none";
defparam ledr_triBus2_8_.input_power_up = "low";
defparam ledr_triBus2_8_.input_register_mode = "none";
defparam ledr_triBus2_8_.input_sync_reset = "none";
defparam ledr_triBus2_8_.oe_async_reset = "none";
defparam ledr_triBus2_8_.oe_power_up = "low";
defparam ledr_triBus2_8_.oe_register_mode = "none";
defparam ledr_triBus2_8_.oe_sync_reset = "none";
defparam ledr_triBus2_8_.operation_mode = "output";
defparam ledr_triBus2_8_.output_async_reset = "none";
defparam ledr_triBus2_8_.output_power_up = "low";
defparam ledr_triBus2_8_.output_register_mode = "none";
defparam ledr_triBus2_8_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_9_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[9]));
// synopsys translate_off
defparam ledr_triBus2_9_.input_async_reset = "none";
defparam ledr_triBus2_9_.input_power_up = "low";
defparam ledr_triBus2_9_.input_register_mode = "none";
defparam ledr_triBus2_9_.input_sync_reset = "none";
defparam ledr_triBus2_9_.oe_async_reset = "none";
defparam ledr_triBus2_9_.oe_power_up = "low";
defparam ledr_triBus2_9_.oe_register_mode = "none";
defparam ledr_triBus2_9_.oe_sync_reset = "none";
defparam ledr_triBus2_9_.operation_mode = "output";
defparam ledr_triBus2_9_.output_async_reset = "none";
defparam ledr_triBus2_9_.output_power_up = "low";
defparam ledr_triBus2_9_.output_register_mode = "none";
defparam ledr_triBus2_9_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_10_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[10]));
// synopsys translate_off
defparam ledr_triBus2_10_.input_async_reset = "none";
defparam ledr_triBus2_10_.input_power_up = "low";
defparam ledr_triBus2_10_.input_register_mode = "none";
defparam ledr_triBus2_10_.input_sync_reset = "none";
defparam ledr_triBus2_10_.oe_async_reset = "none";
defparam ledr_triBus2_10_.oe_power_up = "low";
defparam ledr_triBus2_10_.oe_register_mode = "none";
defparam ledr_triBus2_10_.oe_sync_reset = "none";
defparam ledr_triBus2_10_.operation_mode = "output";
defparam ledr_triBus2_10_.output_async_reset = "none";
defparam ledr_triBus2_10_.output_power_up = "low";
defparam ledr_triBus2_10_.output_register_mode = "none";
defparam ledr_triBus2_10_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_11_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[11]));
// synopsys translate_off
defparam ledr_triBus2_11_.input_async_reset = "none";
defparam ledr_triBus2_11_.input_power_up = "low";
defparam ledr_triBus2_11_.input_register_mode = "none";
defparam ledr_triBus2_11_.input_sync_reset = "none";
defparam ledr_triBus2_11_.oe_async_reset = "none";
defparam ledr_triBus2_11_.oe_power_up = "low";
defparam ledr_triBus2_11_.oe_register_mode = "none";
defparam ledr_triBus2_11_.oe_sync_reset = "none";
defparam ledr_triBus2_11_.operation_mode = "output";
defparam ledr_triBus2_11_.output_async_reset = "none";
defparam ledr_triBus2_11_.output_power_up = "low";
defparam ledr_triBus2_11_.output_register_mode = "none";
defparam ledr_triBus2_11_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_12_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[12]));
// synopsys translate_off
defparam ledr_triBus2_12_.input_async_reset = "none";
defparam ledr_triBus2_12_.input_power_up = "low";
defparam ledr_triBus2_12_.input_register_mode = "none";
defparam ledr_triBus2_12_.input_sync_reset = "none";
defparam ledr_triBus2_12_.oe_async_reset = "none";
defparam ledr_triBus2_12_.oe_power_up = "low";
defparam ledr_triBus2_12_.oe_register_mode = "none";
defparam ledr_triBus2_12_.oe_sync_reset = "none";
defparam ledr_triBus2_12_.operation_mode = "output";
defparam ledr_triBus2_12_.output_async_reset = "none";
defparam ledr_triBus2_12_.output_power_up = "low";
defparam ledr_triBus2_12_.output_register_mode = "none";
defparam ledr_triBus2_12_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_13_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[13]));
// synopsys translate_off
defparam ledr_triBus2_13_.input_async_reset = "none";
defparam ledr_triBus2_13_.input_power_up = "low";
defparam ledr_triBus2_13_.input_register_mode = "none";
defparam ledr_triBus2_13_.input_sync_reset = "none";
defparam ledr_triBus2_13_.oe_async_reset = "none";
defparam ledr_triBus2_13_.oe_power_up = "low";
defparam ledr_triBus2_13_.oe_register_mode = "none";
defparam ledr_triBus2_13_.oe_sync_reset = "none";
defparam ledr_triBus2_13_.operation_mode = "output";
defparam ledr_triBus2_13_.output_async_reset = "none";
defparam ledr_triBus2_13_.output_power_up = "low";
defparam ledr_triBus2_13_.output_register_mode = "none";
defparam ledr_triBus2_13_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_14_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[14]));
// synopsys translate_off
defparam ledr_triBus2_14_.input_async_reset = "none";
defparam ledr_triBus2_14_.input_power_up = "low";
defparam ledr_triBus2_14_.input_register_mode = "none";
defparam ledr_triBus2_14_.input_sync_reset = "none";
defparam ledr_triBus2_14_.oe_async_reset = "none";
defparam ledr_triBus2_14_.oe_power_up = "low";
defparam ledr_triBus2_14_.oe_register_mode = "none";
defparam ledr_triBus2_14_.oe_sync_reset = "none";
defparam ledr_triBus2_14_.operation_mode = "output";
defparam ledr_triBus2_14_.output_async_reset = "none";
defparam ledr_triBus2_14_.output_power_up = "low";
defparam ledr_triBus2_14_.output_register_mode = "none";
defparam ledr_triBus2_14_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_15_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[15]));
// synopsys translate_off
defparam ledr_triBus2_15_.input_async_reset = "none";
defparam ledr_triBus2_15_.input_power_up = "low";
defparam ledr_triBus2_15_.input_register_mode = "none";
defparam ledr_triBus2_15_.input_sync_reset = "none";
defparam ledr_triBus2_15_.oe_async_reset = "none";
defparam ledr_triBus2_15_.oe_power_up = "low";
defparam ledr_triBus2_15_.oe_register_mode = "none";
defparam ledr_triBus2_15_.oe_sync_reset = "none";
defparam ledr_triBus2_15_.operation_mode = "output";
defparam ledr_triBus2_15_.output_async_reset = "none";
defparam ledr_triBus2_15_.output_power_up = "low";
defparam ledr_triBus2_15_.output_register_mode = "none";
defparam ledr_triBus2_15_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_16_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[16]));
// synopsys translate_off
defparam ledr_triBus2_16_.input_async_reset = "none";
defparam ledr_triBus2_16_.input_power_up = "low";
defparam ledr_triBus2_16_.input_register_mode = "none";
defparam ledr_triBus2_16_.input_sync_reset = "none";
defparam ledr_triBus2_16_.oe_async_reset = "none";
defparam ledr_triBus2_16_.oe_power_up = "low";
defparam ledr_triBus2_16_.oe_register_mode = "none";
defparam ledr_triBus2_16_.oe_sync_reset = "none";
defparam ledr_triBus2_16_.operation_mode = "output";
defparam ledr_triBus2_16_.output_async_reset = "none";
defparam ledr_triBus2_16_.output_power_up = "low";
defparam ledr_triBus2_16_.output_register_mode = "none";
defparam ledr_triBus2_16_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ledr_triBus2_17_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(ledr[17]));
// synopsys translate_off
defparam ledr_triBus2_17_.input_async_reset = "none";
defparam ledr_triBus2_17_.input_power_up = "low";
defparam ledr_triBus2_17_.input_register_mode = "none";
defparam ledr_triBus2_17_.input_sync_reset = "none";
defparam ledr_triBus2_17_.oe_async_reset = "none";
defparam ledr_triBus2_17_.oe_power_up = "low";
defparam ledr_triBus2_17_.oe_register_mode = "none";
defparam ledr_triBus2_17_.oe_sync_reset = "none";
defparam ledr_triBus2_17_.operation_mode = "output";
defparam ledr_triBus2_17_.output_async_reset = "none";
defparam ledr_triBus2_17_.output_power_up = "low";
defparam ledr_triBus2_17_.output_register_mode = "none";
defparam ledr_triBus2_17_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[0]));
// synopsys translate_off
defparam hex0_triBus3_0_.input_async_reset = "none";
defparam hex0_triBus3_0_.input_power_up = "low";
defparam hex0_triBus3_0_.input_register_mode = "none";
defparam hex0_triBus3_0_.input_sync_reset = "none";
defparam hex0_triBus3_0_.oe_async_reset = "none";
defparam hex0_triBus3_0_.oe_power_up = "low";
defparam hex0_triBus3_0_.oe_register_mode = "none";
defparam hex0_triBus3_0_.oe_sync_reset = "none";
defparam hex0_triBus3_0_.operation_mode = "output";
defparam hex0_triBus3_0_.output_async_reset = "none";
defparam hex0_triBus3_0_.output_power_up = "low";
defparam hex0_triBus3_0_.output_register_mode = "none";
defparam hex0_triBus3_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[1]));
// synopsys translate_off
defparam hex0_triBus3_1_.input_async_reset = "none";
defparam hex0_triBus3_1_.input_power_up = "low";
defparam hex0_triBus3_1_.input_register_mode = "none";
defparam hex0_triBus3_1_.input_sync_reset = "none";
defparam hex0_triBus3_1_.oe_async_reset = "none";
defparam hex0_triBus3_1_.oe_power_up = "low";
defparam hex0_triBus3_1_.oe_register_mode = "none";
defparam hex0_triBus3_1_.oe_sync_reset = "none";
defparam hex0_triBus3_1_.operation_mode = "output";
defparam hex0_triBus3_1_.output_async_reset = "none";
defparam hex0_triBus3_1_.output_power_up = "low";
defparam hex0_triBus3_1_.output_register_mode = "none";
defparam hex0_triBus3_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[2]));
// synopsys translate_off
defparam hex0_triBus3_2_.input_async_reset = "none";
defparam hex0_triBus3_2_.input_power_up = "low";
defparam hex0_triBus3_2_.input_register_mode = "none";
defparam hex0_triBus3_2_.input_sync_reset = "none";
defparam hex0_triBus3_2_.oe_async_reset = "none";
defparam hex0_triBus3_2_.oe_power_up = "low";
defparam hex0_triBus3_2_.oe_register_mode = "none";
defparam hex0_triBus3_2_.oe_sync_reset = "none";
defparam hex0_triBus3_2_.operation_mode = "output";
defparam hex0_triBus3_2_.output_async_reset = "none";
defparam hex0_triBus3_2_.output_power_up = "low";
defparam hex0_triBus3_2_.output_register_mode = "none";
defparam hex0_triBus3_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[3]));
// synopsys translate_off
defparam hex0_triBus3_3_.input_async_reset = "none";
defparam hex0_triBus3_3_.input_power_up = "low";
defparam hex0_triBus3_3_.input_register_mode = "none";
defparam hex0_triBus3_3_.input_sync_reset = "none";
defparam hex0_triBus3_3_.oe_async_reset = "none";
defparam hex0_triBus3_3_.oe_power_up = "low";
defparam hex0_triBus3_3_.oe_register_mode = "none";
defparam hex0_triBus3_3_.oe_sync_reset = "none";
defparam hex0_triBus3_3_.operation_mode = "output";
defparam hex0_triBus3_3_.output_async_reset = "none";
defparam hex0_triBus3_3_.output_power_up = "low";
defparam hex0_triBus3_3_.output_register_mode = "none";
defparam hex0_triBus3_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[4]));
// synopsys translate_off
defparam hex0_triBus3_4_.input_async_reset = "none";
defparam hex0_triBus3_4_.input_power_up = "low";
defparam hex0_triBus3_4_.input_register_mode = "none";
defparam hex0_triBus3_4_.input_sync_reset = "none";
defparam hex0_triBus3_4_.oe_async_reset = "none";
defparam hex0_triBus3_4_.oe_power_up = "low";
defparam hex0_triBus3_4_.oe_register_mode = "none";
defparam hex0_triBus3_4_.oe_sync_reset = "none";
defparam hex0_triBus3_4_.operation_mode = "output";
defparam hex0_triBus3_4_.output_async_reset = "none";
defparam hex0_triBus3_4_.output_power_up = "low";
defparam hex0_triBus3_4_.output_register_mode = "none";
defparam hex0_triBus3_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[5]));
// synopsys translate_off
defparam hex0_triBus3_5_.input_async_reset = "none";
defparam hex0_triBus3_5_.input_power_up = "low";
defparam hex0_triBus3_5_.input_register_mode = "none";
defparam hex0_triBus3_5_.input_sync_reset = "none";
defparam hex0_triBus3_5_.oe_async_reset = "none";
defparam hex0_triBus3_5_.oe_power_up = "low";
defparam hex0_triBus3_5_.oe_register_mode = "none";
defparam hex0_triBus3_5_.oe_sync_reset = "none";
defparam hex0_triBus3_5_.operation_mode = "output";
defparam hex0_triBus3_5_.output_async_reset = "none";
defparam hex0_triBus3_5_.output_power_up = "low";
defparam hex0_triBus3_5_.output_register_mode = "none";
defparam hex0_triBus3_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex0_triBus3_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex0[6]));
// synopsys translate_off
defparam hex0_triBus3_6_.input_async_reset = "none";
defparam hex0_triBus3_6_.input_power_up = "low";
defparam hex0_triBus3_6_.input_register_mode = "none";
defparam hex0_triBus3_6_.input_sync_reset = "none";
defparam hex0_triBus3_6_.oe_async_reset = "none";
defparam hex0_triBus3_6_.oe_power_up = "low";
defparam hex0_triBus3_6_.oe_register_mode = "none";
defparam hex0_triBus3_6_.oe_sync_reset = "none";
defparam hex0_triBus3_6_.operation_mode = "output";
defparam hex0_triBus3_6_.output_async_reset = "none";
defparam hex0_triBus3_6_.output_power_up = "low";
defparam hex0_triBus3_6_.output_register_mode = "none";
defparam hex0_triBus3_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[0]));
// synopsys translate_off
defparam hex1_triBus4_0_.input_async_reset = "none";
defparam hex1_triBus4_0_.input_power_up = "low";
defparam hex1_triBus4_0_.input_register_mode = "none";
defparam hex1_triBus4_0_.input_sync_reset = "none";
defparam hex1_triBus4_0_.oe_async_reset = "none";
defparam hex1_triBus4_0_.oe_power_up = "low";
defparam hex1_triBus4_0_.oe_register_mode = "none";
defparam hex1_triBus4_0_.oe_sync_reset = "none";
defparam hex1_triBus4_0_.operation_mode = "output";
defparam hex1_triBus4_0_.output_async_reset = "none";
defparam hex1_triBus4_0_.output_power_up = "low";
defparam hex1_triBus4_0_.output_register_mode = "none";
defparam hex1_triBus4_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[1]));
// synopsys translate_off
defparam hex1_triBus4_1_.input_async_reset = "none";
defparam hex1_triBus4_1_.input_power_up = "low";
defparam hex1_triBus4_1_.input_register_mode = "none";
defparam hex1_triBus4_1_.input_sync_reset = "none";
defparam hex1_triBus4_1_.oe_async_reset = "none";
defparam hex1_triBus4_1_.oe_power_up = "low";
defparam hex1_triBus4_1_.oe_register_mode = "none";
defparam hex1_triBus4_1_.oe_sync_reset = "none";
defparam hex1_triBus4_1_.operation_mode = "output";
defparam hex1_triBus4_1_.output_async_reset = "none";
defparam hex1_triBus4_1_.output_power_up = "low";
defparam hex1_triBus4_1_.output_register_mode = "none";
defparam hex1_triBus4_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[2]));
// synopsys translate_off
defparam hex1_triBus4_2_.input_async_reset = "none";
defparam hex1_triBus4_2_.input_power_up = "low";
defparam hex1_triBus4_2_.input_register_mode = "none";
defparam hex1_triBus4_2_.input_sync_reset = "none";
defparam hex1_triBus4_2_.oe_async_reset = "none";
defparam hex1_triBus4_2_.oe_power_up = "low";
defparam hex1_triBus4_2_.oe_register_mode = "none";
defparam hex1_triBus4_2_.oe_sync_reset = "none";
defparam hex1_triBus4_2_.operation_mode = "output";
defparam hex1_triBus4_2_.output_async_reset = "none";
defparam hex1_triBus4_2_.output_power_up = "low";
defparam hex1_triBus4_2_.output_register_mode = "none";
defparam hex1_triBus4_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[3]));
// synopsys translate_off
defparam hex1_triBus4_3_.input_async_reset = "none";
defparam hex1_triBus4_3_.input_power_up = "low";
defparam hex1_triBus4_3_.input_register_mode = "none";
defparam hex1_triBus4_3_.input_sync_reset = "none";
defparam hex1_triBus4_3_.oe_async_reset = "none";
defparam hex1_triBus4_3_.oe_power_up = "low";
defparam hex1_triBus4_3_.oe_register_mode = "none";
defparam hex1_triBus4_3_.oe_sync_reset = "none";
defparam hex1_triBus4_3_.operation_mode = "output";
defparam hex1_triBus4_3_.output_async_reset = "none";
defparam hex1_triBus4_3_.output_power_up = "low";
defparam hex1_triBus4_3_.output_register_mode = "none";
defparam hex1_triBus4_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[4]));
// synopsys translate_off
defparam hex1_triBus4_4_.input_async_reset = "none";
defparam hex1_triBus4_4_.input_power_up = "low";
defparam hex1_triBus4_4_.input_register_mode = "none";
defparam hex1_triBus4_4_.input_sync_reset = "none";
defparam hex1_triBus4_4_.oe_async_reset = "none";
defparam hex1_triBus4_4_.oe_power_up = "low";
defparam hex1_triBus4_4_.oe_register_mode = "none";
defparam hex1_triBus4_4_.oe_sync_reset = "none";
defparam hex1_triBus4_4_.operation_mode = "output";
defparam hex1_triBus4_4_.output_async_reset = "none";
defparam hex1_triBus4_4_.output_power_up = "low";
defparam hex1_triBus4_4_.output_register_mode = "none";
defparam hex1_triBus4_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[5]));
// synopsys translate_off
defparam hex1_triBus4_5_.input_async_reset = "none";
defparam hex1_triBus4_5_.input_power_up = "low";
defparam hex1_triBus4_5_.input_register_mode = "none";
defparam hex1_triBus4_5_.input_sync_reset = "none";
defparam hex1_triBus4_5_.oe_async_reset = "none";
defparam hex1_triBus4_5_.oe_power_up = "low";
defparam hex1_triBus4_5_.oe_register_mode = "none";
defparam hex1_triBus4_5_.oe_sync_reset = "none";
defparam hex1_triBus4_5_.operation_mode = "output";
defparam hex1_triBus4_5_.output_async_reset = "none";
defparam hex1_triBus4_5_.output_power_up = "low";
defparam hex1_triBus4_5_.output_register_mode = "none";
defparam hex1_triBus4_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex1_triBus4_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex1[6]));
// synopsys translate_off
defparam hex1_triBus4_6_.input_async_reset = "none";
defparam hex1_triBus4_6_.input_power_up = "low";
defparam hex1_triBus4_6_.input_register_mode = "none";
defparam hex1_triBus4_6_.input_sync_reset = "none";
defparam hex1_triBus4_6_.oe_async_reset = "none";
defparam hex1_triBus4_6_.oe_power_up = "low";
defparam hex1_triBus4_6_.oe_register_mode = "none";
defparam hex1_triBus4_6_.oe_sync_reset = "none";
defparam hex1_triBus4_6_.operation_mode = "output";
defparam hex1_triBus4_6_.output_async_reset = "none";
defparam hex1_triBus4_6_.output_power_up = "low";
defparam hex1_triBus4_6_.output_register_mode = "none";
defparam hex1_triBus4_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[0]));
// synopsys translate_off
defparam hex2_triBus5_0_.input_async_reset = "none";
defparam hex2_triBus5_0_.input_power_up = "low";
defparam hex2_triBus5_0_.input_register_mode = "none";
defparam hex2_triBus5_0_.input_sync_reset = "none";
defparam hex2_triBus5_0_.oe_async_reset = "none";
defparam hex2_triBus5_0_.oe_power_up = "low";
defparam hex2_triBus5_0_.oe_register_mode = "none";
defparam hex2_triBus5_0_.oe_sync_reset = "none";
defparam hex2_triBus5_0_.operation_mode = "output";
defparam hex2_triBus5_0_.output_async_reset = "none";
defparam hex2_triBus5_0_.output_power_up = "low";
defparam hex2_triBus5_0_.output_register_mode = "none";
defparam hex2_triBus5_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[1]));
// synopsys translate_off
defparam hex2_triBus5_1_.input_async_reset = "none";
defparam hex2_triBus5_1_.input_power_up = "low";
defparam hex2_triBus5_1_.input_register_mode = "none";
defparam hex2_triBus5_1_.input_sync_reset = "none";
defparam hex2_triBus5_1_.oe_async_reset = "none";
defparam hex2_triBus5_1_.oe_power_up = "low";
defparam hex2_triBus5_1_.oe_register_mode = "none";
defparam hex2_triBus5_1_.oe_sync_reset = "none";
defparam hex2_triBus5_1_.operation_mode = "output";
defparam hex2_triBus5_1_.output_async_reset = "none";
defparam hex2_triBus5_1_.output_power_up = "low";
defparam hex2_triBus5_1_.output_register_mode = "none";
defparam hex2_triBus5_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[2]));
// synopsys translate_off
defparam hex2_triBus5_2_.input_async_reset = "none";
defparam hex2_triBus5_2_.input_power_up = "low";
defparam hex2_triBus5_2_.input_register_mode = "none";
defparam hex2_triBus5_2_.input_sync_reset = "none";
defparam hex2_triBus5_2_.oe_async_reset = "none";
defparam hex2_triBus5_2_.oe_power_up = "low";
defparam hex2_triBus5_2_.oe_register_mode = "none";
defparam hex2_triBus5_2_.oe_sync_reset = "none";
defparam hex2_triBus5_2_.operation_mode = "output";
defparam hex2_triBus5_2_.output_async_reset = "none";
defparam hex2_triBus5_2_.output_power_up = "low";
defparam hex2_triBus5_2_.output_register_mode = "none";
defparam hex2_triBus5_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[3]));
// synopsys translate_off
defparam hex2_triBus5_3_.input_async_reset = "none";
defparam hex2_triBus5_3_.input_power_up = "low";
defparam hex2_triBus5_3_.input_register_mode = "none";
defparam hex2_triBus5_3_.input_sync_reset = "none";
defparam hex2_triBus5_3_.oe_async_reset = "none";
defparam hex2_triBus5_3_.oe_power_up = "low";
defparam hex2_triBus5_3_.oe_register_mode = "none";
defparam hex2_triBus5_3_.oe_sync_reset = "none";
defparam hex2_triBus5_3_.operation_mode = "output";
defparam hex2_triBus5_3_.output_async_reset = "none";
defparam hex2_triBus5_3_.output_power_up = "low";
defparam hex2_triBus5_3_.output_register_mode = "none";
defparam hex2_triBus5_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[4]));
// synopsys translate_off
defparam hex2_triBus5_4_.input_async_reset = "none";
defparam hex2_triBus5_4_.input_power_up = "low";
defparam hex2_triBus5_4_.input_register_mode = "none";
defparam hex2_triBus5_4_.input_sync_reset = "none";
defparam hex2_triBus5_4_.oe_async_reset = "none";
defparam hex2_triBus5_4_.oe_power_up = "low";
defparam hex2_triBus5_4_.oe_register_mode = "none";
defparam hex2_triBus5_4_.oe_sync_reset = "none";
defparam hex2_triBus5_4_.operation_mode = "output";
defparam hex2_triBus5_4_.output_async_reset = "none";
defparam hex2_triBus5_4_.output_power_up = "low";
defparam hex2_triBus5_4_.output_register_mode = "none";
defparam hex2_triBus5_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[5]));
// synopsys translate_off
defparam hex2_triBus5_5_.input_async_reset = "none";
defparam hex2_triBus5_5_.input_power_up = "low";
defparam hex2_triBus5_5_.input_register_mode = "none";
defparam hex2_triBus5_5_.input_sync_reset = "none";
defparam hex2_triBus5_5_.oe_async_reset = "none";
defparam hex2_triBus5_5_.oe_power_up = "low";
defparam hex2_triBus5_5_.oe_register_mode = "none";
defparam hex2_triBus5_5_.oe_sync_reset = "none";
defparam hex2_triBus5_5_.operation_mode = "output";
defparam hex2_triBus5_5_.output_async_reset = "none";
defparam hex2_triBus5_5_.output_power_up = "low";
defparam hex2_triBus5_5_.output_register_mode = "none";
defparam hex2_triBus5_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex2_triBus5_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex2[6]));
// synopsys translate_off
defparam hex2_triBus5_6_.input_async_reset = "none";
defparam hex2_triBus5_6_.input_power_up = "low";
defparam hex2_triBus5_6_.input_register_mode = "none";
defparam hex2_triBus5_6_.input_sync_reset = "none";
defparam hex2_triBus5_6_.oe_async_reset = "none";
defparam hex2_triBus5_6_.oe_power_up = "low";
defparam hex2_triBus5_6_.oe_register_mode = "none";
defparam hex2_triBus5_6_.oe_sync_reset = "none";
defparam hex2_triBus5_6_.operation_mode = "output";
defparam hex2_triBus5_6_.output_async_reset = "none";
defparam hex2_triBus5_6_.output_power_up = "low";
defparam hex2_triBus5_6_.output_register_mode = "none";
defparam hex2_triBus5_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[0]));
// synopsys translate_off
defparam hex3_triBus6_0_.input_async_reset = "none";
defparam hex3_triBus6_0_.input_power_up = "low";
defparam hex3_triBus6_0_.input_register_mode = "none";
defparam hex3_triBus6_0_.input_sync_reset = "none";
defparam hex3_triBus6_0_.oe_async_reset = "none";
defparam hex3_triBus6_0_.oe_power_up = "low";
defparam hex3_triBus6_0_.oe_register_mode = "none";
defparam hex3_triBus6_0_.oe_sync_reset = "none";
defparam hex3_triBus6_0_.operation_mode = "output";
defparam hex3_triBus6_0_.output_async_reset = "none";
defparam hex3_triBus6_0_.output_power_up = "low";
defparam hex3_triBus6_0_.output_register_mode = "none";
defparam hex3_triBus6_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[1]));
// synopsys translate_off
defparam hex3_triBus6_1_.input_async_reset = "none";
defparam hex3_triBus6_1_.input_power_up = "low";
defparam hex3_triBus6_1_.input_register_mode = "none";
defparam hex3_triBus6_1_.input_sync_reset = "none";
defparam hex3_triBus6_1_.oe_async_reset = "none";
defparam hex3_triBus6_1_.oe_power_up = "low";
defparam hex3_triBus6_1_.oe_register_mode = "none";
defparam hex3_triBus6_1_.oe_sync_reset = "none";
defparam hex3_triBus6_1_.operation_mode = "output";
defparam hex3_triBus6_1_.output_async_reset = "none";
defparam hex3_triBus6_1_.output_power_up = "low";
defparam hex3_triBus6_1_.output_register_mode = "none";
defparam hex3_triBus6_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[2]));
// synopsys translate_off
defparam hex3_triBus6_2_.input_async_reset = "none";
defparam hex3_triBus6_2_.input_power_up = "low";
defparam hex3_triBus6_2_.input_register_mode = "none";
defparam hex3_triBus6_2_.input_sync_reset = "none";
defparam hex3_triBus6_2_.oe_async_reset = "none";
defparam hex3_triBus6_2_.oe_power_up = "low";
defparam hex3_triBus6_2_.oe_register_mode = "none";
defparam hex3_triBus6_2_.oe_sync_reset = "none";
defparam hex3_triBus6_2_.operation_mode = "output";
defparam hex3_triBus6_2_.output_async_reset = "none";
defparam hex3_triBus6_2_.output_power_up = "low";
defparam hex3_triBus6_2_.output_register_mode = "none";
defparam hex3_triBus6_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[3]));
// synopsys translate_off
defparam hex3_triBus6_3_.input_async_reset = "none";
defparam hex3_triBus6_3_.input_power_up = "low";
defparam hex3_triBus6_3_.input_register_mode = "none";
defparam hex3_triBus6_3_.input_sync_reset = "none";
defparam hex3_triBus6_3_.oe_async_reset = "none";
defparam hex3_triBus6_3_.oe_power_up = "low";
defparam hex3_triBus6_3_.oe_register_mode = "none";
defparam hex3_triBus6_3_.oe_sync_reset = "none";
defparam hex3_triBus6_3_.operation_mode = "output";
defparam hex3_triBus6_3_.output_async_reset = "none";
defparam hex3_triBus6_3_.output_power_up = "low";
defparam hex3_triBus6_3_.output_register_mode = "none";
defparam hex3_triBus6_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[4]));
// synopsys translate_off
defparam hex3_triBus6_4_.input_async_reset = "none";
defparam hex3_triBus6_4_.input_power_up = "low";
defparam hex3_triBus6_4_.input_register_mode = "none";
defparam hex3_triBus6_4_.input_sync_reset = "none";
defparam hex3_triBus6_4_.oe_async_reset = "none";
defparam hex3_triBus6_4_.oe_power_up = "low";
defparam hex3_triBus6_4_.oe_register_mode = "none";
defparam hex3_triBus6_4_.oe_sync_reset = "none";
defparam hex3_triBus6_4_.operation_mode = "output";
defparam hex3_triBus6_4_.output_async_reset = "none";
defparam hex3_triBus6_4_.output_power_up = "low";
defparam hex3_triBus6_4_.output_register_mode = "none";
defparam hex3_triBus6_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[5]));
// synopsys translate_off
defparam hex3_triBus6_5_.input_async_reset = "none";
defparam hex3_triBus6_5_.input_power_up = "low";
defparam hex3_triBus6_5_.input_register_mode = "none";
defparam hex3_triBus6_5_.input_sync_reset = "none";
defparam hex3_triBus6_5_.oe_async_reset = "none";
defparam hex3_triBus6_5_.oe_power_up = "low";
defparam hex3_triBus6_5_.oe_register_mode = "none";
defparam hex3_triBus6_5_.oe_sync_reset = "none";
defparam hex3_triBus6_5_.operation_mode = "output";
defparam hex3_triBus6_5_.output_async_reset = "none";
defparam hex3_triBus6_5_.output_power_up = "low";
defparam hex3_triBus6_5_.output_register_mode = "none";
defparam hex3_triBus6_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex3_triBus6_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex3[6]));
// synopsys translate_off
defparam hex3_triBus6_6_.input_async_reset = "none";
defparam hex3_triBus6_6_.input_power_up = "low";
defparam hex3_triBus6_6_.input_register_mode = "none";
defparam hex3_triBus6_6_.input_sync_reset = "none";
defparam hex3_triBus6_6_.oe_async_reset = "none";
defparam hex3_triBus6_6_.oe_power_up = "low";
defparam hex3_triBus6_6_.oe_register_mode = "none";
defparam hex3_triBus6_6_.oe_sync_reset = "none";
defparam hex3_triBus6_6_.operation_mode = "output";
defparam hex3_triBus6_6_.output_async_reset = "none";
defparam hex3_triBus6_6_.output_power_up = "low";
defparam hex3_triBus6_6_.output_register_mode = "none";
defparam hex3_triBus6_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_0_(
	.datain(hex4_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex4[0]));
// synopsys translate_off
defparam hex4_obuf_0_.input_async_reset = "none";
defparam hex4_obuf_0_.input_power_up = "low";
defparam hex4_obuf_0_.input_register_mode = "none";
defparam hex4_obuf_0_.input_sync_reset = "none";
defparam hex4_obuf_0_.oe_async_reset = "none";
defparam hex4_obuf_0_.oe_power_up = "low";
defparam hex4_obuf_0_.oe_register_mode = "none";
defparam hex4_obuf_0_.oe_sync_reset = "none";
defparam hex4_obuf_0_.operation_mode = "output";
defparam hex4_obuf_0_.output_async_reset = "none";
defparam hex4_obuf_0_.output_power_up = "low";
defparam hex4_obuf_0_.output_register_mode = "none";
defparam hex4_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_1_(
	.datain(hex4_dup0_1_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex4[1]));
// synopsys translate_off
defparam hex4_obuf_1_.input_async_reset = "none";
defparam hex4_obuf_1_.input_power_up = "low";
defparam hex4_obuf_1_.input_register_mode = "none";
defparam hex4_obuf_1_.input_sync_reset = "none";
defparam hex4_obuf_1_.oe_async_reset = "none";
defparam hex4_obuf_1_.oe_power_up = "low";
defparam hex4_obuf_1_.oe_register_mode = "none";
defparam hex4_obuf_1_.oe_sync_reset = "none";
defparam hex4_obuf_1_.operation_mode = "output";
defparam hex4_obuf_1_.output_async_reset = "none";
defparam hex4_obuf_1_.output_power_up = "low";
defparam hex4_obuf_1_.output_register_mode = "none";
defparam hex4_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_2_(
	.datain(hex4_dup0_2_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex4[2]));
// synopsys translate_off
defparam hex4_obuf_2_.input_async_reset = "none";
defparam hex4_obuf_2_.input_power_up = "low";
defparam hex4_obuf_2_.input_register_mode = "none";
defparam hex4_obuf_2_.input_sync_reset = "none";
defparam hex4_obuf_2_.oe_async_reset = "none";
defparam hex4_obuf_2_.oe_power_up = "low";
defparam hex4_obuf_2_.oe_register_mode = "none";
defparam hex4_obuf_2_.oe_sync_reset = "none";
defparam hex4_obuf_2_.operation_mode = "output";
defparam hex4_obuf_2_.output_async_reset = "none";
defparam hex4_obuf_2_.output_power_up = "low";
defparam hex4_obuf_2_.output_register_mode = "none";
defparam hex4_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_3_(
	.datain(hex4_dup0_3_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex4[3]));
// synopsys translate_off
defparam hex4_obuf_3_.input_async_reset = "none";
defparam hex4_obuf_3_.input_power_up = "low";
defparam hex4_obuf_3_.input_register_mode = "none";
defparam hex4_obuf_3_.input_sync_reset = "none";
defparam hex4_obuf_3_.oe_async_reset = "none";
defparam hex4_obuf_3_.oe_power_up = "low";
defparam hex4_obuf_3_.oe_register_mode = "none";
defparam hex4_obuf_3_.oe_sync_reset = "none";
defparam hex4_obuf_3_.operation_mode = "output";
defparam hex4_obuf_3_.output_async_reset = "none";
defparam hex4_obuf_3_.output_power_up = "low";
defparam hex4_obuf_3_.output_register_mode = "none";
defparam hex4_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_4_(
	.datain(hex4_dup0_4_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex4[4]));
// synopsys translate_off
defparam hex4_obuf_4_.input_async_reset = "none";
defparam hex4_obuf_4_.input_power_up = "low";
defparam hex4_obuf_4_.input_register_mode = "none";
defparam hex4_obuf_4_.input_sync_reset = "none";
defparam hex4_obuf_4_.oe_async_reset = "none";
defparam hex4_obuf_4_.oe_power_up = "low";
defparam hex4_obuf_4_.oe_register_mode = "none";
defparam hex4_obuf_4_.oe_sync_reset = "none";
defparam hex4_obuf_4_.operation_mode = "output";
defparam hex4_obuf_4_.output_async_reset = "none";
defparam hex4_obuf_4_.output_power_up = "low";
defparam hex4_obuf_4_.output_register_mode = "none";
defparam hex4_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_5_(
	.datain(hex4_dup0_5_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex4[5]));
// synopsys translate_off
defparam hex4_obuf_5_.input_async_reset = "none";
defparam hex4_obuf_5_.input_power_up = "low";
defparam hex4_obuf_5_.input_register_mode = "none";
defparam hex4_obuf_5_.input_sync_reset = "none";
defparam hex4_obuf_5_.oe_async_reset = "none";
defparam hex4_obuf_5_.oe_power_up = "low";
defparam hex4_obuf_5_.oe_register_mode = "none";
defparam hex4_obuf_5_.oe_sync_reset = "none";
defparam hex4_obuf_5_.operation_mode = "output";
defparam hex4_obuf_5_.output_async_reset = "none";
defparam hex4_obuf_5_.output_power_up = "low";
defparam hex4_obuf_5_.output_register_mode = "none";
defparam hex4_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex4_obuf_6_(
	.datain(hex4_dup0_6_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex4[6]));
// synopsys translate_off
defparam hex4_obuf_6_.input_async_reset = "none";
defparam hex4_obuf_6_.input_power_up = "low";
defparam hex4_obuf_6_.input_register_mode = "none";
defparam hex4_obuf_6_.input_sync_reset = "none";
defparam hex4_obuf_6_.oe_async_reset = "none";
defparam hex4_obuf_6_.oe_power_up = "low";
defparam hex4_obuf_6_.oe_register_mode = "none";
defparam hex4_obuf_6_.oe_sync_reset = "none";
defparam hex4_obuf_6_.operation_mode = "output";
defparam hex4_obuf_6_.output_async_reset = "none";
defparam hex4_obuf_6_.output_power_up = "low";
defparam hex4_obuf_6_.output_register_mode = "none";
defparam hex4_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_0_(
	.datain(hex5_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex5[0]));
// synopsys translate_off
defparam hex5_obuf_0_.input_async_reset = "none";
defparam hex5_obuf_0_.input_power_up = "low";
defparam hex5_obuf_0_.input_register_mode = "none";
defparam hex5_obuf_0_.input_sync_reset = "none";
defparam hex5_obuf_0_.oe_async_reset = "none";
defparam hex5_obuf_0_.oe_power_up = "low";
defparam hex5_obuf_0_.oe_register_mode = "none";
defparam hex5_obuf_0_.oe_sync_reset = "none";
defparam hex5_obuf_0_.operation_mode = "output";
defparam hex5_obuf_0_.output_async_reset = "none";
defparam hex5_obuf_0_.output_power_up = "low";
defparam hex5_obuf_0_.output_register_mode = "none";
defparam hex5_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_1_(
	.datain(hex5_dup0_1_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex5[1]));
// synopsys translate_off
defparam hex5_obuf_1_.input_async_reset = "none";
defparam hex5_obuf_1_.input_power_up = "low";
defparam hex5_obuf_1_.input_register_mode = "none";
defparam hex5_obuf_1_.input_sync_reset = "none";
defparam hex5_obuf_1_.oe_async_reset = "none";
defparam hex5_obuf_1_.oe_power_up = "low";
defparam hex5_obuf_1_.oe_register_mode = "none";
defparam hex5_obuf_1_.oe_sync_reset = "none";
defparam hex5_obuf_1_.operation_mode = "output";
defparam hex5_obuf_1_.output_async_reset = "none";
defparam hex5_obuf_1_.output_power_up = "low";
defparam hex5_obuf_1_.output_register_mode = "none";
defparam hex5_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_2_(
	.datain(hex5_dup0_2_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex5[2]));
// synopsys translate_off
defparam hex5_obuf_2_.input_async_reset = "none";
defparam hex5_obuf_2_.input_power_up = "low";
defparam hex5_obuf_2_.input_register_mode = "none";
defparam hex5_obuf_2_.input_sync_reset = "none";
defparam hex5_obuf_2_.oe_async_reset = "none";
defparam hex5_obuf_2_.oe_power_up = "low";
defparam hex5_obuf_2_.oe_register_mode = "none";
defparam hex5_obuf_2_.oe_sync_reset = "none";
defparam hex5_obuf_2_.operation_mode = "output";
defparam hex5_obuf_2_.output_async_reset = "none";
defparam hex5_obuf_2_.output_power_up = "low";
defparam hex5_obuf_2_.output_register_mode = "none";
defparam hex5_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_3_(
	.datain(hex5_dup0_3_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex5[3]));
// synopsys translate_off
defparam hex5_obuf_3_.input_async_reset = "none";
defparam hex5_obuf_3_.input_power_up = "low";
defparam hex5_obuf_3_.input_register_mode = "none";
defparam hex5_obuf_3_.input_sync_reset = "none";
defparam hex5_obuf_3_.oe_async_reset = "none";
defparam hex5_obuf_3_.oe_power_up = "low";
defparam hex5_obuf_3_.oe_register_mode = "none";
defparam hex5_obuf_3_.oe_sync_reset = "none";
defparam hex5_obuf_3_.operation_mode = "output";
defparam hex5_obuf_3_.output_async_reset = "none";
defparam hex5_obuf_3_.output_power_up = "low";
defparam hex5_obuf_3_.output_register_mode = "none";
defparam hex5_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_4_(
	.datain(hex5_dup0_4_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex5[4]));
// synopsys translate_off
defparam hex5_obuf_4_.input_async_reset = "none";
defparam hex5_obuf_4_.input_power_up = "low";
defparam hex5_obuf_4_.input_register_mode = "none";
defparam hex5_obuf_4_.input_sync_reset = "none";
defparam hex5_obuf_4_.oe_async_reset = "none";
defparam hex5_obuf_4_.oe_power_up = "low";
defparam hex5_obuf_4_.oe_register_mode = "none";
defparam hex5_obuf_4_.oe_sync_reset = "none";
defparam hex5_obuf_4_.operation_mode = "output";
defparam hex5_obuf_4_.output_async_reset = "none";
defparam hex5_obuf_4_.output_power_up = "low";
defparam hex5_obuf_4_.output_register_mode = "none";
defparam hex5_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_5_(
	.datain(hex5_dup0_5_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex5[5]));
// synopsys translate_off
defparam hex5_obuf_5_.input_async_reset = "none";
defparam hex5_obuf_5_.input_power_up = "low";
defparam hex5_obuf_5_.input_register_mode = "none";
defparam hex5_obuf_5_.input_sync_reset = "none";
defparam hex5_obuf_5_.oe_async_reset = "none";
defparam hex5_obuf_5_.oe_power_up = "low";
defparam hex5_obuf_5_.oe_register_mode = "none";
defparam hex5_obuf_5_.oe_sync_reset = "none";
defparam hex5_obuf_5_.operation_mode = "output";
defparam hex5_obuf_5_.output_async_reset = "none";
defparam hex5_obuf_5_.output_power_up = "low";
defparam hex5_obuf_5_.output_register_mode = "none";
defparam hex5_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex5_obuf_6_(
	.datain(hex5_dup0_6_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex5[6]));
// synopsys translate_off
defparam hex5_obuf_6_.input_async_reset = "none";
defparam hex5_obuf_6_.input_power_up = "low";
defparam hex5_obuf_6_.input_register_mode = "none";
defparam hex5_obuf_6_.input_sync_reset = "none";
defparam hex5_obuf_6_.oe_async_reset = "none";
defparam hex5_obuf_6_.oe_power_up = "low";
defparam hex5_obuf_6_.oe_register_mode = "none";
defparam hex5_obuf_6_.oe_sync_reset = "none";
defparam hex5_obuf_6_.operation_mode = "output";
defparam hex5_obuf_6_.output_async_reset = "none";
defparam hex5_obuf_6_.output_power_up = "low";
defparam hex5_obuf_6_.output_register_mode = "none";
defparam hex5_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_0_(
	.datain(hex6_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex6[0]));
// synopsys translate_off
defparam hex6_obuf_0_.input_async_reset = "none";
defparam hex6_obuf_0_.input_power_up = "low";
defparam hex6_obuf_0_.input_register_mode = "none";
defparam hex6_obuf_0_.input_sync_reset = "none";
defparam hex6_obuf_0_.oe_async_reset = "none";
defparam hex6_obuf_0_.oe_power_up = "low";
defparam hex6_obuf_0_.oe_register_mode = "none";
defparam hex6_obuf_0_.oe_sync_reset = "none";
defparam hex6_obuf_0_.operation_mode = "output";
defparam hex6_obuf_0_.output_async_reset = "none";
defparam hex6_obuf_0_.output_power_up = "low";
defparam hex6_obuf_0_.output_register_mode = "none";
defparam hex6_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_1_(
	.datain(hex6_dup0_1_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex6[1]));
// synopsys translate_off
defparam hex6_obuf_1_.input_async_reset = "none";
defparam hex6_obuf_1_.input_power_up = "low";
defparam hex6_obuf_1_.input_register_mode = "none";
defparam hex6_obuf_1_.input_sync_reset = "none";
defparam hex6_obuf_1_.oe_async_reset = "none";
defparam hex6_obuf_1_.oe_power_up = "low";
defparam hex6_obuf_1_.oe_register_mode = "none";
defparam hex6_obuf_1_.oe_sync_reset = "none";
defparam hex6_obuf_1_.operation_mode = "output";
defparam hex6_obuf_1_.output_async_reset = "none";
defparam hex6_obuf_1_.output_power_up = "low";
defparam hex6_obuf_1_.output_register_mode = "none";
defparam hex6_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_2_(
	.datain(hex6_dup0_2_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex6[2]));
// synopsys translate_off
defparam hex6_obuf_2_.input_async_reset = "none";
defparam hex6_obuf_2_.input_power_up = "low";
defparam hex6_obuf_2_.input_register_mode = "none";
defparam hex6_obuf_2_.input_sync_reset = "none";
defparam hex6_obuf_2_.oe_async_reset = "none";
defparam hex6_obuf_2_.oe_power_up = "low";
defparam hex6_obuf_2_.oe_register_mode = "none";
defparam hex6_obuf_2_.oe_sync_reset = "none";
defparam hex6_obuf_2_.operation_mode = "output";
defparam hex6_obuf_2_.output_async_reset = "none";
defparam hex6_obuf_2_.output_power_up = "low";
defparam hex6_obuf_2_.output_register_mode = "none";
defparam hex6_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_3_(
	.datain(hex6_dup0_3_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex6[3]));
// synopsys translate_off
defparam hex6_obuf_3_.input_async_reset = "none";
defparam hex6_obuf_3_.input_power_up = "low";
defparam hex6_obuf_3_.input_register_mode = "none";
defparam hex6_obuf_3_.input_sync_reset = "none";
defparam hex6_obuf_3_.oe_async_reset = "none";
defparam hex6_obuf_3_.oe_power_up = "low";
defparam hex6_obuf_3_.oe_register_mode = "none";
defparam hex6_obuf_3_.oe_sync_reset = "none";
defparam hex6_obuf_3_.operation_mode = "output";
defparam hex6_obuf_3_.output_async_reset = "none";
defparam hex6_obuf_3_.output_power_up = "low";
defparam hex6_obuf_3_.output_register_mode = "none";
defparam hex6_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_4_(
	.datain(hex6_dup0_4_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex6[4]));
// synopsys translate_off
defparam hex6_obuf_4_.input_async_reset = "none";
defparam hex6_obuf_4_.input_power_up = "low";
defparam hex6_obuf_4_.input_register_mode = "none";
defparam hex6_obuf_4_.input_sync_reset = "none";
defparam hex6_obuf_4_.oe_async_reset = "none";
defparam hex6_obuf_4_.oe_power_up = "low";
defparam hex6_obuf_4_.oe_register_mode = "none";
defparam hex6_obuf_4_.oe_sync_reset = "none";
defparam hex6_obuf_4_.operation_mode = "output";
defparam hex6_obuf_4_.output_async_reset = "none";
defparam hex6_obuf_4_.output_power_up = "low";
defparam hex6_obuf_4_.output_register_mode = "none";
defparam hex6_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_5_(
	.datain(hex6_dup0_5_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex6[5]));
// synopsys translate_off
defparam hex6_obuf_5_.input_async_reset = "none";
defparam hex6_obuf_5_.input_power_up = "low";
defparam hex6_obuf_5_.input_register_mode = "none";
defparam hex6_obuf_5_.input_sync_reset = "none";
defparam hex6_obuf_5_.oe_async_reset = "none";
defparam hex6_obuf_5_.oe_power_up = "low";
defparam hex6_obuf_5_.oe_register_mode = "none";
defparam hex6_obuf_5_.oe_sync_reset = "none";
defparam hex6_obuf_5_.operation_mode = "output";
defparam hex6_obuf_5_.output_async_reset = "none";
defparam hex6_obuf_5_.output_power_up = "low";
defparam hex6_obuf_5_.output_register_mode = "none";
defparam hex6_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex6_obuf_6_(
	.datain(hex6_dup0_6_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex6[6]));
// synopsys translate_off
defparam hex6_obuf_6_.input_async_reset = "none";
defparam hex6_obuf_6_.input_power_up = "low";
defparam hex6_obuf_6_.input_register_mode = "none";
defparam hex6_obuf_6_.input_sync_reset = "none";
defparam hex6_obuf_6_.oe_async_reset = "none";
defparam hex6_obuf_6_.oe_power_up = "low";
defparam hex6_obuf_6_.oe_register_mode = "none";
defparam hex6_obuf_6_.oe_sync_reset = "none";
defparam hex6_obuf_6_.operation_mode = "output";
defparam hex6_obuf_6_.output_async_reset = "none";
defparam hex6_obuf_6_.output_power_up = "low";
defparam hex6_obuf_6_.output_register_mode = "none";
defparam hex6_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_0_(
	.datain(hex7_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex7[0]));
// synopsys translate_off
defparam hex7_obuf_0_.input_async_reset = "none";
defparam hex7_obuf_0_.input_power_up = "low";
defparam hex7_obuf_0_.input_register_mode = "none";
defparam hex7_obuf_0_.input_sync_reset = "none";
defparam hex7_obuf_0_.oe_async_reset = "none";
defparam hex7_obuf_0_.oe_power_up = "low";
defparam hex7_obuf_0_.oe_register_mode = "none";
defparam hex7_obuf_0_.oe_sync_reset = "none";
defparam hex7_obuf_0_.operation_mode = "output";
defparam hex7_obuf_0_.output_async_reset = "none";
defparam hex7_obuf_0_.output_power_up = "low";
defparam hex7_obuf_0_.output_register_mode = "none";
defparam hex7_obuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_1_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex7[1]));
// synopsys translate_off
defparam hex7_obuf_1_.input_async_reset = "none";
defparam hex7_obuf_1_.input_power_up = "low";
defparam hex7_obuf_1_.input_register_mode = "none";
defparam hex7_obuf_1_.input_sync_reset = "none";
defparam hex7_obuf_1_.oe_async_reset = "none";
defparam hex7_obuf_1_.oe_power_up = "low";
defparam hex7_obuf_1_.oe_register_mode = "none";
defparam hex7_obuf_1_.oe_sync_reset = "none";
defparam hex7_obuf_1_.operation_mode = "output";
defparam hex7_obuf_1_.output_async_reset = "none";
defparam hex7_obuf_1_.output_power_up = "low";
defparam hex7_obuf_1_.output_register_mode = "none";
defparam hex7_obuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_2_(
	.datain(gnd),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex7[2]));
// synopsys translate_off
defparam hex7_obuf_2_.input_async_reset = "none";
defparam hex7_obuf_2_.input_power_up = "low";
defparam hex7_obuf_2_.input_register_mode = "none";
defparam hex7_obuf_2_.input_sync_reset = "none";
defparam hex7_obuf_2_.oe_async_reset = "none";
defparam hex7_obuf_2_.oe_power_up = "low";
defparam hex7_obuf_2_.oe_register_mode = "none";
defparam hex7_obuf_2_.oe_sync_reset = "none";
defparam hex7_obuf_2_.operation_mode = "output";
defparam hex7_obuf_2_.output_async_reset = "none";
defparam hex7_obuf_2_.output_power_up = "low";
defparam hex7_obuf_2_.output_register_mode = "none";
defparam hex7_obuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_3_(
	.datain(hex7_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex7[3]));
// synopsys translate_off
defparam hex7_obuf_3_.input_async_reset = "none";
defparam hex7_obuf_3_.input_power_up = "low";
defparam hex7_obuf_3_.input_register_mode = "none";
defparam hex7_obuf_3_.input_sync_reset = "none";
defparam hex7_obuf_3_.oe_async_reset = "none";
defparam hex7_obuf_3_.oe_power_up = "low";
defparam hex7_obuf_3_.oe_register_mode = "none";
defparam hex7_obuf_3_.oe_sync_reset = "none";
defparam hex7_obuf_3_.operation_mode = "output";
defparam hex7_obuf_3_.output_async_reset = "none";
defparam hex7_obuf_3_.output_power_up = "low";
defparam hex7_obuf_3_.output_register_mode = "none";
defparam hex7_obuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_4_(
	.datain(hex7_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex7[4]));
// synopsys translate_off
defparam hex7_obuf_4_.input_async_reset = "none";
defparam hex7_obuf_4_.input_power_up = "low";
defparam hex7_obuf_4_.input_register_mode = "none";
defparam hex7_obuf_4_.input_sync_reset = "none";
defparam hex7_obuf_4_.oe_async_reset = "none";
defparam hex7_obuf_4_.oe_power_up = "low";
defparam hex7_obuf_4_.oe_register_mode = "none";
defparam hex7_obuf_4_.oe_sync_reset = "none";
defparam hex7_obuf_4_.operation_mode = "output";
defparam hex7_obuf_4_.output_async_reset = "none";
defparam hex7_obuf_4_.output_power_up = "low";
defparam hex7_obuf_4_.output_register_mode = "none";
defparam hex7_obuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_5_(
	.datain(hex7_dup0_0_),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex7[5]));
// synopsys translate_off
defparam hex7_obuf_5_.input_async_reset = "none";
defparam hex7_obuf_5_.input_power_up = "low";
defparam hex7_obuf_5_.input_register_mode = "none";
defparam hex7_obuf_5_.input_sync_reset = "none";
defparam hex7_obuf_5_.oe_async_reset = "none";
defparam hex7_obuf_5_.oe_power_up = "low";
defparam hex7_obuf_5_.oe_register_mode = "none";
defparam hex7_obuf_5_.oe_sync_reset = "none";
defparam hex7_obuf_5_.operation_mode = "output";
defparam hex7_obuf_5_.output_async_reset = "none";
defparam hex7_obuf_5_.output_power_up = "low";
defparam hex7_obuf_5_.output_register_mode = "none";
defparam hex7_obuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io hex7_obuf_6_(
	.datain(vcc),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(hex7[6]));
// synopsys translate_off
defparam hex7_obuf_6_.input_async_reset = "none";
defparam hex7_obuf_6_.input_power_up = "low";
defparam hex7_obuf_6_.input_register_mode = "none";
defparam hex7_obuf_6_.input_sync_reset = "none";
defparam hex7_obuf_6_.oe_async_reset = "none";
defparam hex7_obuf_6_.oe_power_up = "low";
defparam hex7_obuf_6_.oe_register_mode = "none";
defparam hex7_obuf_6_.oe_sync_reset = "none";
defparam hex7_obuf_6_.operation_mode = "output";
defparam hex7_obuf_6_.output_async_reset = "none";
defparam hex7_obuf_6_.output_power_up = "low";
defparam hex7_obuf_6_.output_register_mode = "none";
defparam hex7_obuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_xck_obuf(
	.datain(\u_audio_dac_p1_altpll|_clk1~clkctrl_outclk ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(aud_xck));
// synopsys translate_off
defparam aud_xck_obuf.input_async_reset = "none";
defparam aud_xck_obuf.input_power_up = "low";
defparam aud_xck_obuf.input_register_mode = "none";
defparam aud_xck_obuf.input_sync_reset = "none";
defparam aud_xck_obuf.oe_async_reset = "none";
defparam aud_xck_obuf.oe_power_up = "low";
defparam aud_xck_obuf.oe_register_mode = "none";
defparam aud_xck_obuf.oe_sync_reset = "none";
defparam aud_xck_obuf.operation_mode = "output";
defparam aud_xck_obuf.output_async_reset = "none";
defparam aud_xck_obuf.output_power_up = "low";
defparam aud_xck_obuf.output_register_mode = "none";
defparam aud_xck_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_dacdat_obuf(
	.datain(aud_dacdat_dup0),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(aud_dacdat));
// synopsys translate_off
defparam aud_dacdat_obuf.input_async_reset = "none";
defparam aud_dacdat_obuf.input_power_up = "low";
defparam aud_dacdat_obuf.input_register_mode = "none";
defparam aud_dacdat_obuf.input_sync_reset = "none";
defparam aud_dacdat_obuf.oe_async_reset = "none";
defparam aud_dacdat_obuf.oe_power_up = "low";
defparam aud_dacdat_obuf.oe_register_mode = "none";
defparam aud_dacdat_obuf.oe_sync_reset = "none";
defparam aud_dacdat_obuf.operation_mode = "output";
defparam aud_dacdat_obuf.output_async_reset = "none";
defparam aud_dacdat_obuf.output_power_up = "low";
defparam aud_dacdat_obuf.output_register_mode = "none";
defparam aud_dacdat_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_daclrck_obuf(
	.datain(aud_adclrck_dup0),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(aud_daclrck));
// synopsys translate_off
defparam aud_daclrck_obuf.input_async_reset = "none";
defparam aud_daclrck_obuf.input_power_up = "low";
defparam aud_daclrck_obuf.input_register_mode = "none";
defparam aud_daclrck_obuf.input_sync_reset = "none";
defparam aud_daclrck_obuf.oe_async_reset = "none";
defparam aud_daclrck_obuf.oe_power_up = "low";
defparam aud_daclrck_obuf.oe_register_mode = "none";
defparam aud_daclrck_obuf.oe_sync_reset = "none";
defparam aud_daclrck_obuf.operation_mode = "output";
defparam aud_daclrck_obuf.output_async_reset = "none";
defparam aud_daclrck_obuf.output_power_up = "low";
defparam aud_daclrck_obuf.output_register_mode = "none";
defparam aud_daclrck_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io aud_adclrck_obuf(
	.datain(aud_adclrck_dup0),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(aud_adclrck));
// synopsys translate_off
defparam aud_adclrck_obuf.input_async_reset = "none";
defparam aud_adclrck_obuf.input_power_up = "low";
defparam aud_adclrck_obuf.input_register_mode = "none";
defparam aud_adclrck_obuf.input_sync_reset = "none";
defparam aud_adclrck_obuf.oe_async_reset = "none";
defparam aud_adclrck_obuf.oe_power_up = "low";
defparam aud_adclrck_obuf.oe_register_mode = "none";
defparam aud_adclrck_obuf.oe_sync_reset = "none";
defparam aud_adclrck_obuf.operation_mode = "output";
defparam aud_adclrck_obuf.output_async_reset = "none";
defparam aud_adclrck_obuf.output_power_up = "low";
defparam aud_adclrck_obuf.output_register_mode = "none";
defparam aud_adclrck_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io i2c_sclk_obuf(
	.datain(\u_i2c_av_config|u0|p_i2c_sclk ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2c_sclk));
// synopsys translate_off
defparam i2c_sclk_obuf.input_async_reset = "none";
defparam i2c_sclk_obuf.input_power_up = "low";
defparam i2c_sclk_obuf.input_register_mode = "none";
defparam i2c_sclk_obuf.input_sync_reset = "none";
defparam i2c_sclk_obuf.oe_async_reset = "none";
defparam i2c_sclk_obuf.oe_power_up = "low";
defparam i2c_sclk_obuf.oe_register_mode = "none";
defparam i2c_sclk_obuf.oe_sync_reset = "none";
defparam i2c_sclk_obuf.operation_mode = "output";
defparam i2c_sclk_obuf.output_async_reset = "none";
defparam i2c_sclk_obuf.output_power_up = "low";
defparam i2c_sclk_obuf.output_register_mode = "none";
defparam i2c_sclk_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io u_i2c_av_config_u0_ix31977z43919(
	.datain(!\u_i2c_av_config|u0|nx51857z1 ),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i2c_sdat));
// synopsys translate_off
defparam u_i2c_av_config_u0_ix31977z43919.input_async_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.input_power_up = "low";
defparam u_i2c_av_config_u0_ix31977z43919.input_register_mode = "none";
defparam u_i2c_av_config_u0_ix31977z43919.input_sync_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.oe_async_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.oe_power_up = "low";
defparam u_i2c_av_config_u0_ix31977z43919.oe_register_mode = "none";
defparam u_i2c_av_config_u0_ix31977z43919.oe_sync_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.open_drain_output = "true";
defparam u_i2c_av_config_u0_ix31977z43919.operation_mode = "bidir";
defparam u_i2c_av_config_u0_ix31977z43919.output_async_reset = "none";
defparam u_i2c_av_config_u0_ix31977z43919.output_power_up = "low";
defparam u_i2c_av_config_u0_ix31977z43919.output_register_mode = "none";
defparam u_i2c_av_config_u0_ix31977z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io \aud_bclk~I (
	.datain(aud_bclk_dup0),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(aud_bclk));
// synopsys translate_off
defparam \aud_bclk~I .input_async_reset = "none";
defparam \aud_bclk~I .input_power_up = "low";
defparam \aud_bclk~I .input_register_mode = "none";
defparam \aud_bclk~I .input_sync_reset = "none";
defparam \aud_bclk~I .oe_async_reset = "none";
defparam \aud_bclk~I .oe_power_up = "low";
defparam \aud_bclk~I .oe_register_mode = "none";
defparam \aud_bclk~I .oe_sync_reset = "none";
defparam \aud_bclk~I .operation_mode = "bidir";
defparam \aud_bclk~I .output_async_reset = "none";
defparam \aud_bclk~I .output_power_up = "low";
defparam \aud_bclk~I .output_register_mode = "none";
defparam \aud_bclk~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \clock_50~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clock_50));
// synopsys translate_off
defparam \clock_50~I .input_async_reset = "none";
defparam \clock_50~I .input_power_up = "low";
defparam \clock_50~I .input_register_mode = "none";
defparam \clock_50~I .input_sync_reset = "none";
defparam \clock_50~I .oe_async_reset = "none";
defparam \clock_50~I .oe_power_up = "low";
defparam \clock_50~I .oe_register_mode = "none";
defparam \clock_50~I .oe_sync_reset = "none";
defparam \clock_50~I .operation_mode = "input";
defparam \clock_50~I .output_async_reset = "none";
defparam \clock_50~I .output_power_up = "low";
defparam \clock_50~I .output_register_mode = "none";
defparam \clock_50~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \key[1]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[1]));
// synopsys translate_off
defparam \key[1]~I .input_async_reset = "none";
defparam \key[1]~I .input_power_up = "low";
defparam \key[1]~I .input_register_mode = "none";
defparam \key[1]~I .input_sync_reset = "none";
defparam \key[1]~I .oe_async_reset = "none";
defparam \key[1]~I .oe_power_up = "low";
defparam \key[1]~I .oe_register_mode = "none";
defparam \key[1]~I .oe_sync_reset = "none";
defparam \key[1]~I .operation_mode = "input";
defparam \key[1]~I .output_async_reset = "none";
defparam \key[1]~I .output_power_up = "low";
defparam \key[1]~I .output_register_mode = "none";
defparam \key[1]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \key[2]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[2]));
// synopsys translate_off
defparam \key[2]~I .input_async_reset = "none";
defparam \key[2]~I .input_power_up = "low";
defparam \key[2]~I .input_register_mode = "none";
defparam \key[2]~I .input_sync_reset = "none";
defparam \key[2]~I .oe_async_reset = "none";
defparam \key[2]~I .oe_power_up = "low";
defparam \key[2]~I .oe_register_mode = "none";
defparam \key[2]~I .oe_sync_reset = "none";
defparam \key[2]~I .operation_mode = "input";
defparam \key[2]~I .output_async_reset = "none";
defparam \key[2]~I .output_power_up = "low";
defparam \key[2]~I .output_register_mode = "none";
defparam \key[2]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \key[3]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(key[3]));
// synopsys translate_off
defparam \key[3]~I .input_async_reset = "none";
defparam \key[3]~I .input_power_up = "low";
defparam \key[3]~I .input_register_mode = "none";
defparam \key[3]~I .input_sync_reset = "none";
defparam \key[3]~I .oe_async_reset = "none";
defparam \key[3]~I .oe_power_up = "low";
defparam \key[3]~I .oe_register_mode = "none";
defparam \key[3]~I .oe_sync_reset = "none";
defparam \key[3]~I .operation_mode = "input";
defparam \key[3]~I .output_async_reset = "none";
defparam \key[3]~I .output_power_up = "low";
defparam \key[3]~I .output_register_mode = "none";
defparam \key[3]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[7]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[7]));
// synopsys translate_off
defparam \sw[7]~I .input_async_reset = "none";
defparam \sw[7]~I .input_power_up = "low";
defparam \sw[7]~I .input_register_mode = "none";
defparam \sw[7]~I .input_sync_reset = "none";
defparam \sw[7]~I .oe_async_reset = "none";
defparam \sw[7]~I .oe_power_up = "low";
defparam \sw[7]~I .oe_register_mode = "none";
defparam \sw[7]~I .oe_sync_reset = "none";
defparam \sw[7]~I .operation_mode = "input";
defparam \sw[7]~I .output_async_reset = "none";
defparam \sw[7]~I .output_power_up = "low";
defparam \sw[7]~I .output_register_mode = "none";
defparam \sw[7]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[8]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[8]));
// synopsys translate_off
defparam \sw[8]~I .input_async_reset = "none";
defparam \sw[8]~I .input_power_up = "low";
defparam \sw[8]~I .input_register_mode = "none";
defparam \sw[8]~I .input_sync_reset = "none";
defparam \sw[8]~I .oe_async_reset = "none";
defparam \sw[8]~I .oe_power_up = "low";
defparam \sw[8]~I .oe_register_mode = "none";
defparam \sw[8]~I .oe_sync_reset = "none";
defparam \sw[8]~I .operation_mode = "input";
defparam \sw[8]~I .output_async_reset = "none";
defparam \sw[8]~I .output_power_up = "low";
defparam \sw[8]~I .output_register_mode = "none";
defparam \sw[8]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[9]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[9]));
// synopsys translate_off
defparam \sw[9]~I .input_async_reset = "none";
defparam \sw[9]~I .input_power_up = "low";
defparam \sw[9]~I .input_register_mode = "none";
defparam \sw[9]~I .input_sync_reset = "none";
defparam \sw[9]~I .oe_async_reset = "none";
defparam \sw[9]~I .oe_power_up = "low";
defparam \sw[9]~I .oe_register_mode = "none";
defparam \sw[9]~I .oe_sync_reset = "none";
defparam \sw[9]~I .operation_mode = "input";
defparam \sw[9]~I .output_async_reset = "none";
defparam \sw[9]~I .output_power_up = "low";
defparam \sw[9]~I .output_register_mode = "none";
defparam \sw[9]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[10]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[10]));
// synopsys translate_off
defparam \sw[10]~I .input_async_reset = "none";
defparam \sw[10]~I .input_power_up = "low";
defparam \sw[10]~I .input_register_mode = "none";
defparam \sw[10]~I .input_sync_reset = "none";
defparam \sw[10]~I .oe_async_reset = "none";
defparam \sw[10]~I .oe_power_up = "low";
defparam \sw[10]~I .oe_register_mode = "none";
defparam \sw[10]~I .oe_sync_reset = "none";
defparam \sw[10]~I .operation_mode = "input";
defparam \sw[10]~I .output_async_reset = "none";
defparam \sw[10]~I .output_power_up = "low";
defparam \sw[10]~I .output_register_mode = "none";
defparam \sw[10]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[11]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[11]));
// synopsys translate_off
defparam \sw[11]~I .input_async_reset = "none";
defparam \sw[11]~I .input_power_up = "low";
defparam \sw[11]~I .input_register_mode = "none";
defparam \sw[11]~I .input_sync_reset = "none";
defparam \sw[11]~I .oe_async_reset = "none";
defparam \sw[11]~I .oe_power_up = "low";
defparam \sw[11]~I .oe_register_mode = "none";
defparam \sw[11]~I .oe_sync_reset = "none";
defparam \sw[11]~I .operation_mode = "input";
defparam \sw[11]~I .output_async_reset = "none";
defparam \sw[11]~I .output_power_up = "low";
defparam \sw[11]~I .output_register_mode = "none";
defparam \sw[11]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[12]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[12]));
// synopsys translate_off
defparam \sw[12]~I .input_async_reset = "none";
defparam \sw[12]~I .input_power_up = "low";
defparam \sw[12]~I .input_register_mode = "none";
defparam \sw[12]~I .input_sync_reset = "none";
defparam \sw[12]~I .oe_async_reset = "none";
defparam \sw[12]~I .oe_power_up = "low";
defparam \sw[12]~I .oe_register_mode = "none";
defparam \sw[12]~I .oe_sync_reset = "none";
defparam \sw[12]~I .operation_mode = "input";
defparam \sw[12]~I .output_async_reset = "none";
defparam \sw[12]~I .output_power_up = "low";
defparam \sw[12]~I .output_register_mode = "none";
defparam \sw[12]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[13]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[13]));
// synopsys translate_off
defparam \sw[13]~I .input_async_reset = "none";
defparam \sw[13]~I .input_power_up = "low";
defparam \sw[13]~I .input_register_mode = "none";
defparam \sw[13]~I .input_sync_reset = "none";
defparam \sw[13]~I .oe_async_reset = "none";
defparam \sw[13]~I .oe_power_up = "low";
defparam \sw[13]~I .oe_register_mode = "none";
defparam \sw[13]~I .oe_sync_reset = "none";
defparam \sw[13]~I .operation_mode = "input";
defparam \sw[13]~I .output_async_reset = "none";
defparam \sw[13]~I .output_power_up = "low";
defparam \sw[13]~I .output_register_mode = "none";
defparam \sw[13]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[14]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[14]));
// synopsys translate_off
defparam \sw[14]~I .input_async_reset = "none";
defparam \sw[14]~I .input_power_up = "low";
defparam \sw[14]~I .input_register_mode = "none";
defparam \sw[14]~I .input_sync_reset = "none";
defparam \sw[14]~I .oe_async_reset = "none";
defparam \sw[14]~I .oe_power_up = "low";
defparam \sw[14]~I .oe_register_mode = "none";
defparam \sw[14]~I .oe_sync_reset = "none";
defparam \sw[14]~I .operation_mode = "input";
defparam \sw[14]~I .output_async_reset = "none";
defparam \sw[14]~I .output_power_up = "low";
defparam \sw[14]~I .output_register_mode = "none";
defparam \sw[14]~I .output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io \sw[15]~I (
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(sw[15]));
// synopsys translate_off
defparam \sw[15]~I .input_async_reset = "none";
defparam \sw[15]~I .input_power_up = "low";
defparam \sw[15]~I .input_register_mode = "none";
defparam \sw[15]~I .input_sync_reset = "none";
defparam \sw[15]~I .oe_async_reset = "none";
defparam \sw[15]~I .oe_power_up = "low";
defparam \sw[15]~I .oe_register_mode = "none";
defparam \sw[15]~I .oe_sync_reset = "none";
defparam \sw[15]~I .operation_mode = "input";
defparam \sw[15]~I .output_async_reset = "none";
defparam \sw[15]~I .output_power_up = "low";
defparam \sw[15]~I .output_register_mode = "none";
defparam \sw[15]~I .output_sync_reset = "none";
// synopsys translate_on

endmodule
