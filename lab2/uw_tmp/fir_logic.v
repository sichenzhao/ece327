//
// Verilog description for cell fir, 
// 05/31/15 15:33:08
//
// Precision RTL Synthesis, 2008a.47//


module fir ( clk, i_data, o_data ) ;

    input clk ;
    input [15:0]i_data ;
    output [15:0]o_data ;

    wire [15:0]o_data_dup0;
    wire tap1_15_, tap1_14_, tap1_13_, tap1_12_, tap1_11_, tap1_10_, tap1_9_, 
         tap1_8_, tap1_7_, tap1_6_, tap1_5_, tap1_4_, tap1_3_, tap1_2_, tap2_15_, 
         tap2_14_, tap2_13_, tap2_12_, tap2_11_, tap2_10_, tap2_9_, tap2_8_, 
         tap2_7_, tap2_6_, tap2_5_, tap2_4_, tap2_3_, tap2_2_, tap3_15_, 
         tap3_14_, tap3_13_, tap3_12_, tap3_11_, tap3_10_, tap3_9_, tap3_8_, 
         tap3_7_, tap3_6_, tap3_5_, tap3_4_, tap3_3_, tap3_2_, tap4_15_, 
         tap4_14_, tap4_13_, tap4_12_, tap4_11_, tap4_10_, tap4_9_, tap4_8_, 
         tap4_7_, tap4_6_, tap4_5_, tap4_4_, tap4_3_, tap4_2_;
    wire [14:0]sum2;
    wire [15:0]sum3;
    wire clk_int;
    wire [704:0] xmplr_dummy ;




    add_16_0 sum3_add16_0 (.a ({sum2[14],xmplr_dummy [0],sum2[13],sum2[12],
             sum2[11],sum2[10],sum2[9],sum2[8],sum2[7],sum2[6],sum2[5],sum2[4],
             sum2[3],sum2[2],sum2[1],sum2[0]}), .b ({tap3_15_,xmplr_dummy [1],
             xmplr_dummy [2],tap3_14_,tap3_13_,tap3_12_,tap3_11_,tap3_10_,
             tap3_9_,tap3_8_,tap3_7_,tap3_6_,tap3_5_,tap3_4_,tap3_3_,tap3_2_}), 
             .d ({sum3[15],sum3[14],sum3[13],sum3[12],sum3[11],sum3[10],sum3[9],
             sum3[8],sum3[7],sum3[6],sum3[5],sum3[4],sum3[3],sum3[2],sum3[1],
             sum3[0]})) ;
    add_16_1 o_data_add16_1 (.a ({sum3[15],sum3[14],sum3[13],sum3[12],sum3[11],
             sum3[10],sum3[9],sum3[8],sum3[7],sum3[6],sum3[5],sum3[4],sum3[3],
             sum3[2],sum3[1],sum3[0]}), .b ({tap4_15_,xmplr_dummy [3],
             xmplr_dummy [4],tap4_14_,tap4_13_,tap4_12_,tap4_11_,tap4_10_,
             tap4_9_,tap4_8_,tap4_7_,tap4_6_,tap4_5_,tap4_4_,tap4_3_,tap4_2_}), 
             .d ({o_data_dup0[15],o_data_dup0[14],o_data_dup0[13],
             o_data_dup0[12],o_data_dup0[11],o_data_dup0[10],o_data_dup0[9],
             o_data_dup0[8],o_data_dup0[7],o_data_dup0[6],o_data_dup0[5],
             o_data_dup0[4],o_data_dup0[3],o_data_dup0[2],o_data_dup0[1],
             o_data_dup0[0]})) ;
    add_15_0 sum2_add15_2 (.a ({tap1_15_,xmplr_dummy [5],tap1_14_,tap1_13_,
             tap1_12_,tap1_11_,tap1_10_,tap1_9_,tap1_8_,tap1_7_,tap1_6_,tap1_5_,
             tap1_4_,tap1_3_,tap1_2_}), .b ({tap2_15_,xmplr_dummy [6],tap2_14_,
             tap2_13_,tap2_12_,tap2_11_,tap2_10_,tap2_9_,tap2_8_,tap2_7_,tap2_6_
             ,tap2_5_,tap2_4_,tap2_3_,tap2_2_}), .d ({sum2[14],sum2[13],sum2[12]
             ,sum2[11],sum2[10],sum2[9],sum2[8],sum2[7],sum2[6],sum2[5],sum2[4],
             sum2[3],sum2[2],sum2[1],sum2[0]})) ;
    cycloneii_lcell_ff reg_tap4_9_ (.regout (tap4_9_), .datain (tap3_9_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_8_ (.regout (tap4_8_), .datain (tap3_8_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_7_ (.regout (tap4_7_), .datain (tap3_7_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_6_ (.regout (tap4_6_), .datain (tap3_6_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_5_ (.regout (tap4_5_), .datain (tap3_5_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_4_ (.regout (tap4_4_), .datain (tap3_4_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_3_ (.regout (tap4_3_), .datain (tap3_3_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_2_ (.regout (tap4_2_), .datain (tap3_2_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_15_ (.regout (tap4_15_), .datain (tap3_15_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_14_ (.regout (tap4_14_), .datain (tap3_14_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_13_ (.regout (tap4_13_), .datain (tap3_13_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_12_ (.regout (tap4_12_), .datain (tap3_12_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_11_ (.regout (tap4_11_), .datain (tap3_11_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap4_10_ (.regout (tap4_10_), .datain (tap3_10_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_9_ (.regout (tap3_9_), .datain (tap2_9_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_8_ (.regout (tap3_8_), .datain (tap2_8_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_7_ (.regout (tap3_7_), .datain (tap2_7_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_6_ (.regout (tap3_6_), .datain (tap2_6_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_5_ (.regout (tap3_5_), .datain (tap2_5_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_4_ (.regout (tap3_4_), .datain (tap2_4_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_3_ (.regout (tap3_3_), .datain (tap2_3_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_2_ (.regout (tap3_2_), .datain (tap2_2_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_15_ (.regout (tap3_15_), .datain (tap2_15_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_14_ (.regout (tap3_14_), .datain (tap2_14_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_13_ (.regout (tap3_13_), .datain (tap2_13_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_12_ (.regout (tap3_12_), .datain (tap2_12_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_11_ (.regout (tap3_11_), .datain (tap2_11_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap3_10_ (.regout (tap3_10_), .datain (tap2_10_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_9_ (.regout (tap2_9_), .datain (tap1_9_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_8_ (.regout (tap2_8_), .datain (tap1_8_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_7_ (.regout (tap2_7_), .datain (tap1_7_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_6_ (.regout (tap2_6_), .datain (tap1_6_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_5_ (.regout (tap2_5_), .datain (tap1_5_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_4_ (.regout (tap2_4_), .datain (tap1_4_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_3_ (.regout (tap2_3_), .datain (tap1_3_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_2_ (.regout (tap2_2_), .datain (tap1_2_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_15_ (.regout (tap2_15_), .datain (tap1_15_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_14_ (.regout (tap2_14_), .datain (tap1_14_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_13_ (.regout (tap2_13_), .datain (tap1_13_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_12_ (.regout (tap2_12_), .datain (tap1_12_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_11_ (.regout (tap2_11_), .datain (tap1_11_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_lcell_ff reg_tap2_10_ (.regout (tap2_10_), .datain (tap1_10_), .sdata (
                       1'b0), .clk (clk_int), .ena (1'b1), .aclr (1'b0), .sclr (
                       1'b0), .sload (1'b0)) ;
    cycloneii_io o_data_obuf_9_ (.padio (o_data[9]), .datain (o_data_dup0[9]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_9_.operation_mode = "output";
                 
                 defparam o_data_obuf_9_.output_register_mode = "none";
                 
                 defparam o_data_obuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_9_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_9_.input_register_mode = "none";
    cycloneii_io o_data_obuf_8_ (.padio (o_data[8]), .datain (o_data_dup0[8]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_8_.operation_mode = "output";
                 
                 defparam o_data_obuf_8_.output_register_mode = "none";
                 
                 defparam o_data_obuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_8_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_8_.input_register_mode = "none";
    cycloneii_io o_data_obuf_7_ (.padio (o_data[7]), .datain (o_data_dup0[7]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_7_.operation_mode = "output";
                 
                 defparam o_data_obuf_7_.output_register_mode = "none";
                 
                 defparam o_data_obuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_7_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_7_.input_register_mode = "none";
    cycloneii_io o_data_obuf_6_ (.padio (o_data[6]), .datain (o_data_dup0[6]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_6_.operation_mode = "output";
                 
                 defparam o_data_obuf_6_.output_register_mode = "none";
                 
                 defparam o_data_obuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_6_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_6_.input_register_mode = "none";
    cycloneii_io o_data_obuf_5_ (.padio (o_data[5]), .datain (o_data_dup0[5]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_5_.operation_mode = "output";
                 
                 defparam o_data_obuf_5_.output_register_mode = "none";
                 
                 defparam o_data_obuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_5_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_5_.input_register_mode = "none";
    cycloneii_io o_data_obuf_4_ (.padio (o_data[4]), .datain (o_data_dup0[4]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_4_.operation_mode = "output";
                 
                 defparam o_data_obuf_4_.output_register_mode = "none";
                 
                 defparam o_data_obuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_4_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_4_.input_register_mode = "none";
    cycloneii_io o_data_obuf_3_ (.padio (o_data[3]), .datain (o_data_dup0[3]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_3_.operation_mode = "output";
                 
                 defparam o_data_obuf_3_.output_register_mode = "none";
                 
                 defparam o_data_obuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_3_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_3_.input_register_mode = "none";
    cycloneii_io o_data_obuf_2_ (.padio (o_data[2]), .datain (o_data_dup0[2]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_2_.operation_mode = "output";
                 
                 defparam o_data_obuf_2_.output_register_mode = "none";
                 
                 defparam o_data_obuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_2_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_2_.input_register_mode = "none";
    cycloneii_io o_data_obuf_15_ (.padio (o_data[15]), .datain (o_data_dup0[15])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_15_.operation_mode = "output";
                 
                 defparam o_data_obuf_15_.output_register_mode = "none";
                 
                 defparam o_data_obuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_15_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_15_.input_register_mode = "none";
    cycloneii_io o_data_obuf_14_ (.padio (o_data[14]), .datain (o_data_dup0[14])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_14_.operation_mode = "output";
                 
                 defparam o_data_obuf_14_.output_register_mode = "none";
                 
                 defparam o_data_obuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_14_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_14_.input_register_mode = "none";
    cycloneii_io o_data_obuf_13_ (.padio (o_data[13]), .datain (o_data_dup0[13])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_13_.operation_mode = "output";
                 
                 defparam o_data_obuf_13_.output_register_mode = "none";
                 
                 defparam o_data_obuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_13_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_13_.input_register_mode = "none";
    cycloneii_io o_data_obuf_12_ (.padio (o_data[12]), .datain (o_data_dup0[12])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_12_.operation_mode = "output";
                 
                 defparam o_data_obuf_12_.output_register_mode = "none";
                 
                 defparam o_data_obuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_12_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_12_.input_register_mode = "none";
    cycloneii_io o_data_obuf_11_ (.padio (o_data[11]), .datain (o_data_dup0[11])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_11_.operation_mode = "output";
                 
                 defparam o_data_obuf_11_.output_register_mode = "none";
                 
                 defparam o_data_obuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_11_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_11_.input_register_mode = "none";
    cycloneii_io o_data_obuf_10_ (.padio (o_data[10]), .datain (o_data_dup0[10])
                 , .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0)
                 , .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_10_.operation_mode = "output";
                 
                 defparam o_data_obuf_10_.output_register_mode = "none";
                 
                 defparam o_data_obuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_10_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_10_.input_register_mode = "none";
    cycloneii_io o_data_obuf_1_ (.padio (o_data[1]), .datain (o_data_dup0[1]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_1_.operation_mode = "output";
                 
                 defparam o_data_obuf_1_.output_register_mode = "none";
                 
                 defparam o_data_obuf_1_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_1_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_1_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_1_.input_register_mode = "none";
    cycloneii_io o_data_obuf_0_ (.padio (o_data[0]), .datain (o_data_dup0[0]), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam o_data_obuf_0_.operation_mode = "output";
                 
                 defparam o_data_obuf_0_.output_register_mode = "none";
                 
                 defparam o_data_obuf_0_.tie_off_output_clock_enable = "false";
                 
                 defparam o_data_obuf_0_.oe_register_mode = "none";
                 
                 defparam o_data_obuf_0_.tie_off_oe_clock_enable = "false";
                 
                 defparam o_data_obuf_0_.input_register_mode = "none";
    cycloneii_io i_data_ibuf_9_ (.regout (tap1_9_), .padio (i_data[9]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_9_.operation_mode = "input";
                 
                 defparam i_data_ibuf_9_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_9_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_9_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_9_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_9_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_8_ (.regout (tap1_8_), .padio (i_data[8]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_8_.operation_mode = "input";
                 
                 defparam i_data_ibuf_8_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_8_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_8_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_8_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_8_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_7_ (.regout (tap1_7_), .padio (i_data[7]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_7_.operation_mode = "input";
                 
                 defparam i_data_ibuf_7_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_7_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_7_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_7_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_7_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_6_ (.regout (tap1_6_), .padio (i_data[6]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_6_.operation_mode = "input";
                 
                 defparam i_data_ibuf_6_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_6_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_6_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_6_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_6_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_5_ (.regout (tap1_5_), .padio (i_data[5]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_5_.operation_mode = "input";
                 
                 defparam i_data_ibuf_5_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_5_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_5_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_5_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_5_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_4_ (.regout (tap1_4_), .padio (i_data[4]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_4_.operation_mode = "input";
                 
                 defparam i_data_ibuf_4_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_4_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_4_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_4_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_4_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_3_ (.regout (tap1_3_), .padio (i_data[3]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_3_.operation_mode = "input";
                 
                 defparam i_data_ibuf_3_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_3_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_3_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_3_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_3_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_2_ (.regout (tap1_2_), .padio (i_data[2]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_2_.operation_mode = "input";
                 
                 defparam i_data_ibuf_2_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_2_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_2_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_2_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_2_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_15_ (.regout (tap1_15_), .padio (i_data[15]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_15_.operation_mode = "input";
                 
                 defparam i_data_ibuf_15_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_15_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_15_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_15_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_15_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_14_ (.regout (tap1_14_), .padio (i_data[14]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_14_.operation_mode = "input";
                 
                 defparam i_data_ibuf_14_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_14_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_14_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_14_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_14_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_13_ (.regout (tap1_13_), .padio (i_data[13]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_13_.operation_mode = "input";
                 
                 defparam i_data_ibuf_13_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_13_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_13_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_13_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_13_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_12_ (.regout (tap1_12_), .padio (i_data[12]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_12_.operation_mode = "input";
                 
                 defparam i_data_ibuf_12_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_12_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_12_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_12_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_12_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_11_ (.regout (tap1_11_), .padio (i_data[11]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_11_.operation_mode = "input";
                 
                 defparam i_data_ibuf_11_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_11_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_11_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_11_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_11_.input_register_mode = "register";
    cycloneii_io i_data_ibuf_10_ (.regout (tap1_10_), .padio (i_data[10]), .datain (
                 1'b0), .oe (1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (
                 clk_int), .inclkena (1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam i_data_ibuf_10_.operation_mode = "input";
                 
                 defparam i_data_ibuf_10_.output_register_mode = "none";
                 
                 defparam i_data_ibuf_10_.tie_off_output_clock_enable = "false";
                 
                 defparam i_data_ibuf_10_.oe_register_mode = "none";
                 
                 defparam i_data_ibuf_10_.tie_off_oe_clock_enable = "false";
                 
                 defparam i_data_ibuf_10_.input_register_mode = "register";
    cycloneii_io clk_ibuf (.combout (clk_int), .padio (clk), .datain (1'b0), .oe (
                 1'b1), .outclk (1'b0), .outclkena (1'b1), .inclk (1'b0), .inclkena (
                 1'b1), .areset (1'b0), .sreset (1'b0)) ;
                 
                 defparam clk_ibuf.operation_mode = "input";
                 
                 defparam clk_ibuf.output_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_output_clock_enable = "false";
                 
                 defparam clk_ibuf.oe_register_mode = "none";
                 
                 defparam clk_ibuf.tie_off_oe_clock_enable = "false";
                 
                 defparam clk_ibuf.input_register_mode = "none";
endmodule


module add_15_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [14:0]a ;
    input [14:0]b ;
    output [14:0]d ;
    output cout ;

    wire nx1250z41, nx1250z38, nx1250z35, nx1250z32, nx1250z29, nx1250z26, 
         nx1250z23, nx1250z20, nx1250z17, nx1250z14, nx1250z11, nx1250z8, 
         nx1250z5, nx1250z4, nx_add_15_0_vcc_net;
    wire [16:0] xmplr_dummy ;




    cycloneii_lcell_comb ix1250z52927 (.combout (d[11]), .cout (nx1250z8), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z11)) ;
                         
                         defparam ix1250z52927.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52927.sum_lutc_input = "cin";
    assign nx_add_15_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix1250z52928 (.combout (d[10]), .cout (nx1250z11), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z14)) ;
                         
                         defparam ix1250z52928.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52928.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52929 (.combout (d[9]), .cout (nx1250z14), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z17)) ;
                         
                         defparam ix1250z52929.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52930 (.combout (d[8]), .cout (nx1250z17), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z20)) ;
                         
                         defparam ix1250z52930.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52931 (.combout (d[7]), .cout (nx1250z20), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z23)) ;
                         
                         defparam ix1250z52931.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52932 (.combout (d[6]), .cout (nx1250z23), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z26)) ;
                         
                         defparam ix1250z52932.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52933 (.combout (d[5]), .cout (nx1250z26), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z29)) ;
                         
                         defparam ix1250z52933.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52934 (.combout (d[4]), .cout (nx1250z29), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z32)) ;
                         
                         defparam ix1250z52934.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52935 (.combout (d[3]), .cout (nx1250z32), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z35)) ;
                         
                         defparam ix1250z52935.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52936 (.combout (d[2]), .cout (nx1250z35), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z38)) ;
                         
                         defparam ix1250z52936.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52937 (.combout (d[1]), .cout (nx1250z38), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z41)) ;
                         
                         defparam ix1250z52937.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52938 (.combout (d[0]), .cout (nx1250z41), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix1250z52938.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix1250z52923 (.combout (d[14]), .dataa (b[14]), .datab (
                         a[14]), .datac (1'b1), .datad (nx_add_15_0_vcc_net), .cin (
                         nx1250z4)) ;
                         defparam ix1250z52923.lut_mask = 16'h9600;
                         
                         defparam ix1250z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52925 (.combout (d[13]), .cout (nx1250z4), .dataa (
                         b[14]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z5)) ;
                         
                         defparam ix1250z52925.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix1250z52926 (.combout (d[12]), .cout (nx1250z5), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_15_0_vcc_net), .cin (nx1250z8)) ;
                         
                         defparam ix1250z52926.lut_mask = 16'h96e8;
                         
                         defparam ix1250z52926.sum_lutc_input = "cin";
endmodule


module add_16_1 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z44, nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, 
         nx2247z26, nx2247z23, nx2247z20, nx2247z17, nx2247z14, nx2247z11, 
         nx2247z8, nx2247z6, nx2247z4, nx_add_16_1_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z14), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z17)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    assign nx_add_16_1_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z17), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z20)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z20), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z23)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z23), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z26)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z26), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z29)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z29), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z32)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z32), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z35)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z35), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z38)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z38), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z41)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z41), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z44)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z44), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_1_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[15]), .datab (a[14]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z6)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z6), .dataa (
                         b[15]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z8)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z8), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z11)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z11), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_1_vcc_net), .cin (nx2247z14)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
endmodule


module add_16_0 ( cin, a, b, d, cout ) ;

    input cin ;
    input [15:0]a ;
    input [15:0]b ;
    output [15:0]d ;
    output cout ;

    wire nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, nx2247z28, 
         nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, nx2247z10, 
         nx2247z7, nx2247z5, nx2247z4, nx_add_16_0_vcc_net;
    wire [17:0] xmplr_dummy ;




    cycloneii_lcell_comb ix2247z52928 (.combout (d[11]), .cout (nx2247z10), .dataa (
                         b[11]), .datab (a[11]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z13)) ;
                         
                         defparam ix2247z52928.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52928.sum_lutc_input = "cin";
    assign nx_add_16_0_vcc_net = 1 ;
    cycloneii_lcell_comb ix2247z52929 (.combout (d[10]), .cout (nx2247z13), .dataa (
                         b[10]), .datab (a[10]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z16)) ;
                         
                         defparam ix2247z52929.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52929.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52930 (.combout (d[9]), .cout (nx2247z16), .dataa (
                         b[9]), .datab (a[9]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z19)) ;
                         
                         defparam ix2247z52930.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52930.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52931 (.combout (d[8]), .cout (nx2247z19), .dataa (
                         b[8]), .datab (a[8]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z22)) ;
                         
                         defparam ix2247z52931.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52931.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52932 (.combout (d[7]), .cout (nx2247z22), .dataa (
                         b[7]), .datab (a[7]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z25)) ;
                         
                         defparam ix2247z52932.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52932.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52933 (.combout (d[6]), .cout (nx2247z25), .dataa (
                         b[6]), .datab (a[6]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z28)) ;
                         
                         defparam ix2247z52933.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52933.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52934 (.combout (d[5]), .cout (nx2247z28), .dataa (
                         b[5]), .datab (a[5]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z31)) ;
                         
                         defparam ix2247z52934.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52934.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52935 (.combout (d[4]), .cout (nx2247z31), .dataa (
                         b[4]), .datab (a[4]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z34)) ;
                         
                         defparam ix2247z52935.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52935.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52936 (.combout (d[3]), .cout (nx2247z34), .dataa (
                         b[3]), .datab (a[3]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z37)) ;
                         
                         defparam ix2247z52936.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52936.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52937 (.combout (d[2]), .cout (nx2247z37), .dataa (
                         b[2]), .datab (a[2]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z40)) ;
                         
                         defparam ix2247z52937.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52937.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52938 (.combout (d[1]), .cout (nx2247z40), .dataa (
                         b[1]), .datab (a[1]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z43)) ;
                         
                         defparam ix2247z52938.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52938.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52939 (.combout (d[0]), .cout (nx2247z43), .dataa (
                         a[0]), .datab (b[0]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (1'b0)) ;
                         
                         defparam ix2247z52939.lut_mask = 16'h6688;
    cycloneii_lcell_comb ix2247z52923 (.combout (d[15]), .dataa (b[15]), .datab (
                         a[15]), .datac (1'b1), .datad (nx_add_16_0_vcc_net), .cin (
                         nx2247z4)) ;
                         defparam ix2247z52923.lut_mask = 16'h9600;
                         
                         defparam ix2247z52923.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52925 (.combout (d[14]), .cout (nx2247z4), .dataa (
                         b[15]), .datab (a[15]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z5)) ;
                         
                         defparam ix2247z52925.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52925.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52926 (.combout (d[13]), .cout (nx2247z5), .dataa (
                         b[15]), .datab (a[13]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z7)) ;
                         
                         defparam ix2247z52926.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52926.sum_lutc_input = "cin";
    cycloneii_lcell_comb ix2247z52927 (.combout (d[12]), .cout (nx2247z7), .dataa (
                         b[12]), .datab (a[12]), .datac (1'b1), .datad (
                         nx_add_16_0_vcc_net), .cin (nx2247z10)) ;
                         
                         defparam ix2247z52927.lut_mask = 16'h96e8;
                         
                         defparam ix2247z52927.sum_lutc_input = "cin";
endmodule

