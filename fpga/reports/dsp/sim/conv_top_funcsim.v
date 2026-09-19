// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Sep 19 21:33:34 2026
// Host        : Eng_Ahmed running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Digital_IC_Design/SSCS_Design_Competition/fpga/reports/dsp/sim/conv_top_funcsim.v
// Design      : conv_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder_tree
   (rounded_q1,
    Q,
    O,
    S,
    \acc_reg[6]_0 ,
    rst_n,
    \prod[6] ,
    p_0_out__5,
    P,
    \p8_a1_reg[16]_i_2 ,
    p_0_out__6,
    shift_en,
    clk,
    \prod[4] ,
    p_0_out__3,
    p_0_out__3_0,
    p_0_out__4,
    D,
    rst_n_0,
    \prod[2] ,
    p_0_out__1,
    p_0_out__1_0,
    p_0_out__2,
    \prod[0] ,
    p_0_out,
    p_0_out_0,
    p_0_out__0,
    rst_n_1);
  output [18:0]rounded_q1;
  output [6:0]Q;
  output [0:0]O;
  input [3:0]S;
  input [2:0]\acc_reg[6]_0 ;
  input rst_n;
  input [15:0]\prod[6] ;
  input [0:0]p_0_out__5;
  input [16:0]P;
  input \p8_a1_reg[16]_i_2 ;
  input [15:0]p_0_out__6;
  input shift_en;
  input clk;
  input [15:0]\prod[4] ;
  input [0:0]p_0_out__3;
  input [16:0]p_0_out__3_0;
  input [15:0]p_0_out__4;
  input [16:0]D;
  input rst_n_0;
  input [15:0]\prod[2] ;
  input [0:0]p_0_out__1;
  input [16:0]p_0_out__1_0;
  input [15:0]p_0_out__2;
  input [15:0]\prod[0] ;
  input [0:0]p_0_out;
  input [16:0]p_0_out_0;
  input [15:0]p_0_out__0;
  input rst_n_1;

  wire [16:0]D;
  wire [0:0]O;
  wire [16:0]P;
  wire [6:0]Q;
  wire [3:0]S;
  wire [19:7]acc;
  wire \acc[11]_i_2_n_0 ;
  wire \acc[11]_i_3_n_0 ;
  wire \acc[11]_i_4_n_0 ;
  wire \acc[11]_i_5_n_0 ;
  wire \acc[11]_i_6_n_0 ;
  wire \acc[11]_i_7_n_0 ;
  wire \acc[11]_i_8_n_0 ;
  wire \acc[11]_i_9_n_0 ;
  wire \acc[15]_i_2_n_0 ;
  wire \acc[15]_i_3_n_0 ;
  wire \acc[15]_i_4_n_0 ;
  wire \acc[15]_i_5_n_0 ;
  wire \acc[15]_i_6_n_0 ;
  wire \acc[15]_i_7_n_0 ;
  wire \acc[15]_i_8_n_0 ;
  wire \acc[15]_i_9_n_0 ;
  wire \acc[19]_i_2_n_0 ;
  wire \acc[19]_i_3_n_0 ;
  wire \acc[19]_i_4_n_0 ;
  wire \acc[19]_i_5_n_0 ;
  wire \acc[19]_i_6_n_0 ;
  wire \acc[19]_i_7_n_0 ;
  wire \acc[19]_i_8_n_0 ;
  wire \acc[3]_i_2_n_0 ;
  wire \acc[3]_i_3_n_0 ;
  wire \acc[3]_i_4_n_0 ;
  wire \acc[3]_i_5_n_0 ;
  wire \acc[3]_i_6_n_0 ;
  wire \acc[3]_i_7_n_0 ;
  wire \acc[3]_i_8_n_0 ;
  wire \acc[7]_i_2_n_0 ;
  wire \acc[7]_i_3_n_0 ;
  wire \acc[7]_i_4_n_0 ;
  wire \acc[7]_i_5_n_0 ;
  wire \acc[7]_i_6_n_0 ;
  wire \acc[7]_i_7_n_0 ;
  wire \acc[7]_i_8_n_0 ;
  wire \acc[7]_i_9_n_0 ;
  wire \acc_reg[11]_i_1_n_0 ;
  wire \acc_reg[11]_i_1_n_4 ;
  wire \acc_reg[11]_i_1_n_5 ;
  wire \acc_reg[11]_i_1_n_6 ;
  wire \acc_reg[11]_i_1_n_7 ;
  wire \acc_reg[15]_i_1_n_0 ;
  wire \acc_reg[15]_i_1_n_4 ;
  wire \acc_reg[15]_i_1_n_5 ;
  wire \acc_reg[15]_i_1_n_6 ;
  wire \acc_reg[15]_i_1_n_7 ;
  wire \acc_reg[19]_i_1_n_4 ;
  wire \acc_reg[19]_i_1_n_5 ;
  wire \acc_reg[19]_i_1_n_6 ;
  wire \acc_reg[19]_i_1_n_7 ;
  wire \acc_reg[3]_i_1_n_0 ;
  wire \acc_reg[3]_i_1_n_4 ;
  wire \acc_reg[3]_i_1_n_5 ;
  wire \acc_reg[3]_i_1_n_6 ;
  wire \acc_reg[3]_i_1_n_7 ;
  wire [2:0]\acc_reg[6]_0 ;
  wire \acc_reg[7]_i_1_n_0 ;
  wire \acc_reg[7]_i_1_n_4 ;
  wire \acc_reg[7]_i_1_n_5 ;
  wire \acc_reg[7]_i_1_n_6 ;
  wire \acc_reg[7]_i_1_n_7 ;
  wire clk;
  wire [16:0]p8_a1;
  wire \p8_a1_reg[16]_i_2 ;
  wire [16:0]p8_a2;
  wire [17:0]p_0_in;
  wire [0:0]p_0_out;
  wire [16:0]p_0_out_0;
  wire [15:0]p_0_out__0;
  wire [0:0]p_0_out__1;
  wire [16:0]p_0_out__1_0;
  wire [15:0]p_0_out__2;
  wire [0:0]p_0_out__3;
  wire [16:0]p_0_out__3_0;
  wire [15:0]p_0_out__4;
  wire [0:0]p_0_out__5;
  wire [15:0]p_0_out__6;
  wire [15:0]\prod[0] ;
  wire [15:0]\prod[2] ;
  wire [15:0]\prod[4] ;
  wire [15:0]\prod[6] ;
  wire [18:0]rounded_q1;
  wire \rounded_q_reg[19]_i_2_n_0 ;
  wire \rounded_q_reg[19]_i_3_n_0 ;
  wire \rounded_q_reg[3]_i_3_n_0 ;
  wire \rounded_q_reg[7]_i_3_n_0 ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire \s1[0][11]_i_6_n_0 ;
  wire \s1[0][11]_i_7_n_0 ;
  wire \s1[0][11]_i_8_n_0 ;
  wire \s1[0][11]_i_9_n_0 ;
  wire \s1[0][15]_i_6_n_0 ;
  wire \s1[0][15]_i_7_n_0 ;
  wire \s1[0][15]_i_8_n_0 ;
  wire \s1[0][15]_i_9_n_0 ;
  wire \s1[0][17]_i_2_n_0 ;
  wire \s1[0][3]_i_6_n_0 ;
  wire \s1[0][3]_i_7_n_0 ;
  wire \s1[0][3]_i_8_n_0 ;
  wire \s1[0][3]_i_9_n_0 ;
  wire \s1[0][7]_i_6_n_0 ;
  wire \s1[0][7]_i_7_n_0 ;
  wire \s1[0][7]_i_8_n_0 ;
  wire \s1[0][7]_i_9_n_0 ;
  wire \s1[1][11]_i_6_n_0 ;
  wire \s1[1][11]_i_7_n_0 ;
  wire \s1[1][11]_i_8_n_0 ;
  wire \s1[1][11]_i_9_n_0 ;
  wire \s1[1][15]_i_6_n_0 ;
  wire \s1[1][15]_i_7_n_0 ;
  wire \s1[1][15]_i_8_n_0 ;
  wire \s1[1][15]_i_9_n_0 ;
  wire \s1[1][17]_i_2_n_0 ;
  wire \s1[1][3]_i_6_n_0 ;
  wire \s1[1][3]_i_7_n_0 ;
  wire \s1[1][3]_i_8_n_0 ;
  wire \s1[1][3]_i_9_n_0 ;
  wire \s1[1][7]_i_6_n_0 ;
  wire \s1[1][7]_i_7_n_0 ;
  wire \s1[1][7]_i_8_n_0 ;
  wire \s1[1][7]_i_9_n_0 ;
  wire \s1[2][11]_i_6_n_0 ;
  wire \s1[2][11]_i_7_n_0 ;
  wire \s1[2][11]_i_8_n_0 ;
  wire \s1[2][11]_i_9_n_0 ;
  wire \s1[2][15]_i_6_n_0 ;
  wire \s1[2][15]_i_7_n_0 ;
  wire \s1[2][15]_i_8_n_0 ;
  wire \s1[2][15]_i_9_n_0 ;
  wire \s1[2][17]_i_2_n_0 ;
  wire \s1[2][3]_i_6_n_0 ;
  wire \s1[2][3]_i_7_n_0 ;
  wire \s1[2][3]_i_8_n_0 ;
  wire \s1[2][3]_i_9_n_0 ;
  wire \s1[2][7]_i_6_n_0 ;
  wire \s1[2][7]_i_7_n_0 ;
  wire \s1[2][7]_i_8_n_0 ;
  wire \s1[2][7]_i_9_n_0 ;
  wire \s1[3][11]_i_6_n_0 ;
  wire \s1[3][11]_i_7_n_0 ;
  wire \s1[3][11]_i_8_n_0 ;
  wire \s1[3][11]_i_9_n_0 ;
  wire \s1[3][15]_i_6_n_0 ;
  wire \s1[3][15]_i_7_n_0 ;
  wire \s1[3][15]_i_8_n_0 ;
  wire \s1[3][15]_i_9_n_0 ;
  wire \s1[3][17]_i_2_n_0 ;
  wire \s1[3][17]_i_3_n_0 ;
  wire \s1[3][3]_i_6_n_0 ;
  wire \s1[3][3]_i_7_n_0 ;
  wire \s1[3][3]_i_8_n_0 ;
  wire \s1[3][3]_i_9_n_0 ;
  wire \s1[3][7]_i_6_n_0 ;
  wire \s1[3][7]_i_7_n_0 ;
  wire \s1[3][7]_i_8_n_0 ;
  wire \s1[3][7]_i_9_n_0 ;
  wire \s1_reg[0][11]_i_1_n_0 ;
  wire \s1_reg[0][11]_i_1_n_4 ;
  wire \s1_reg[0][11]_i_1_n_5 ;
  wire \s1_reg[0][11]_i_1_n_6 ;
  wire \s1_reg[0][11]_i_1_n_7 ;
  wire \s1_reg[0][15]_i_1_n_0 ;
  wire \s1_reg[0][15]_i_1_n_4 ;
  wire \s1_reg[0][15]_i_1_n_5 ;
  wire \s1_reg[0][15]_i_1_n_6 ;
  wire \s1_reg[0][15]_i_1_n_7 ;
  wire \s1_reg[0][17]_i_1_n_6 ;
  wire \s1_reg[0][17]_i_1_n_7 ;
  wire \s1_reg[0][3]_i_1_n_0 ;
  wire \s1_reg[0][3]_i_1_n_4 ;
  wire \s1_reg[0][3]_i_1_n_5 ;
  wire \s1_reg[0][3]_i_1_n_6 ;
  wire \s1_reg[0][3]_i_1_n_7 ;
  wire \s1_reg[0][7]_i_1_n_0 ;
  wire \s1_reg[0][7]_i_1_n_4 ;
  wire \s1_reg[0][7]_i_1_n_5 ;
  wire \s1_reg[0][7]_i_1_n_6 ;
  wire \s1_reg[0][7]_i_1_n_7 ;
  wire [17:0]\s1_reg[0]_4 ;
  wire \s1_reg[1][11]_i_1_n_0 ;
  wire \s1_reg[1][11]_i_1_n_4 ;
  wire \s1_reg[1][11]_i_1_n_5 ;
  wire \s1_reg[1][11]_i_1_n_6 ;
  wire \s1_reg[1][11]_i_1_n_7 ;
  wire \s1_reg[1][15]_i_1_n_0 ;
  wire \s1_reg[1][15]_i_1_n_4 ;
  wire \s1_reg[1][15]_i_1_n_5 ;
  wire \s1_reg[1][15]_i_1_n_6 ;
  wire \s1_reg[1][15]_i_1_n_7 ;
  wire \s1_reg[1][17]_i_1_n_6 ;
  wire \s1_reg[1][17]_i_1_n_7 ;
  wire \s1_reg[1][3]_i_1_n_0 ;
  wire \s1_reg[1][3]_i_1_n_4 ;
  wire \s1_reg[1][3]_i_1_n_5 ;
  wire \s1_reg[1][3]_i_1_n_6 ;
  wire \s1_reg[1][3]_i_1_n_7 ;
  wire \s1_reg[1][7]_i_1_n_0 ;
  wire \s1_reg[1][7]_i_1_n_4 ;
  wire \s1_reg[1][7]_i_1_n_5 ;
  wire \s1_reg[1][7]_i_1_n_6 ;
  wire \s1_reg[1][7]_i_1_n_7 ;
  wire [17:0]\s1_reg[1]_3 ;
  wire \s1_reg[2][11]_i_1_n_0 ;
  wire \s1_reg[2][11]_i_1_n_4 ;
  wire \s1_reg[2][11]_i_1_n_5 ;
  wire \s1_reg[2][11]_i_1_n_6 ;
  wire \s1_reg[2][11]_i_1_n_7 ;
  wire \s1_reg[2][15]_i_1_n_0 ;
  wire \s1_reg[2][15]_i_1_n_4 ;
  wire \s1_reg[2][15]_i_1_n_5 ;
  wire \s1_reg[2][15]_i_1_n_6 ;
  wire \s1_reg[2][15]_i_1_n_7 ;
  wire \s1_reg[2][17]_i_1_n_6 ;
  wire \s1_reg[2][17]_i_1_n_7 ;
  wire \s1_reg[2][3]_i_1_n_0 ;
  wire \s1_reg[2][3]_i_1_n_4 ;
  wire \s1_reg[2][3]_i_1_n_5 ;
  wire \s1_reg[2][3]_i_1_n_6 ;
  wire \s1_reg[2][3]_i_1_n_7 ;
  wire \s1_reg[2][7]_i_1_n_0 ;
  wire \s1_reg[2][7]_i_1_n_4 ;
  wire \s1_reg[2][7]_i_1_n_5 ;
  wire \s1_reg[2][7]_i_1_n_6 ;
  wire \s1_reg[2][7]_i_1_n_7 ;
  wire [17:0]\s1_reg[2]_1 ;
  wire \s1_reg[3][11]_i_1_n_0 ;
  wire \s1_reg[3][15]_i_1_n_0 ;
  wire \s1_reg[3][3]_i_1_n_0 ;
  wire \s1_reg[3][7]_i_1_n_0 ;
  wire [17:0]\s1_reg[3]_0 ;
  wire \s2[0][11]_i_2_n_0 ;
  wire \s2[0][11]_i_3_n_0 ;
  wire \s2[0][11]_i_4_n_0 ;
  wire \s2[0][11]_i_5_n_0 ;
  wire \s2[0][15]_i_2_n_0 ;
  wire \s2[0][15]_i_3_n_0 ;
  wire \s2[0][15]_i_4_n_0 ;
  wire \s2[0][15]_i_5_n_0 ;
  wire \s2[0][18]_i_2_n_0 ;
  wire \s2[0][18]_i_3_n_0 ;
  wire \s2[0][18]_i_4_n_0 ;
  wire \s2[0][3]_i_2_n_0 ;
  wire \s2[0][3]_i_3_n_0 ;
  wire \s2[0][3]_i_4_n_0 ;
  wire \s2[0][3]_i_5_n_0 ;
  wire \s2[0][7]_i_2_n_0 ;
  wire \s2[0][7]_i_3_n_0 ;
  wire \s2[0][7]_i_4_n_0 ;
  wire \s2[0][7]_i_5_n_0 ;
  wire \s2[1][11]_i_2_n_0 ;
  wire \s2[1][11]_i_3_n_0 ;
  wire \s2[1][11]_i_4_n_0 ;
  wire \s2[1][11]_i_5_n_0 ;
  wire \s2[1][15]_i_2_n_0 ;
  wire \s2[1][15]_i_3_n_0 ;
  wire \s2[1][15]_i_4_n_0 ;
  wire \s2[1][15]_i_5_n_0 ;
  wire \s2[1][18]_i_2_n_0 ;
  wire \s2[1][18]_i_3_n_0 ;
  wire \s2[1][18]_i_4_n_0 ;
  wire \s2[1][3]_i_2_n_0 ;
  wire \s2[1][3]_i_3_n_0 ;
  wire \s2[1][3]_i_4_n_0 ;
  wire \s2[1][3]_i_5_n_0 ;
  wire \s2[1][7]_i_2_n_0 ;
  wire \s2[1][7]_i_3_n_0 ;
  wire \s2[1][7]_i_4_n_0 ;
  wire \s2[1][7]_i_5_n_0 ;
  wire \s2_reg[0][11]_i_1_n_0 ;
  wire \s2_reg[0][11]_i_1_n_4 ;
  wire \s2_reg[0][11]_i_1_n_5 ;
  wire \s2_reg[0][11]_i_1_n_6 ;
  wire \s2_reg[0][11]_i_1_n_7 ;
  wire \s2_reg[0][15]_i_1_n_0 ;
  wire \s2_reg[0][15]_i_1_n_4 ;
  wire \s2_reg[0][15]_i_1_n_5 ;
  wire \s2_reg[0][15]_i_1_n_6 ;
  wire \s2_reg[0][15]_i_1_n_7 ;
  wire \s2_reg[0][18]_i_1_n_5 ;
  wire \s2_reg[0][18]_i_1_n_6 ;
  wire \s2_reg[0][18]_i_1_n_7 ;
  wire \s2_reg[0][3]_i_1_n_0 ;
  wire \s2_reg[0][3]_i_1_n_4 ;
  wire \s2_reg[0][3]_i_1_n_5 ;
  wire \s2_reg[0][3]_i_1_n_6 ;
  wire \s2_reg[0][3]_i_1_n_7 ;
  wire \s2_reg[0][7]_i_1_n_0 ;
  wire \s2_reg[0][7]_i_1_n_4 ;
  wire \s2_reg[0][7]_i_1_n_5 ;
  wire \s2_reg[0][7]_i_1_n_6 ;
  wire \s2_reg[0][7]_i_1_n_7 ;
  wire [18:0]\s2_reg[0]_5 ;
  wire \s2_reg[1][11]_i_1_n_0 ;
  wire \s2_reg[1][11]_i_1_n_4 ;
  wire \s2_reg[1][11]_i_1_n_5 ;
  wire \s2_reg[1][11]_i_1_n_6 ;
  wire \s2_reg[1][11]_i_1_n_7 ;
  wire \s2_reg[1][15]_i_1_n_0 ;
  wire \s2_reg[1][15]_i_1_n_4 ;
  wire \s2_reg[1][15]_i_1_n_5 ;
  wire \s2_reg[1][15]_i_1_n_6 ;
  wire \s2_reg[1][15]_i_1_n_7 ;
  wire \s2_reg[1][18]_i_1_n_5 ;
  wire \s2_reg[1][18]_i_1_n_6 ;
  wire \s2_reg[1][18]_i_1_n_7 ;
  wire \s2_reg[1][3]_i_1_n_0 ;
  wire \s2_reg[1][3]_i_1_n_4 ;
  wire \s2_reg[1][3]_i_1_n_5 ;
  wire \s2_reg[1][3]_i_1_n_6 ;
  wire \s2_reg[1][3]_i_1_n_7 ;
  wire \s2_reg[1][7]_i_1_n_0 ;
  wire \s2_reg[1][7]_i_1_n_4 ;
  wire \s2_reg[1][7]_i_1_n_5 ;
  wire \s2_reg[1][7]_i_1_n_6 ;
  wire \s2_reg[1][7]_i_1_n_7 ;
  wire [18:0]\s2_reg[1]_2 ;
  wire shift_en;
  wire [2:0]\NLW_acc_reg[11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_acc_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_acc_reg[7]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_rounded_q_reg[19]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_rounded_q_reg[19]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_rounded_q_reg[19]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_rounded_q_reg[3]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_rounded_q_reg[7]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[0][11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[0][15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_s1_reg[0][17]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s1_reg[0][17]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[0][3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[0][7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[1][11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[1][15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_s1_reg[1][17]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s1_reg[1][17]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[1][3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[1][7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[2][11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[2][15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_s1_reg[2][17]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s1_reg[2][17]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[2][3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[2][7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[3][11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[3][15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_s1_reg[3][17]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_s1_reg[3][17]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[3][3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s1_reg[3][7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[0][11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[0][15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_s2_reg[0][18]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_s2_reg[0][18]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[0][3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[0][7]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[1][11]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[1][15]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_s2_reg[1][18]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_s2_reg[1][18]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[1][3]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_s2_reg[1][7]_i_1_CO_UNCONNECTED ;

  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_2 
       (.I0(\s2_reg[1]_2 [10]),
        .I1(p8_a2[10]),
        .I2(\s2_reg[0]_5 [10]),
        .O(\acc[11]_i_2_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_3 
       (.I0(\s2_reg[1]_2 [9]),
        .I1(p8_a2[9]),
        .I2(\s2_reg[0]_5 [9]),
        .O(\acc[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_4 
       (.I0(\s2_reg[1]_2 [8]),
        .I1(p8_a2[8]),
        .I2(\s2_reg[0]_5 [8]),
        .O(\acc[11]_i_4_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_5 
       (.I0(\s2_reg[1]_2 [7]),
        .I1(p8_a2[7]),
        .I2(\s2_reg[0]_5 [7]),
        .O(\acc[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_6 
       (.I0(\s2_reg[1]_2 [11]),
        .I1(p8_a2[11]),
        .I2(\s2_reg[0]_5 [11]),
        .I3(\acc[11]_i_2_n_0 ),
        .O(\acc[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_7 
       (.I0(\s2_reg[1]_2 [10]),
        .I1(p8_a2[10]),
        .I2(\s2_reg[0]_5 [10]),
        .I3(\acc[11]_i_3_n_0 ),
        .O(\acc[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_8 
       (.I0(\s2_reg[1]_2 [9]),
        .I1(p8_a2[9]),
        .I2(\s2_reg[0]_5 [9]),
        .I3(\acc[11]_i_4_n_0 ),
        .O(\acc[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_9 
       (.I0(\s2_reg[1]_2 [8]),
        .I1(p8_a2[8]),
        .I2(\s2_reg[0]_5 [8]),
        .I3(\acc[11]_i_5_n_0 ),
        .O(\acc[11]_i_9_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_2 
       (.I0(\s2_reg[1]_2 [14]),
        .I1(p8_a2[14]),
        .I2(\s2_reg[0]_5 [14]),
        .O(\acc[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_3 
       (.I0(\s2_reg[1]_2 [13]),
        .I1(p8_a2[13]),
        .I2(\s2_reg[0]_5 [13]),
        .O(\acc[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_4 
       (.I0(\s2_reg[1]_2 [12]),
        .I1(p8_a2[12]),
        .I2(\s2_reg[0]_5 [12]),
        .O(\acc[15]_i_4_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_5 
       (.I0(\s2_reg[1]_2 [11]),
        .I1(p8_a2[11]),
        .I2(\s2_reg[0]_5 [11]),
        .O(\acc[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_6 
       (.I0(\acc[15]_i_2_n_0 ),
        .I1(p8_a2[15]),
        .I2(\s2_reg[1]_2 [15]),
        .I3(\s2_reg[0]_5 [15]),
        .O(\acc[15]_i_6_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_7 
       (.I0(\s2_reg[1]_2 [14]),
        .I1(p8_a2[14]),
        .I2(\s2_reg[0]_5 [14]),
        .I3(\acc[15]_i_3_n_0 ),
        .O(\acc[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_8 
       (.I0(\s2_reg[1]_2 [13]),
        .I1(p8_a2[13]),
        .I2(\s2_reg[0]_5 [13]),
        .I3(\acc[15]_i_4_n_0 ),
        .O(\acc[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_9 
       (.I0(\s2_reg[1]_2 [12]),
        .I1(p8_a2[12]),
        .I2(\s2_reg[0]_5 [12]),
        .I3(\acc[15]_i_5_n_0 ),
        .O(\acc[15]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hD00D)) 
    \acc[19]_i_2 
       (.I0(p8_a2[16]),
        .I1(\s2_reg[1]_2 [16]),
        .I2(\s2_reg[1]_2 [17]),
        .I3(\s2_reg[0]_5 [17]),
        .O(\acc[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \acc[19]_i_3 
       (.I0(\s2_reg[0]_5 [16]),
        .I1(\s2_reg[1]_2 [16]),
        .I2(p8_a2[16]),
        .O(\acc[19]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \acc[19]_i_4 
       (.I0(\s2_reg[1]_2 [16]),
        .I1(p8_a2[16]),
        .I2(\s2_reg[0]_5 [16]),
        .O(\acc[19]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hEFF1)) 
    \acc[19]_i_5 
       (.I0(\s2_reg[0]_5 [17]),
        .I1(\s2_reg[1]_2 [17]),
        .I2(\s2_reg[1]_2 [18]),
        .I3(\s2_reg[0]_5 [18]),
        .O(\acc[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hB44B0FF00FF04BB4)) 
    \acc[19]_i_6 
       (.I0(\s2_reg[1]_2 [16]),
        .I1(p8_a2[16]),
        .I2(\s2_reg[0]_5 [18]),
        .I3(\s2_reg[1]_2 [18]),
        .I4(\s2_reg[0]_5 [17]),
        .I5(\s2_reg[1]_2 [17]),
        .O(\acc[19]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h3C69963C)) 
    \acc[19]_i_7 
       (.I0(\s2_reg[0]_5 [16]),
        .I1(\s2_reg[0]_5 [17]),
        .I2(\s2_reg[1]_2 [17]),
        .I3(\s2_reg[1]_2 [16]),
        .I4(p8_a2[16]),
        .O(\acc[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969699669969696)) 
    \acc[19]_i_8 
       (.I0(\s2_reg[0]_5 [16]),
        .I1(p8_a2[16]),
        .I2(\s2_reg[1]_2 [16]),
        .I3(\s2_reg[0]_5 [15]),
        .I4(p8_a2[15]),
        .I5(\s2_reg[1]_2 [15]),
        .O(\acc[19]_i_8_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[3]_i_2 
       (.I0(\s2_reg[1]_2 [2]),
        .I1(p8_a2[2]),
        .I2(\s2_reg[0]_5 [2]),
        .O(\acc[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[3]_i_3 
       (.I0(\s2_reg[1]_2 [1]),
        .I1(p8_a2[1]),
        .I2(\s2_reg[0]_5 [1]),
        .O(\acc[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[3]_i_4 
       (.I0(\s2_reg[1]_2 [0]),
        .I1(p8_a2[0]),
        .I2(\s2_reg[0]_5 [0]),
        .O(\acc[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[3]_i_5 
       (.I0(\s2_reg[1]_2 [3]),
        .I1(p8_a2[3]),
        .I2(\s2_reg[0]_5 [3]),
        .I3(\acc[3]_i_2_n_0 ),
        .O(\acc[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[3]_i_6 
       (.I0(\s2_reg[1]_2 [2]),
        .I1(p8_a2[2]),
        .I2(\s2_reg[0]_5 [2]),
        .I3(\acc[3]_i_3_n_0 ),
        .O(\acc[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[3]_i_7 
       (.I0(\s2_reg[1]_2 [1]),
        .I1(p8_a2[1]),
        .I2(\s2_reg[0]_5 [1]),
        .I3(\acc[3]_i_4_n_0 ),
        .O(\acc[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \acc[3]_i_8 
       (.I0(\s2_reg[1]_2 [0]),
        .I1(p8_a2[0]),
        .I2(\s2_reg[0]_5 [0]),
        .O(\acc[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_2 
       (.I0(\s2_reg[1]_2 [6]),
        .I1(p8_a2[6]),
        .I2(\s2_reg[0]_5 [6]),
        .O(\acc[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_3 
       (.I0(\s2_reg[1]_2 [5]),
        .I1(p8_a2[5]),
        .I2(\s2_reg[0]_5 [5]),
        .O(\acc[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_4 
       (.I0(\s2_reg[1]_2 [4]),
        .I1(p8_a2[4]),
        .I2(\s2_reg[0]_5 [4]),
        .O(\acc[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_5 
       (.I0(\s2_reg[1]_2 [3]),
        .I1(p8_a2[3]),
        .I2(\s2_reg[0]_5 [3]),
        .O(\acc[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_6 
       (.I0(\s2_reg[1]_2 [7]),
        .I1(p8_a2[7]),
        .I2(\s2_reg[0]_5 [7]),
        .I3(\acc[7]_i_2_n_0 ),
        .O(\acc[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_7 
       (.I0(\s2_reg[1]_2 [6]),
        .I1(p8_a2[6]),
        .I2(\s2_reg[0]_5 [6]),
        .I3(\acc[7]_i_3_n_0 ),
        .O(\acc[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_8 
       (.I0(\s2_reg[1]_2 [5]),
        .I1(p8_a2[5]),
        .I2(\s2_reg[0]_5 [5]),
        .I3(\acc[7]_i_4_n_0 ),
        .O(\acc[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_9 
       (.I0(\s2_reg[1]_2 [4]),
        .I1(p8_a2[4]),
        .I2(\s2_reg[0]_5 [4]),
        .I3(\acc[7]_i_5_n_0 ),
        .O(\acc[7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[3]_i_1_n_7 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[11]_i_1_n_5 ),
        .Q(acc[10]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[11]_i_1_n_4 ),
        .Q(acc[11]));
  CARRY4 \acc_reg[11]_i_1 
       (.CI(\acc_reg[7]_i_1_n_0 ),
        .CO({\acc_reg[11]_i_1_n_0 ,\NLW_acc_reg[11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[11]_i_2_n_0 ,\acc[11]_i_3_n_0 ,\acc[11]_i_4_n_0 ,\acc[11]_i_5_n_0 }),
        .O({\acc_reg[11]_i_1_n_4 ,\acc_reg[11]_i_1_n_5 ,\acc_reg[11]_i_1_n_6 ,\acc_reg[11]_i_1_n_7 }),
        .S({\acc[11]_i_6_n_0 ,\acc[11]_i_7_n_0 ,\acc[11]_i_8_n_0 ,\acc[11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[15]_i_1_n_7 ),
        .Q(acc[12]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[15]_i_1_n_6 ),
        .Q(acc[13]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[15]_i_1_n_5 ),
        .Q(acc[14]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[15]_i_1_n_4 ),
        .Q(acc[15]));
  CARRY4 \acc_reg[15]_i_1 
       (.CI(\acc_reg[11]_i_1_n_0 ),
        .CO({\acc_reg[15]_i_1_n_0 ,\NLW_acc_reg[15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[15]_i_2_n_0 ,\acc[15]_i_3_n_0 ,\acc[15]_i_4_n_0 ,\acc[15]_i_5_n_0 }),
        .O({\acc_reg[15]_i_1_n_4 ,\acc_reg[15]_i_1_n_5 ,\acc_reg[15]_i_1_n_6 ,\acc_reg[15]_i_1_n_7 }),
        .S({\acc[15]_i_6_n_0 ,\acc[15]_i_7_n_0 ,\acc[15]_i_8_n_0 ,\acc[15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[19]_i_1_n_7 ),
        .Q(acc[16]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[19]_i_1_n_6 ),
        .Q(acc[17]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[19]_i_1_n_5 ),
        .Q(acc[18]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[19] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[19]_i_1_n_4 ),
        .Q(acc[19]));
  CARRY4 \acc_reg[19]_i_1 
       (.CI(\acc_reg[15]_i_1_n_0 ),
        .CO(\NLW_acc_reg[19]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,\acc[19]_i_2_n_0 ,\acc[19]_i_3_n_0 ,\acc[19]_i_4_n_0 }),
        .O({\acc_reg[19]_i_1_n_4 ,\acc_reg[19]_i_1_n_5 ,\acc_reg[19]_i_1_n_6 ,\acc_reg[19]_i_1_n_7 }),
        .S({\acc[19]_i_5_n_0 ,\acc[19]_i_6_n_0 ,\acc[19]_i_7_n_0 ,\acc[19]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[3]_i_1_n_6 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[3]_i_1_n_5 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[3]_i_1_n_4 ),
        .Q(Q[3]));
  CARRY4 \acc_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\acc_reg[3]_i_1_n_0 ,\NLW_acc_reg[3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[3]_i_2_n_0 ,\acc[3]_i_3_n_0 ,\acc[3]_i_4_n_0 ,1'b0}),
        .O({\acc_reg[3]_i_1_n_4 ,\acc_reg[3]_i_1_n_5 ,\acc_reg[3]_i_1_n_6 ,\acc_reg[3]_i_1_n_7 }),
        .S({\acc[3]_i_5_n_0 ,\acc[3]_i_6_n_0 ,\acc[3]_i_7_n_0 ,\acc[3]_i_8_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[7]_i_1_n_7 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[7]_i_1_n_6 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[7]_i_1_n_5 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[7]_i_1_n_4 ),
        .Q(acc[7]));
  CARRY4 \acc_reg[7]_i_1 
       (.CI(\acc_reg[3]_i_1_n_0 ),
        .CO({\acc_reg[7]_i_1_n_0 ,\NLW_acc_reg[7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\acc[7]_i_2_n_0 ,\acc[7]_i_3_n_0 ,\acc[7]_i_4_n_0 ,\acc[7]_i_5_n_0 }),
        .O({\acc_reg[7]_i_1_n_4 ,\acc_reg[7]_i_1_n_5 ,\acc_reg[7]_i_1_n_6 ,\acc_reg[7]_i_1_n_7 }),
        .S({\acc[7]_i_6_n_0 ,\acc[7]_i_7_n_0 ,\acc[7]_i_8_n_0 ,\acc[7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[11]_i_1_n_7 ),
        .Q(acc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\acc_reg[11]_i_1_n_6 ),
        .Q(acc[9]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[0]),
        .Q(p8_a1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[10]),
        .Q(p8_a1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[11]),
        .Q(p8_a1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[12]),
        .Q(p8_a1[12]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[13]),
        .Q(p8_a1[13]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[14]),
        .Q(p8_a1[14]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[15]),
        .Q(p8_a1[15]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[16]),
        .Q(p8_a1[16]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[1]),
        .Q(p8_a1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[2]),
        .Q(p8_a1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[3]),
        .Q(p8_a1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[4]),
        .Q(p8_a1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[5]),
        .Q(p8_a1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[6]),
        .Q(p8_a1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[7]),
        .Q(p8_a1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[8]),
        .Q(p8_a1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(D[9]),
        .Q(p8_a1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[0]),
        .Q(p8_a2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[10]),
        .Q(p8_a2[10]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[11]),
        .Q(p8_a2[11]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[12]),
        .Q(p8_a2[12]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[13]),
        .Q(p8_a2[13]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[14]),
        .Q(p8_a2[14]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[15]),
        .Q(p8_a2[15]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[16]),
        .Q(p8_a2[16]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[1]),
        .Q(p8_a2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[2]),
        .Q(p8_a2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[3]),
        .Q(p8_a2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[4]),
        .Q(p8_a2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[5]),
        .Q(p8_a2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[6]),
        .Q(p8_a2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[7]),
        .Q(p8_a2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[8]),
        .Q(p8_a2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p8_a1[9]),
        .Q(p8_a2[9]));
  CARRY4 \rounded_q_reg[19]_i_1 
       (.CI(\rounded_q_reg[19]_i_2_n_0 ),
        .CO(\NLW_rounded_q_reg[19]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({O,rounded_q1[18:16]}),
        .S(acc[19:16]));
  CARRY4 \rounded_q_reg[19]_i_2 
       (.CI(\rounded_q_reg[19]_i_3_n_0 ),
        .CO({\rounded_q_reg[19]_i_2_n_0 ,\NLW_rounded_q_reg[19]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rounded_q1[15:12]),
        .S(acc[15:12]));
  CARRY4 \rounded_q_reg[19]_i_3 
       (.CI(\rounded_q_reg[7]_i_3_n_0 ),
        .CO({\rounded_q_reg[19]_i_3_n_0 ,\NLW_rounded_q_reg[19]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(rounded_q1[11:8]),
        .S(acc[11:8]));
  CARRY4 \rounded_q_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\rounded_q_reg[3]_i_3_n_0 ,\NLW_rounded_q_reg[3]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(rounded_q1[3:0]),
        .S(S));
  CARRY4 \rounded_q_reg[7]_i_3 
       (.CI(\rounded_q_reg[3]_i_3_n_0 ),
        .CO({\rounded_q_reg[7]_i_3_n_0 ,\NLW_rounded_q_reg[7]_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({acc[7],Q[6:4]}),
        .O(rounded_q1[7:4]),
        .S({acc[7],\acc_reg[6]_0 }));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][11]_i_6 
       (.I0(p_0_out_0[11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[11]),
        .O(\s1[0][11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][11]_i_7 
       (.I0(p_0_out_0[10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[10]),
        .O(\s1[0][11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][11]_i_8 
       (.I0(p_0_out_0[9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[9]),
        .O(\s1[0][11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][11]_i_9 
       (.I0(p_0_out_0[8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[8]),
        .O(\s1[0][11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][15]_i_6 
       (.I0(p_0_out_0[15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[15]),
        .O(\s1[0][15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][15]_i_7 
       (.I0(p_0_out_0[14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[14]),
        .O(\s1[0][15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][15]_i_8 
       (.I0(p_0_out_0[13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[13]),
        .O(\s1[0][15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][15]_i_9 
       (.I0(p_0_out_0[12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[12]),
        .O(\s1[0][15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s1[0][17]_i_2 
       (.I0(\p8_a1_reg[16]_i_2 ),
        .I1(p_0_out_0[16]),
        .O(\s1[0][17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][3]_i_6 
       (.I0(p_0_out_0[3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[3]),
        .O(\s1[0][3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][3]_i_7 
       (.I0(p_0_out_0[2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[2]),
        .O(\s1[0][3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][3]_i_8 
       (.I0(p_0_out_0[1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[1]),
        .O(\s1[0][3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][3]_i_9 
       (.I0(p_0_out_0[0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[0]),
        .O(\s1[0][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][7]_i_6 
       (.I0(p_0_out_0[7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[7]),
        .O(\s1[0][7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][7]_i_7 
       (.I0(p_0_out_0[6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[6]),
        .O(\s1[0][7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][7]_i_8 
       (.I0(p_0_out_0[5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[5]),
        .O(\s1[0][7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][7]_i_9 
       (.I0(p_0_out_0[4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0[4]),
        .O(\s1[0][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][11]_i_6 
       (.I0(p_0_out__1_0[11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[11]),
        .O(\s1[1][11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][11]_i_7 
       (.I0(p_0_out__1_0[10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[10]),
        .O(\s1[1][11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][11]_i_8 
       (.I0(p_0_out__1_0[9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[9]),
        .O(\s1[1][11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][11]_i_9 
       (.I0(p_0_out__1_0[8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[8]),
        .O(\s1[1][11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][15]_i_6 
       (.I0(p_0_out__1_0[15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[15]),
        .O(\s1[1][15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][15]_i_7 
       (.I0(p_0_out__1_0[14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[14]),
        .O(\s1[1][15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][15]_i_8 
       (.I0(p_0_out__1_0[13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[13]),
        .O(\s1[1][15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][15]_i_9 
       (.I0(p_0_out__1_0[12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[12]),
        .O(\s1[1][15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s1[1][17]_i_2 
       (.I0(\p8_a1_reg[16]_i_2 ),
        .I1(p_0_out__1_0[16]),
        .O(\s1[1][17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][3]_i_6 
       (.I0(p_0_out__1_0[3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[3]),
        .O(\s1[1][3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][3]_i_7 
       (.I0(p_0_out__1_0[2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[2]),
        .O(\s1[1][3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][3]_i_8 
       (.I0(p_0_out__1_0[1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[1]),
        .O(\s1[1][3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][3]_i_9 
       (.I0(p_0_out__1_0[0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[0]),
        .O(\s1[1][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][7]_i_6 
       (.I0(p_0_out__1_0[7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[7]),
        .O(\s1[1][7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][7]_i_7 
       (.I0(p_0_out__1_0[6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[6]),
        .O(\s1[1][7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][7]_i_8 
       (.I0(p_0_out__1_0[5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[5]),
        .O(\s1[1][7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][7]_i_9 
       (.I0(p_0_out__1_0[4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2[4]),
        .O(\s1[1][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][11]_i_6 
       (.I0(p_0_out__3_0[11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[11]),
        .O(\s1[2][11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][11]_i_7 
       (.I0(p_0_out__3_0[10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[10]),
        .O(\s1[2][11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][11]_i_8 
       (.I0(p_0_out__3_0[9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[9]),
        .O(\s1[2][11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][11]_i_9 
       (.I0(p_0_out__3_0[8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[8]),
        .O(\s1[2][11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][15]_i_6 
       (.I0(p_0_out__3_0[15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[15]),
        .O(\s1[2][15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][15]_i_7 
       (.I0(p_0_out__3_0[14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[14]),
        .O(\s1[2][15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][15]_i_8 
       (.I0(p_0_out__3_0[13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[13]),
        .O(\s1[2][15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][15]_i_9 
       (.I0(p_0_out__3_0[12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[12]),
        .O(\s1[2][15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s1[2][17]_i_2 
       (.I0(\p8_a1_reg[16]_i_2 ),
        .I1(p_0_out__3_0[16]),
        .O(\s1[2][17]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][3]_i_6 
       (.I0(p_0_out__3_0[3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[3]),
        .O(\s1[2][3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][3]_i_7 
       (.I0(p_0_out__3_0[2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[2]),
        .O(\s1[2][3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][3]_i_8 
       (.I0(p_0_out__3_0[1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[1]),
        .O(\s1[2][3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][3]_i_9 
       (.I0(p_0_out__3_0[0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[0]),
        .O(\s1[2][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][7]_i_6 
       (.I0(p_0_out__3_0[7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[7]),
        .O(\s1[2][7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][7]_i_7 
       (.I0(p_0_out__3_0[6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[6]),
        .O(\s1[2][7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][7]_i_8 
       (.I0(p_0_out__3_0[5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[5]),
        .O(\s1[2][7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][7]_i_9 
       (.I0(p_0_out__3_0[4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4[4]),
        .O(\s1[2][7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][11]_i_6 
       (.I0(P[11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[11]),
        .O(\s1[3][11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][11]_i_7 
       (.I0(P[10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[10]),
        .O(\s1[3][11]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][11]_i_8 
       (.I0(P[9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[9]),
        .O(\s1[3][11]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][11]_i_9 
       (.I0(P[8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[8]),
        .O(\s1[3][11]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][15]_i_6 
       (.I0(P[15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[15]),
        .O(\s1[3][15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][15]_i_7 
       (.I0(P[14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[14]),
        .O(\s1[3][15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][15]_i_8 
       (.I0(P[13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[13]),
        .O(\s1[3][15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][15]_i_9 
       (.I0(P[12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[12]),
        .O(\s1[3][15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s1[3][17]_i_2 
       (.I0(rst_n),
        .O(\s1[3][17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \s1[3][17]_i_3 
       (.I0(\p8_a1_reg[16]_i_2 ),
        .I1(P[16]),
        .O(\s1[3][17]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][3]_i_6 
       (.I0(P[3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[3]),
        .O(\s1[3][3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][3]_i_7 
       (.I0(P[2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[2]),
        .O(\s1[3][3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][3]_i_8 
       (.I0(P[1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[1]),
        .O(\s1[3][3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][3]_i_9 
       (.I0(P[0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[0]),
        .O(\s1[3][3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][7]_i_6 
       (.I0(P[7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[7]),
        .O(\s1[3][7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][7]_i_7 
       (.I0(P[6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[6]),
        .O(\s1[3][7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][7]_i_8 
       (.I0(P[5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[5]),
        .O(\s1[3][7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][7]_i_9 
       (.I0(P[4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6[4]),
        .O(\s1[3][7]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][3]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][11]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][11]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [11]));
  CARRY4 \s1_reg[0][11]_i_1 
       (.CI(\s1_reg[0][7]_i_1_n_0 ),
        .CO({\s1_reg[0][11]_i_1_n_0 ,\NLW_s1_reg[0][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [11:8]),
        .O({\s1_reg[0][11]_i_1_n_4 ,\s1_reg[0][11]_i_1_n_5 ,\s1_reg[0][11]_i_1_n_6 ,\s1_reg[0][11]_i_1_n_7 }),
        .S({\s1[0][11]_i_6_n_0 ,\s1[0][11]_i_7_n_0 ,\s1[0][11]_i_8_n_0 ,\s1[0][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][15]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][15]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][15]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][15]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [15]));
  CARRY4 \s1_reg[0][15]_i_1 
       (.CI(\s1_reg[0][11]_i_1_n_0 ),
        .CO({\s1_reg[0][15]_i_1_n_0 ,\NLW_s1_reg[0][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [15:12]),
        .O({\s1_reg[0][15]_i_1_n_4 ,\s1_reg[0][15]_i_1_n_5 ,\s1_reg[0][15]_i_1_n_6 ,\s1_reg[0][15]_i_1_n_7 }),
        .S({\s1[0][15]_i_6_n_0 ,\s1[0][15]_i_7_n_0 ,\s1[0][15]_i_8_n_0 ,\s1[0][15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][17]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][17]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [17]));
  CARRY4 \s1_reg[0][17]_i_1 
       (.CI(\s1_reg[0][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[0][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[0][17]_i_2_n_0 }),
        .O({\NLW_s1_reg[0][17]_i_1_O_UNCONNECTED [3:2],\s1_reg[0][17]_i_1_n_6 ,\s1_reg[0][17]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,p_0_out}));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][3]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][3]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][3]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [3]));
  CARRY4 \s1_reg[0][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[0][3]_i_1_n_0 ,\NLW_s1_reg[0][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [3:0]),
        .O({\s1_reg[0][3]_i_1_n_4 ,\s1_reg[0][3]_i_1_n_5 ,\s1_reg[0][3]_i_1_n_6 ,\s1_reg[0][3]_i_1_n_7 }),
        .S({\s1[0][3]_i_6_n_0 ,\s1[0][3]_i_7_n_0 ,\s1[0][3]_i_8_n_0 ,\s1[0][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][7]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][7]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][7]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][7]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [7]));
  CARRY4 \s1_reg[0][7]_i_1 
       (.CI(\s1_reg[0][3]_i_1_n_0 ),
        .CO({\s1_reg[0][7]_i_1_n_0 ,\NLW_s1_reg[0][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [7:4]),
        .O({\s1_reg[0][7]_i_1_n_4 ,\s1_reg[0][7]_i_1_n_5 ,\s1_reg[0][7]_i_1_n_6 ,\s1_reg[0][7]_i_1_n_7 }),
        .S({\s1[0][7]_i_6_n_0 ,\s1[0][7]_i_7_n_0 ,\s1[0][7]_i_8_n_0 ,\s1[0][7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][11]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[0][11]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][3]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][11]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][11]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [11]));
  CARRY4 \s1_reg[1][11]_i_1 
       (.CI(\s1_reg[1][7]_i_1_n_0 ),
        .CO({\s1_reg[1][11]_i_1_n_0 ,\NLW_s1_reg[1][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [11:8]),
        .O({\s1_reg[1][11]_i_1_n_4 ,\s1_reg[1][11]_i_1_n_5 ,\s1_reg[1][11]_i_1_n_6 ,\s1_reg[1][11]_i_1_n_7 }),
        .S({\s1[1][11]_i_6_n_0 ,\s1[1][11]_i_7_n_0 ,\s1[1][11]_i_8_n_0 ,\s1[1][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][15]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][15]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][15]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][15]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [15]));
  CARRY4 \s1_reg[1][15]_i_1 
       (.CI(\s1_reg[1][11]_i_1_n_0 ),
        .CO({\s1_reg[1][15]_i_1_n_0 ,\NLW_s1_reg[1][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [15:12]),
        .O({\s1_reg[1][15]_i_1_n_4 ,\s1_reg[1][15]_i_1_n_5 ,\s1_reg[1][15]_i_1_n_6 ,\s1_reg[1][15]_i_1_n_7 }),
        .S({\s1[1][15]_i_6_n_0 ,\s1[1][15]_i_7_n_0 ,\s1[1][15]_i_8_n_0 ,\s1[1][15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][17]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][17]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [17]));
  CARRY4 \s1_reg[1][17]_i_1 
       (.CI(\s1_reg[1][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[1][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[1][17]_i_2_n_0 }),
        .O({\NLW_s1_reg[1][17]_i_1_O_UNCONNECTED [3:2],\s1_reg[1][17]_i_1_n_6 ,\s1_reg[1][17]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,p_0_out__1}));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][3]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][3]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][3]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [3]));
  CARRY4 \s1_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[1][3]_i_1_n_0 ,\NLW_s1_reg[1][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [3:0]),
        .O({\s1_reg[1][3]_i_1_n_4 ,\s1_reg[1][3]_i_1_n_5 ,\s1_reg[1][3]_i_1_n_6 ,\s1_reg[1][3]_i_1_n_7 }),
        .S({\s1[1][3]_i_6_n_0 ,\s1[1][3]_i_7_n_0 ,\s1[1][3]_i_8_n_0 ,\s1[1][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][7]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][7]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][7]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][7]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [7]));
  CARRY4 \s1_reg[1][7]_i_1 
       (.CI(\s1_reg[1][3]_i_1_n_0 ),
        .CO({\s1_reg[1][7]_i_1_n_0 ,\NLW_s1_reg[1][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [7:4]),
        .O({\s1_reg[1][7]_i_1_n_4 ,\s1_reg[1][7]_i_1_n_5 ,\s1_reg[1][7]_i_1_n_6 ,\s1_reg[1][7]_i_1_n_7 }),
        .S({\s1[1][7]_i_6_n_0 ,\s1[1][7]_i_7_n_0 ,\s1[1][7]_i_8_n_0 ,\s1[1][7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][11]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[1][11]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][3]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][11]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][11]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [11]));
  CARRY4 \s1_reg[2][11]_i_1 
       (.CI(\s1_reg[2][7]_i_1_n_0 ),
        .CO({\s1_reg[2][11]_i_1_n_0 ,\NLW_s1_reg[2][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [11:8]),
        .O({\s1_reg[2][11]_i_1_n_4 ,\s1_reg[2][11]_i_1_n_5 ,\s1_reg[2][11]_i_1_n_6 ,\s1_reg[2][11]_i_1_n_7 }),
        .S({\s1[2][11]_i_6_n_0 ,\s1[2][11]_i_7_n_0 ,\s1[2][11]_i_8_n_0 ,\s1[2][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][15]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][15]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][15]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][15]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [15]));
  CARRY4 \s1_reg[2][15]_i_1 
       (.CI(\s1_reg[2][11]_i_1_n_0 ),
        .CO({\s1_reg[2][15]_i_1_n_0 ,\NLW_s1_reg[2][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [15:12]),
        .O({\s1_reg[2][15]_i_1_n_4 ,\s1_reg[2][15]_i_1_n_5 ,\s1_reg[2][15]_i_1_n_6 ,\s1_reg[2][15]_i_1_n_7 }),
        .S({\s1[2][15]_i_6_n_0 ,\s1[2][15]_i_7_n_0 ,\s1[2][15]_i_8_n_0 ,\s1[2][15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][17]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][17]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [17]));
  CARRY4 \s1_reg[2][17]_i_1 
       (.CI(\s1_reg[2][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[2][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[2][17]_i_2_n_0 }),
        .O({\NLW_s1_reg[2][17]_i_1_O_UNCONNECTED [3:2],\s1_reg[2][17]_i_1_n_6 ,\s1_reg[2][17]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,p_0_out__3}));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][3]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][3]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][3]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [3]));
  CARRY4 \s1_reg[2][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[2][3]_i_1_n_0 ,\NLW_s1_reg[2][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [3:0]),
        .O({\s1_reg[2][3]_i_1_n_4 ,\s1_reg[2][3]_i_1_n_5 ,\s1_reg[2][3]_i_1_n_6 ,\s1_reg[2][3]_i_1_n_7 }),
        .S({\s1[2][3]_i_6_n_0 ,\s1[2][3]_i_7_n_0 ,\s1[2][3]_i_8_n_0 ,\s1[2][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][7]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][7]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][7]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][7]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [7]));
  CARRY4 \s1_reg[2][7]_i_1 
       (.CI(\s1_reg[2][3]_i_1_n_0 ),
        .CO({\s1_reg[2][7]_i_1_n_0 ,\NLW_s1_reg[2][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [7:4]),
        .O({\s1_reg[2][7]_i_1_n_4 ,\s1_reg[2][7]_i_1_n_5 ,\s1_reg[2][7]_i_1_n_6 ,\s1_reg[2][7]_i_1_n_7 }),
        .S({\s1[2][7]_i_6_n_0 ,\s1[2][7]_i_7_n_0 ,\s1[2][7]_i_8_n_0 ,\s1[2][7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][11]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s1_reg[2][11]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\s1_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(\s1_reg[3]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(\s1_reg[3]_0 [11]));
  CARRY4 \s1_reg[3][11]_i_1 
       (.CI(\s1_reg[3][7]_i_1_n_0 ),
        .CO({\s1_reg[3][11]_i_1_n_0 ,\NLW_s1_reg[3][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [11:8]),
        .O(p_0_in[11:8]),
        .S({\s1[3][11]_i_6_n_0 ,\s1[3][11]_i_7_n_0 ,\s1[3][11]_i_8_n_0 ,\s1[3][11]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(\s1_reg[3]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(\s1_reg[3]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(\s1_reg[3]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(\s1_reg[3]_0 [15]));
  CARRY4 \s1_reg[3][15]_i_1 
       (.CI(\s1_reg[3][11]_i_1_n_0 ),
        .CO({\s1_reg[3][15]_i_1_n_0 ,\NLW_s1_reg[3][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [15:12]),
        .O(p_0_in[15:12]),
        .S({\s1[3][15]_i_6_n_0 ,\s1[3][15]_i_7_n_0 ,\s1[3][15]_i_8_n_0 ,\s1[3][15]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[16]),
        .Q(\s1_reg[3]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[17]),
        .Q(\s1_reg[3]_0 [17]));
  CARRY4 \s1_reg[3][17]_i_1 
       (.CI(\s1_reg[3][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[3][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[3][17]_i_3_n_0 }),
        .O({\NLW_s1_reg[3][17]_i_1_O_UNCONNECTED [3:2],p_0_in[17:16]}),
        .S({1'b0,1'b0,1'b1,p_0_out__5}));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\s1_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\s1_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\s1_reg[3]_0 [3]));
  CARRY4 \s1_reg[3][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[3][3]_i_1_n_0 ,\NLW_s1_reg[3][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [3:0]),
        .O(p_0_in[3:0]),
        .S({\s1[3][3]_i_6_n_0 ,\s1[3][3]_i_7_n_0 ,\s1[3][3]_i_8_n_0 ,\s1[3][3]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(\s1_reg[3]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(\s1_reg[3]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(\s1_reg[3]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(\s1_reg[3]_0 [7]));
  CARRY4 \s1_reg[3][7]_i_1 
       (.CI(\s1_reg[3][3]_i_1_n_0 ),
        .CO({\s1_reg[3][7]_i_1_n_0 ,\NLW_s1_reg[3][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [7:4]),
        .O(p_0_in[7:4]),
        .S({\s1[3][7]_i_6_n_0 ,\s1[3][7]_i_7_n_0 ,\s1[3][7]_i_8_n_0 ,\s1[3][7]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(\s1_reg[3]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(\s1_reg[3]_0 [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][11]_i_2 
       (.I0(\s1_reg[0]_4 [11]),
        .I1(\s1_reg[1]_3 [11]),
        .O(\s2[0][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][11]_i_3 
       (.I0(\s1_reg[0]_4 [10]),
        .I1(\s1_reg[1]_3 [10]),
        .O(\s2[0][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][11]_i_4 
       (.I0(\s1_reg[0]_4 [9]),
        .I1(\s1_reg[1]_3 [9]),
        .O(\s2[0][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][11]_i_5 
       (.I0(\s1_reg[0]_4 [8]),
        .I1(\s1_reg[1]_3 [8]),
        .O(\s2[0][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][15]_i_2 
       (.I0(\s1_reg[0]_4 [15]),
        .I1(\s1_reg[1]_3 [15]),
        .O(\s2[0][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][15]_i_3 
       (.I0(\s1_reg[0]_4 [14]),
        .I1(\s1_reg[1]_3 [14]),
        .O(\s2[0][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][15]_i_4 
       (.I0(\s1_reg[0]_4 [13]),
        .I1(\s1_reg[1]_3 [13]),
        .O(\s2[0][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][15]_i_5 
       (.I0(\s1_reg[0]_4 [12]),
        .I1(\s1_reg[1]_3 [12]),
        .O(\s2[0][15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s2[0][18]_i_2 
       (.I0(\s1_reg[0]_4 [17]),
        .O(\s2[0][18]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][18]_i_3 
       (.I0(\s1_reg[0]_4 [17]),
        .I1(\s1_reg[1]_3 [17]),
        .O(\s2[0][18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][18]_i_4 
       (.I0(\s1_reg[0]_4 [16]),
        .I1(\s1_reg[1]_3 [16]),
        .O(\s2[0][18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][3]_i_2 
       (.I0(\s1_reg[0]_4 [3]),
        .I1(\s1_reg[1]_3 [3]),
        .O(\s2[0][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][3]_i_3 
       (.I0(\s1_reg[0]_4 [2]),
        .I1(\s1_reg[1]_3 [2]),
        .O(\s2[0][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][3]_i_4 
       (.I0(\s1_reg[0]_4 [1]),
        .I1(\s1_reg[1]_3 [1]),
        .O(\s2[0][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][3]_i_5 
       (.I0(\s1_reg[0]_4 [0]),
        .I1(\s1_reg[1]_3 [0]),
        .O(\s2[0][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][7]_i_2 
       (.I0(\s1_reg[0]_4 [7]),
        .I1(\s1_reg[1]_3 [7]),
        .O(\s2[0][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][7]_i_3 
       (.I0(\s1_reg[0]_4 [6]),
        .I1(\s1_reg[1]_3 [6]),
        .O(\s2[0][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][7]_i_4 
       (.I0(\s1_reg[0]_4 [5]),
        .I1(\s1_reg[1]_3 [5]),
        .O(\s2[0][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[0][7]_i_5 
       (.I0(\s1_reg[0]_4 [4]),
        .I1(\s1_reg[1]_3 [4]),
        .O(\s2[0][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][11]_i_2 
       (.I0(\s1_reg[2]_1 [11]),
        .I1(\s1_reg[3]_0 [11]),
        .O(\s2[1][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][11]_i_3 
       (.I0(\s1_reg[2]_1 [10]),
        .I1(\s1_reg[3]_0 [10]),
        .O(\s2[1][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][11]_i_4 
       (.I0(\s1_reg[2]_1 [9]),
        .I1(\s1_reg[3]_0 [9]),
        .O(\s2[1][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][11]_i_5 
       (.I0(\s1_reg[2]_1 [8]),
        .I1(\s1_reg[3]_0 [8]),
        .O(\s2[1][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][15]_i_2 
       (.I0(\s1_reg[2]_1 [15]),
        .I1(\s1_reg[3]_0 [15]),
        .O(\s2[1][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][15]_i_3 
       (.I0(\s1_reg[2]_1 [14]),
        .I1(\s1_reg[3]_0 [14]),
        .O(\s2[1][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][15]_i_4 
       (.I0(\s1_reg[2]_1 [13]),
        .I1(\s1_reg[3]_0 [13]),
        .O(\s2[1][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][15]_i_5 
       (.I0(\s1_reg[2]_1 [12]),
        .I1(\s1_reg[3]_0 [12]),
        .O(\s2[1][15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s2[1][18]_i_2 
       (.I0(\s1_reg[2]_1 [17]),
        .O(\s2[1][18]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][18]_i_3 
       (.I0(\s1_reg[2]_1 [17]),
        .I1(\s1_reg[3]_0 [17]),
        .O(\s2[1][18]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][18]_i_4 
       (.I0(\s1_reg[2]_1 [16]),
        .I1(\s1_reg[3]_0 [16]),
        .O(\s2[1][18]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][3]_i_2 
       (.I0(\s1_reg[2]_1 [3]),
        .I1(\s1_reg[3]_0 [3]),
        .O(\s2[1][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][3]_i_3 
       (.I0(\s1_reg[2]_1 [2]),
        .I1(\s1_reg[3]_0 [2]),
        .O(\s2[1][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][3]_i_4 
       (.I0(\s1_reg[2]_1 [1]),
        .I1(\s1_reg[3]_0 [1]),
        .O(\s2[1][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][3]_i_5 
       (.I0(\s1_reg[2]_1 [0]),
        .I1(\s1_reg[3]_0 [0]),
        .O(\s2[1][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][7]_i_2 
       (.I0(\s1_reg[2]_1 [7]),
        .I1(\s1_reg[3]_0 [7]),
        .O(\s2[1][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][7]_i_3 
       (.I0(\s1_reg[2]_1 [6]),
        .I1(\s1_reg[3]_0 [6]),
        .O(\s2[1][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][7]_i_4 
       (.I0(\s1_reg[2]_1 [5]),
        .I1(\s1_reg[3]_0 [5]),
        .O(\s2[1][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s2[1][7]_i_5 
       (.I0(\s1_reg[2]_1 [4]),
        .I1(\s1_reg[3]_0 [4]),
        .O(\s2[1][7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][3]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][11]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][11]_i_1_n_4 ),
        .Q(\s2_reg[0]_5 [11]));
  CARRY4 \s2_reg[0][11]_i_1 
       (.CI(\s2_reg[0][7]_i_1_n_0 ),
        .CO({\s2_reg[0][11]_i_1_n_0 ,\NLW_s2_reg[0][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[0]_4 [11:8]),
        .O({\s2_reg[0][11]_i_1_n_4 ,\s2_reg[0][11]_i_1_n_5 ,\s2_reg[0][11]_i_1_n_6 ,\s2_reg[0][11]_i_1_n_7 }),
        .S({\s2[0][11]_i_2_n_0 ,\s2[0][11]_i_3_n_0 ,\s2[0][11]_i_4_n_0 ,\s2[0][11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][15]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][15]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][15]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][15]_i_1_n_4 ),
        .Q(\s2_reg[0]_5 [15]));
  CARRY4 \s2_reg[0][15]_i_1 
       (.CI(\s2_reg[0][11]_i_1_n_0 ),
        .CO({\s2_reg[0][15]_i_1_n_0 ,\NLW_s2_reg[0][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[0]_4 [15:12]),
        .O({\s2_reg[0][15]_i_1_n_4 ,\s2_reg[0][15]_i_1_n_5 ,\s2_reg[0][15]_i_1_n_6 ,\s2_reg[0][15]_i_1_n_7 }),
        .S({\s2[0][15]_i_2_n_0 ,\s2[0][15]_i_3_n_0 ,\s2[0][15]_i_4_n_0 ,\s2[0][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][18]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][18]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][18]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [18]));
  CARRY4 \s2_reg[0][18]_i_1 
       (.CI(\s2_reg[0][15]_i_1_n_0 ),
        .CO(\NLW_s2_reg[0][18]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s2[0][18]_i_2_n_0 ,\s1_reg[0]_4 [16]}),
        .O({\NLW_s2_reg[0][18]_i_1_O_UNCONNECTED [3],\s2_reg[0][18]_i_1_n_5 ,\s2_reg[0][18]_i_1_n_6 ,\s2_reg[0][18]_i_1_n_7 }),
        .S({1'b0,1'b1,\s2[0][18]_i_3_n_0 ,\s2[0][18]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][3]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][3]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][3]_i_1_n_4 ),
        .Q(\s2_reg[0]_5 [3]));
  CARRY4 \s2_reg[0][3]_i_1 
       (.CI(1'b0),
        .CO({\s2_reg[0][3]_i_1_n_0 ,\NLW_s2_reg[0][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[0]_4 [3:0]),
        .O({\s2_reg[0][3]_i_1_n_4 ,\s2_reg[0][3]_i_1_n_5 ,\s2_reg[0][3]_i_1_n_6 ,\s2_reg[0][3]_i_1_n_7 }),
        .S({\s2[0][3]_i_2_n_0 ,\s2[0][3]_i_3_n_0 ,\s2[0][3]_i_4_n_0 ,\s2[0][3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][7]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][7]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][7]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][7]_i_1_n_4 ),
        .Q(\s2_reg[0]_5 [7]));
  CARRY4 \s2_reg[0][7]_i_1 
       (.CI(\s2_reg[0][3]_i_1_n_0 ),
        .CO({\s2_reg[0][7]_i_1_n_0 ,\NLW_s2_reg[0][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[0]_4 [7:4]),
        .O({\s2_reg[0][7]_i_1_n_4 ,\s2_reg[0][7]_i_1_n_5 ,\s2_reg[0][7]_i_1_n_6 ,\s2_reg[0][7]_i_1_n_7 }),
        .S({\s2[0][7]_i_2_n_0 ,\s2[0][7]_i_3_n_0 ,\s2[0][7]_i_4_n_0 ,\s2[0][7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][11]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[0][11]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][3]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][11]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][11]_i_1_n_4 ),
        .Q(\s2_reg[1]_2 [11]));
  CARRY4 \s2_reg[1][11]_i_1 
       (.CI(\s2_reg[1][7]_i_1_n_0 ),
        .CO({\s2_reg[1][11]_i_1_n_0 ,\NLW_s2_reg[1][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[2]_1 [11:8]),
        .O({\s2_reg[1][11]_i_1_n_4 ,\s2_reg[1][11]_i_1_n_5 ,\s2_reg[1][11]_i_1_n_6 ,\s2_reg[1][11]_i_1_n_7 }),
        .S({\s2[1][11]_i_2_n_0 ,\s2[1][11]_i_3_n_0 ,\s2[1][11]_i_4_n_0 ,\s2[1][11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][15]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][15]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][15]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][15]_i_1_n_4 ),
        .Q(\s2_reg[1]_2 [15]));
  CARRY4 \s2_reg[1][15]_i_1 
       (.CI(\s2_reg[1][11]_i_1_n_0 ),
        .CO({\s2_reg[1][15]_i_1_n_0 ,\NLW_s2_reg[1][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[2]_1 [15:12]),
        .O({\s2_reg[1][15]_i_1_n_4 ,\s2_reg[1][15]_i_1_n_5 ,\s2_reg[1][15]_i_1_n_6 ,\s2_reg[1][15]_i_1_n_7 }),
        .S({\s2[1][15]_i_2_n_0 ,\s2[1][15]_i_3_n_0 ,\s2[1][15]_i_4_n_0 ,\s2[1][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][18]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][18]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][18]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [18]));
  CARRY4 \s2_reg[1][18]_i_1 
       (.CI(\s2_reg[1][15]_i_1_n_0 ),
        .CO(\NLW_s2_reg[1][18]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\s2[1][18]_i_2_n_0 ,\s1_reg[2]_1 [16]}),
        .O({\NLW_s2_reg[1][18]_i_1_O_UNCONNECTED [3],\s2_reg[1][18]_i_1_n_5 ,\s2_reg[1][18]_i_1_n_6 ,\s2_reg[1][18]_i_1_n_7 }),
        .S({1'b0,1'b1,\s2[1][18]_i_3_n_0 ,\s2[1][18]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][3]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][3]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][3]_i_1_n_4 ),
        .Q(\s2_reg[1]_2 [3]));
  CARRY4 \s2_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\s2_reg[1][3]_i_1_n_0 ,\NLW_s2_reg[1][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[2]_1 [3:0]),
        .O({\s2_reg[1][3]_i_1_n_4 ,\s2_reg[1][3]_i_1_n_5 ,\s2_reg[1][3]_i_1_n_6 ,\s2_reg[1][3]_i_1_n_7 }),
        .S({\s2[1][3]_i_2_n_0 ,\s2[1][3]_i_3_n_0 ,\s2[1][3]_i_4_n_0 ,\s2[1][3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][7]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][7]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][7]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][7]_i_1_n_4 ),
        .Q(\s2_reg[1]_2 [7]));
  CARRY4 \s2_reg[1][7]_i_1 
       (.CI(\s2_reg[1][3]_i_1_n_0 ),
        .CO({\s2_reg[1][7]_i_1_n_0 ,\NLW_s2_reg[1][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\s1_reg[2]_1 [7:4]),
        .O({\s2_reg[1][7]_i_1_n_4 ,\s2_reg[1][7]_i_1_n_5 ,\s2_reg[1][7]_i_1_n_6 ,\s2_reg[1][7]_i_1_n_7 }),
        .S({\s2[1][7]_i_2_n_0 ,\s2[1][7]_i_3_n_0 ,\s2[1][7]_i_4_n_0 ,\s2[1][7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][11]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1[3][17]_i_2_n_0 ),
        .D(\s2_reg[1][11]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [9]));
endmodule

(* ECO_CHECKSUM = "fb51ab63" *) (* W = "32" *) (* use_dsp = "1" *) 
(* NotValidForBitStream *)
module conv_top
   (clk,
    rst_n,
    px_data,
    px_valid,
    px_last,
    kl_valid,
    kl_bank,
    kl_addr,
    kl_coef,
    cfg_start,
    cfg_relu_en,
    cfg_out_shift,
    cfg_num_kernels,
    out_data,
    out_valid,
    out_last,
    out_bank,
    sat_flag,
    busy,
    done);
  input clk;
  input rst_n;
  input [7:0]px_data;
  input px_valid;
  input px_last;
  input kl_valid;
  input [1:0]kl_bank;
  input [3:0]kl_addr;
  input [7:0]kl_coef;
  input cfg_start;
  input cfg_relu_en;
  input [2:0]cfg_out_shift;
  input [2:0]cfg_num_kernels;
  output [15:0]out_data;
  output out_valid;
  output out_last;
  output [1:0]out_bank;
  output sat_flag;
  output busy;
  output done;

  wire [6:0]acc;
  wire advance;
  wire [1:0]bank_sel;
  wire busy;
  wire [2:0]cfg_num_kernels;
  wire [2:0]cfg_out_shift;
  wire cfg_relu_en;
  wire cfg_start;
  wire clk;
  wire [7:0]\coef[0] ;
  wire [7:0]\coef[1] ;
  wire [7:0]\coef[2] ;
  wire [7:0]\coef[3] ;
  wire [7:0]\coef[4] ;
  wire [7:0]\coef[5] ;
  wire [7:0]\coef[6] ;
  wire [7:0]\coef[7] ;
  wire [7:0]\coef[8] ;
  wire done;
  wire [3:0]kl_addr;
  wire [1:0]kl_bank;
  wire [7:0]kl_coef;
  wire kl_valid;
  wire [1:0]out_bank;
  wire [15:0]out_data;
  wire out_last;
  wire [2:0]out_shift;
  wire out_valid;
  wire \p8_a1_reg[16]_i_2_n_0 ;
  wire [16:0]p_0_out;
  wire [15:0]\prod[0] ;
  wire [15:0]\prod[2] ;
  wire [15:0]\prod[4] ;
  wire [15:0]\prod[6] ;
  wire [16:0]\prod[8] ;
  wire [7:0]px_data;
  wire px_last;
  wire px_valid;
  wire relu_en;
  wire [18:0]rounded_d;
  wire [19:19]rounded_q1;
  wire [18:0]rounded_q1__0;
  wire rst_n;
  wire sat_flag;
  wire shift_en;
  wire u_kernel_regfile_n_0;
  wire u_kernel_regfile_n_1;
  wire u_kernel_regfile_n_2;
  wire u_kernel_regfile_n_3;
  wire u_mac_array_n_0;
  wire u_mac_array_n_1;
  wire u_mac_array_n_10;
  wire u_mac_array_n_11;
  wire u_mac_array_n_12;
  wire u_mac_array_n_13;
  wire u_mac_array_n_14;
  wire u_mac_array_n_15;
  wire u_mac_array_n_153;
  wire u_mac_array_n_154;
  wire u_mac_array_n_155;
  wire u_mac_array_n_156;
  wire u_mac_array_n_157;
  wire u_mac_array_n_158;
  wire u_mac_array_n_159;
  wire u_mac_array_n_16;
  wire u_mac_array_n_160;
  wire u_mac_array_n_161;
  wire u_mac_array_n_162;
  wire u_mac_array_n_163;
  wire u_mac_array_n_164;
  wire u_mac_array_n_165;
  wire u_mac_array_n_166;
  wire u_mac_array_n_167;
  wire u_mac_array_n_168;
  wire u_mac_array_n_169;
  wire u_mac_array_n_17;
  wire u_mac_array_n_170;
  wire u_mac_array_n_171;
  wire u_mac_array_n_172;
  wire u_mac_array_n_173;
  wire u_mac_array_n_174;
  wire u_mac_array_n_175;
  wire u_mac_array_n_176;
  wire u_mac_array_n_177;
  wire u_mac_array_n_178;
  wire u_mac_array_n_179;
  wire u_mac_array_n_18;
  wire u_mac_array_n_180;
  wire u_mac_array_n_181;
  wire u_mac_array_n_182;
  wire u_mac_array_n_183;
  wire u_mac_array_n_184;
  wire u_mac_array_n_185;
  wire u_mac_array_n_186;
  wire u_mac_array_n_187;
  wire u_mac_array_n_188;
  wire u_mac_array_n_189;
  wire u_mac_array_n_19;
  wire u_mac_array_n_190;
  wire u_mac_array_n_191;
  wire u_mac_array_n_192;
  wire u_mac_array_n_193;
  wire u_mac_array_n_194;
  wire u_mac_array_n_195;
  wire u_mac_array_n_196;
  wire u_mac_array_n_197;
  wire u_mac_array_n_198;
  wire u_mac_array_n_199;
  wire u_mac_array_n_2;
  wire u_mac_array_n_20;
  wire u_mac_array_n_200;
  wire u_mac_array_n_201;
  wire u_mac_array_n_202;
  wire u_mac_array_n_203;
  wire u_mac_array_n_204;
  wire u_mac_array_n_205;
  wire u_mac_array_n_206;
  wire u_mac_array_n_207;
  wire u_mac_array_n_208;
  wire u_mac_array_n_209;
  wire u_mac_array_n_21;
  wire u_mac_array_n_210;
  wire u_mac_array_n_211;
  wire u_mac_array_n_212;
  wire u_mac_array_n_213;
  wire u_mac_array_n_214;
  wire u_mac_array_n_215;
  wire u_mac_array_n_216;
  wire u_mac_array_n_22;
  wire u_mac_array_n_23;
  wire u_mac_array_n_24;
  wire u_mac_array_n_25;
  wire u_mac_array_n_26;
  wire u_mac_array_n_27;
  wire u_mac_array_n_28;
  wire u_mac_array_n_29;
  wire u_mac_array_n_3;
  wire u_mac_array_n_30;
  wire u_mac_array_n_31;
  wire u_mac_array_n_32;
  wire u_mac_array_n_33;
  wire u_mac_array_n_34;
  wire u_mac_array_n_35;
  wire u_mac_array_n_36;
  wire u_mac_array_n_37;
  wire u_mac_array_n_38;
  wire u_mac_array_n_39;
  wire u_mac_array_n_4;
  wire u_mac_array_n_40;
  wire u_mac_array_n_41;
  wire u_mac_array_n_42;
  wire u_mac_array_n_43;
  wire u_mac_array_n_44;
  wire u_mac_array_n_45;
  wire u_mac_array_n_46;
  wire u_mac_array_n_47;
  wire u_mac_array_n_48;
  wire u_mac_array_n_49;
  wire u_mac_array_n_5;
  wire u_mac_array_n_50;
  wire u_mac_array_n_51;
  wire u_mac_array_n_52;
  wire u_mac_array_n_53;
  wire u_mac_array_n_54;
  wire u_mac_array_n_6;
  wire u_mac_array_n_7;
  wire u_mac_array_n_8;
  wire u_mac_array_n_9;
  wire u_normalize_n_1;
  wire u_normalize_n_18;
  wire u_normalize_n_19;
  wire u_normalize_n_20;
  wire u_normalize_n_21;
  wire u_normalize_n_22;
  wire u_normalize_n_23;
  wire u_normalize_n_24;
  wire [7:0]\win[0][0] ;
  wire [7:0]\win[0][1] ;
  wire [7:0]\win[0][2] ;
  wire [7:0]\win[1][0] ;
  wire [7:0]\win[1][1] ;
  wire [7:0]\win[1][2] ;
  wire [7:0]\win[2][0] ;
  wire [7:0]\win[2][1] ;
  wire [7:0]\win[2][2] ;

  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[16]_i_2 
       (.C(clk),
        .CE(shift_en),
        .CLR(u_kernel_regfile_n_0),
        .D(1'b1),
        .Q(\p8_a1_reg[16]_i_2_n_0 ));
  adder_tree u_adder_tree
       (.D(\prod[8] ),
        .O(rounded_q1),
        .P({u_mac_array_n_1,u_mac_array_n_2,u_mac_array_n_3,u_mac_array_n_4,u_mac_array_n_5,u_mac_array_n_6,u_mac_array_n_7,u_mac_array_n_8,u_mac_array_n_9,u_mac_array_n_10,u_mac_array_n_11,u_mac_array_n_12,u_mac_array_n_13,u_mac_array_n_14,u_mac_array_n_15,u_mac_array_n_16,u_mac_array_n_17}),
        .Q(acc),
        .S({u_normalize_n_18,u_normalize_n_19,u_normalize_n_20,u_normalize_n_21}),
        .\acc_reg[6]_0 ({u_normalize_n_22,u_normalize_n_23,u_normalize_n_24}),
        .clk(clk),
        .\p8_a1_reg[16]_i_2 (\p8_a1_reg[16]_i_2_n_0 ),
        .p_0_out(u_mac_array_n_54),
        .p_0_out_0(p_0_out),
        .p_0_out__0({u_mac_array_n_153,u_mac_array_n_154,u_mac_array_n_155,u_mac_array_n_156,u_mac_array_n_157,u_mac_array_n_158,u_mac_array_n_159,u_mac_array_n_160,u_mac_array_n_161,u_mac_array_n_162,u_mac_array_n_163,u_mac_array_n_164,u_mac_array_n_165,u_mac_array_n_166,u_mac_array_n_167,u_mac_array_n_168}),
        .p_0_out__1(u_mac_array_n_36),
        .p_0_out__1_0({u_mac_array_n_37,u_mac_array_n_38,u_mac_array_n_39,u_mac_array_n_40,u_mac_array_n_41,u_mac_array_n_42,u_mac_array_n_43,u_mac_array_n_44,u_mac_array_n_45,u_mac_array_n_46,u_mac_array_n_47,u_mac_array_n_48,u_mac_array_n_49,u_mac_array_n_50,u_mac_array_n_51,u_mac_array_n_52,u_mac_array_n_53}),
        .p_0_out__2({u_mac_array_n_169,u_mac_array_n_170,u_mac_array_n_171,u_mac_array_n_172,u_mac_array_n_173,u_mac_array_n_174,u_mac_array_n_175,u_mac_array_n_176,u_mac_array_n_177,u_mac_array_n_178,u_mac_array_n_179,u_mac_array_n_180,u_mac_array_n_181,u_mac_array_n_182,u_mac_array_n_183,u_mac_array_n_184}),
        .p_0_out__3(u_mac_array_n_18),
        .p_0_out__3_0({u_mac_array_n_19,u_mac_array_n_20,u_mac_array_n_21,u_mac_array_n_22,u_mac_array_n_23,u_mac_array_n_24,u_mac_array_n_25,u_mac_array_n_26,u_mac_array_n_27,u_mac_array_n_28,u_mac_array_n_29,u_mac_array_n_30,u_mac_array_n_31,u_mac_array_n_32,u_mac_array_n_33,u_mac_array_n_34,u_mac_array_n_35}),
        .p_0_out__4({u_mac_array_n_185,u_mac_array_n_186,u_mac_array_n_187,u_mac_array_n_188,u_mac_array_n_189,u_mac_array_n_190,u_mac_array_n_191,u_mac_array_n_192,u_mac_array_n_193,u_mac_array_n_194,u_mac_array_n_195,u_mac_array_n_196,u_mac_array_n_197,u_mac_array_n_198,u_mac_array_n_199,u_mac_array_n_200}),
        .p_0_out__5(u_mac_array_n_0),
        .p_0_out__6({u_mac_array_n_201,u_mac_array_n_202,u_mac_array_n_203,u_mac_array_n_204,u_mac_array_n_205,u_mac_array_n_206,u_mac_array_n_207,u_mac_array_n_208,u_mac_array_n_209,u_mac_array_n_210,u_mac_array_n_211,u_mac_array_n_212,u_mac_array_n_213,u_mac_array_n_214,u_mac_array_n_215,u_mac_array_n_216}),
        .\prod[0] (\prod[0] ),
        .\prod[2] (\prod[2] ),
        .\prod[4] (\prod[4] ),
        .\prod[6] (\prod[6] ),
        .rounded_q1(rounded_q1__0),
        .rst_n(rst_n),
        .rst_n_0(u_kernel_regfile_n_0),
        .rst_n_1(u_normalize_n_1),
        .shift_en(shift_en));
  ctrl_fsm u_ctrl_fsm
       (.D(rounded_d),
        .O(rounded_q1),
        .Q(bank_sel),
        .advance(advance),
        .busy(busy),
        .cfg_num_kernels(cfg_num_kernels),
        .cfg_out_shift(cfg_out_shift),
        .cfg_relu_en(cfg_relu_en),
        .cfg_start(cfg_start),
        .clk(clk),
        .done(done),
        .out_bank(out_bank),
        .out_last(out_last),
        .out_valid(out_valid),
        .px_last(px_last),
        .px_valid(px_valid),
        .relu_en(relu_en),
        .rounded_q1(rounded_q1__0),
        .\rounded_q_reg[16] (out_shift),
        .rst_n(u_normalize_n_1),
        .rst_n_0(u_kernel_regfile_n_3),
        .rst_n_1(u_kernel_regfile_n_1),
        .rst_n_2(u_kernel_regfile_n_2),
        .shift_en(shift_en));
  kernel_regfile u_kernel_regfile
       (.Q(bank_sel),
        .\bank_reg[0][2][3]_0 (u_kernel_regfile_n_2),
        .\bank_reg[0][3][4]_0 (u_kernel_regfile_n_3),
        .\bank_reg[0][8][0]_0 (u_kernel_regfile_n_1),
        .clk(clk),
        .\coef_reg[8][7]_0 (u_kernel_regfile_n_0),
        .kl_addr(kl_addr),
        .kl_bank(kl_bank),
        .kl_coef(kl_coef),
        .kl_valid(kl_valid),
        .p_0_out(\coef[0] ),
        .p_0_out__0(\coef[1] ),
        .p_0_out__1(\coef[2] ),
        .p_0_out__2(\coef[3] ),
        .p_0_out__3(\coef[4] ),
        .p_0_out__4(\coef[5] ),
        .p_0_out__5(\coef[6] ),
        .p_0_out__6(\coef[7] ),
        .p_0_out__7(\coef[8] ),
        .rst_n(rst_n));
  line_window u_line_window
       (.Q(\win[2][0] ),
        .advance(advance),
        .clk(clk),
        .\g_row[0].g_tap[0].taps_reg[0][0][7]_0 (\win[0][1] ),
        .\g_row[0].g_tap[1].taps_reg[0][1][7]_0 (\win[0][2] ),
        .\g_row[1].g_tap[0].taps_reg[1][0][7]_0 (\win[1][1] ),
        .\g_row[1].g_tap[1].taps_reg[1][1][7]_0 (\win[1][2] ),
        .\g_row[2].g_tap[0].taps_reg[2][0][7]_0 (\win[2][1] ),
        .\g_row[2].g_tap[1].taps_reg[2][1][7]_0 (\win[2][2] ),
        .p_0_out(\win[0][0] ),
        .p_0_out__2(\win[1][0] ),
        .px_data(px_data),
        .rst_n(u_kernel_regfile_n_0));
  mac_array u_mac_array
       (.D(\prod[8] ),
        .P({u_mac_array_n_1,u_mac_array_n_2,u_mac_array_n_3,u_mac_array_n_4,u_mac_array_n_5,u_mac_array_n_6,u_mac_array_n_7,u_mac_array_n_8,u_mac_array_n_9,u_mac_array_n_10,u_mac_array_n_11,u_mac_array_n_12,u_mac_array_n_13,u_mac_array_n_14,u_mac_array_n_15,u_mac_array_n_16,u_mac_array_n_17}),
        .clk(clk),
        .\coef_reg[0][7] (\coef[0] ),
        .\coef_reg[1][7] (\coef[1] ),
        .\coef_reg[2][7] (\coef[2] ),
        .\coef_reg[3][7] (\coef[3] ),
        .\coef_reg[4][7] (\coef[4] ),
        .\coef_reg[5][7] (\coef[5] ),
        .\coef_reg[6][7] (\coef[6] ),
        .\coef_reg[7][7] (\coef[7] ),
        .\coef_reg[8][7] (\coef[8] ),
        .\p8_a1_reg[16]_i_2 (\p8_a1_reg[16]_i_2_n_0 ),
        .\prod[0] (\prod[0] ),
        .\prod[2] (\prod[2] ),
        .\prod[4] (\prod[4] ),
        .\prod[6] (\prod[6] ),
        .\s1_reg[0][15] ({u_mac_array_n_153,u_mac_array_n_154,u_mac_array_n_155,u_mac_array_n_156,u_mac_array_n_157,u_mac_array_n_158,u_mac_array_n_159,u_mac_array_n_160,u_mac_array_n_161,u_mac_array_n_162,u_mac_array_n_163,u_mac_array_n_164,u_mac_array_n_165,u_mac_array_n_166,u_mac_array_n_167,u_mac_array_n_168}),
        .\s1_reg[0][17] (u_mac_array_n_54),
        .\s1_reg[0][17]_0 (p_0_out),
        .\s1_reg[1][15] ({u_mac_array_n_169,u_mac_array_n_170,u_mac_array_n_171,u_mac_array_n_172,u_mac_array_n_173,u_mac_array_n_174,u_mac_array_n_175,u_mac_array_n_176,u_mac_array_n_177,u_mac_array_n_178,u_mac_array_n_179,u_mac_array_n_180,u_mac_array_n_181,u_mac_array_n_182,u_mac_array_n_183,u_mac_array_n_184}),
        .\s1_reg[1][17] (u_mac_array_n_36),
        .\s1_reg[1][17]_0 ({u_mac_array_n_37,u_mac_array_n_38,u_mac_array_n_39,u_mac_array_n_40,u_mac_array_n_41,u_mac_array_n_42,u_mac_array_n_43,u_mac_array_n_44,u_mac_array_n_45,u_mac_array_n_46,u_mac_array_n_47,u_mac_array_n_48,u_mac_array_n_49,u_mac_array_n_50,u_mac_array_n_51,u_mac_array_n_52,u_mac_array_n_53}),
        .\s1_reg[2][15] ({u_mac_array_n_185,u_mac_array_n_186,u_mac_array_n_187,u_mac_array_n_188,u_mac_array_n_189,u_mac_array_n_190,u_mac_array_n_191,u_mac_array_n_192,u_mac_array_n_193,u_mac_array_n_194,u_mac_array_n_195,u_mac_array_n_196,u_mac_array_n_197,u_mac_array_n_198,u_mac_array_n_199,u_mac_array_n_200}),
        .\s1_reg[2][17] (u_mac_array_n_18),
        .\s1_reg[2][17]_0 ({u_mac_array_n_19,u_mac_array_n_20,u_mac_array_n_21,u_mac_array_n_22,u_mac_array_n_23,u_mac_array_n_24,u_mac_array_n_25,u_mac_array_n_26,u_mac_array_n_27,u_mac_array_n_28,u_mac_array_n_29,u_mac_array_n_30,u_mac_array_n_31,u_mac_array_n_32,u_mac_array_n_33,u_mac_array_n_34,u_mac_array_n_35}),
        .\s1_reg[3][15] ({u_mac_array_n_201,u_mac_array_n_202,u_mac_array_n_203,u_mac_array_n_204,u_mac_array_n_205,u_mac_array_n_206,u_mac_array_n_207,u_mac_array_n_208,u_mac_array_n_209,u_mac_array_n_210,u_mac_array_n_211,u_mac_array_n_212,u_mac_array_n_213,u_mac_array_n_214,u_mac_array_n_215,u_mac_array_n_216}),
        .\s1_reg[3][17] (u_mac_array_n_0),
        .shift_en(shift_en),
        .\win[0][0] (\win[0][0] ),
        .\win[0][1] (\win[0][1] ),
        .\win[0][2] (\win[0][2] ),
        .\win[1][0] (\win[1][0] ),
        .\win[1][1] (\win[1][1] ),
        .\win[1][2] (\win[1][2] ),
        .\win[2][0] (\win[2][0] ),
        .\win[2][1] (\win[2][1] ),
        .\win[2][2] (\win[2][2] ));
  normalize u_normalize
       (.D({rounded_q1,rounded_d}),
        .Q(acc),
        .S({u_normalize_n_18,u_normalize_n_19,u_normalize_n_20,u_normalize_n_21}),
        .clk(clk),
        .out_data(out_data),
        .\out_shift_reg[2] (out_shift),
        .relu_en(relu_en),
        .\res_reg[15]_0 (u_normalize_n_1),
        .\rounded_q_reg[6]_0 ({u_normalize_n_22,u_normalize_n_23,u_normalize_n_24}),
        .rst_n(rst_n),
        .sat_flag(sat_flag),
        .shift_en(shift_en));
endmodule

module ctrl_fsm
   (relu_en,
    shift_en,
    done,
    busy,
    out_bank,
    Q,
    advance,
    \rounded_q_reg[16] ,
    out_valid,
    out_last,
    D,
    cfg_relu_en,
    clk,
    rst_n,
    rst_n_0,
    px_valid,
    cfg_start,
    px_last,
    cfg_num_kernels,
    rst_n_1,
    rst_n_2,
    cfg_out_shift,
    O,
    rounded_q1);
  output relu_en;
  output shift_en;
  output done;
  output busy;
  output [1:0]out_bank;
  output [1:0]Q;
  output advance;
  output [2:0]\rounded_q_reg[16] ;
  output out_valid;
  output out_last;
  output [18:0]D;
  input cfg_relu_en;
  input clk;
  input rst_n;
  input rst_n_0;
  input px_valid;
  input cfg_start;
  input px_last;
  input [2:0]cfg_num_kernels;
  input rst_n_1;
  input rst_n_2;
  input [2:0]cfg_out_shift;
  input [0:0]O;
  input [18:0]rounded_q1;

  wire [18:0]D;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire [0:0]O;
  wire [1:0]Q;
  wire accepted;
  wire advance;
  wire advanced_q;
  wire \bank_sel[0]_i_1_n_0 ;
  wire \bank_sel[1]_i_1_n_0 ;
  wire busy;
  wire busy0;
  wire busy_i_1_n_0;
  wire [2:0]cfg_num_kernels;
  wire [2:0]cfg_out_shift;
  wire cfg_relu_en;
  wire cfg_start;
  wire clk;
  wire [4:0]col_cnt;
  wire \col_cnt[0]_i_1_n_0 ;
  wire \col_cnt[1]_i_1_n_0 ;
  wire \col_cnt[2]_i_1_n_0 ;
  wire \col_cnt[3]_i_1_n_0 ;
  wire \col_cnt[4]_i_1_n_0 ;
  wire \col_cnt[4]_i_2_n_0 ;
  wire \col_cnt[4]_i_3_n_0 ;
  wire done;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire \flush_cnt[0]_i_1_n_0 ;
  wire \flush_cnt[1]_i_1_n_0 ;
  wire \flush_cnt[2]_i_1_n_0 ;
  wire \flush_cnt_reg_n_0_[0] ;
  wire \flush_cnt_reg_n_0_[1] ;
  wire \flush_cnt_reg_n_0_[2] ;
  wire kernel_cnt;
  wire \kernel_cnt[0]_i_1_n_0 ;
  wire \kernel_cnt[1]_i_1_n_0 ;
  wire \kernel_cnt[2]_i_2_n_0 ;
  wire \kernel_cnt[2]_i_3_n_0 ;
  wire \kernel_cnt_reg_n_0_[0] ;
  wire \kernel_cnt_reg_n_0_[1] ;
  wire \kernel_cnt_reg_n_0_[2] ;
  wire \meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_7_n_0 ;
  wire \meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_7_n_0 ;
  wire \meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ;
  wire \meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ;
  wire meta_bank_reg_gate__0_n_0;
  wire meta_bank_reg_gate_n_0;
  wire \meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ;
  wire \meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9_n_0 ;
  wire meta_last_reg_gate_n_0;
  wire \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_3_n_0 ;
  wire \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ;
  wire \meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9_n_0 ;
  wire meta_valid_reg_c_5_n_0;
  wire meta_valid_reg_c_6_n_0;
  wire meta_valid_reg_c_7_n_0;
  wire meta_valid_reg_c_8_n_0;
  wire meta_valid_reg_c_9_n_0;
  wire meta_valid_reg_gate_n_0;
  wire [1:0]out_bank;
  wire out_last;
  wire out_valid;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire [1:0]pending_bank;
  wire \pending_bank[0]_i_1_n_0 ;
  wire \pending_bank[1]_i_1_n_0 ;
  wire pending_last;
  wire pending_valid;
  wire pending_valid_reg_c_4_n_0;
  wire px_last;
  wire px_valid;
  wire relu_en;
  wire relu_en0;
  wire [18:0]rounded_q1;
  wire \rounded_q[0]_i_2_n_0 ;
  wire \rounded_q[10]_i_2_n_0 ;
  wire \rounded_q[11]_i_2_n_0 ;
  wire \rounded_q[12]_i_2_n_0 ;
  wire \rounded_q[13]_i_2_n_0 ;
  wire \rounded_q[14]_i_2_n_0 ;
  wire \rounded_q[15]_i_2_n_0 ;
  wire \rounded_q[16]_i_2_n_0 ;
  wire \rounded_q[1]_i_2_n_0 ;
  wire \rounded_q[2]_i_2_n_0 ;
  wire \rounded_q[3]_i_2_n_0 ;
  wire \rounded_q[4]_i_2_n_0 ;
  wire \rounded_q[5]_i_2_n_0 ;
  wire \rounded_q[6]_i_2_n_0 ;
  wire \rounded_q[7]_i_2_n_0 ;
  wire \rounded_q[8]_i_2_n_0 ;
  wire \rounded_q[9]_i_2_n_0 ;
  wire [2:0]\rounded_q_reg[16] ;
  wire \row_cnt[0]_i_1_n_0 ;
  wire \row_cnt[1]_i_1_n_0 ;
  wire \row_cnt[2]_i_1_n_0 ;
  wire \row_cnt[3]_i_1_n_0 ;
  wire \row_cnt[4]_i_1_n_0 ;
  wire \row_cnt[4]_i_2_n_0 ;
  wire \row_cnt[4]_i_4_n_0 ;
  wire \row_cnt_reg_n_0_[0] ;
  wire \row_cnt_reg_n_0_[1] ;
  wire \row_cnt_reg_n_0_[2] ;
  wire \row_cnt_reg_n_0_[3] ;
  wire \row_cnt_reg_n_0_[4] ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire shift_en;
  (* RTL_KEEP = "yes" *) wire [2:0]state;

  LUT4 #(
    .INIT(16'h14AA)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h03E0CCCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[0]),
        .I3(state[2]),
        .I4(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE8D4444444D4D4)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\kernel_cnt_reg_n_0_[2] ),
        .I1(cfg_num_kernels[2]),
        .I2(cfg_num_kernels[1]),
        .I3(cfg_num_kernels[0]),
        .I4(\kernel_cnt_reg_n_0_[1] ),
        .I5(\kernel_cnt_reg_n_0_[0] ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h01F0)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF01550100)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[1]),
        .I1(\FSM_sequential_state[2]_i_3_n_0 ),
        .I2(\flush_cnt_reg_n_0_[0] ),
        .I3(state[0]),
        .I4(cfg_start),
        .I5(\FSM_sequential_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(\flush_cnt_reg_n_0_[1] ),
        .I1(\flush_cnt_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFAEEAAAAAAEEAAAA)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state[2]),
        .I1(px_last),
        .I2(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_3_n_0 ),
        .I3(state[0]),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state[1]),
        .I1(px_valid),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(col_cnt[2]),
        .I1(col_cnt[1]),
        .I2(col_cnt[4]),
        .I3(col_cnt[3]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "LOAD_KERNEL:100,PRIME:011,FLUSH:001,IDLE:000,RUN:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "LOAD_KERNEL:100,PRIME:011,FLUSH:001,IDLE:000,RUN:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "LOAD_KERNEL:100,PRIME:011,FLUSH:001,IDLE:000,RUN:010" *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]));
  FDCE #(
    .INIT(1'b0)) 
    advanced_q_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(shift_en),
        .Q(advanced_q));
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \bank_sel[0]_i_1 
       (.I0(cfg_start),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(Q[0]),
        .O(\bank_sel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666666066666666)) 
    \bank_sel[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(state[0]),
        .I3(state[1]),
        .I4(state[2]),
        .I5(cfg_start),
        .O(\bank_sel[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bank_sel_reg[0] 
       (.C(clk),
        .CE(kernel_cnt),
        .CLR(rst_n_2),
        .D(\bank_sel[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_sel_reg[1] 
       (.C(clk),
        .CE(kernel_cnt),
        .CLR(rst_n_2),
        .D(\bank_sel[1]_i_1_n_0 ),
        .Q(Q[1]));
  LUT6 #(
    .INIT(64'h5555555D0000000C)) 
    busy_i_1
       (.I0(busy0),
        .I1(cfg_start),
        .I2(state[2]),
        .I3(state[1]),
        .I4(state[0]),
        .I5(busy),
        .O(busy_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    busy_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(busy_i_1_n_0),
        .Q(busy));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \col_cnt[0]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(col_cnt[0]),
        .O(\col_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \col_cnt[1]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(col_cnt[0]),
        .I2(col_cnt[1]),
        .O(\col_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \col_cnt[2]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(col_cnt[1]),
        .I2(col_cnt[0]),
        .I3(col_cnt[2]),
        .O(\col_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \col_cnt[3]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(col_cnt[2]),
        .I2(col_cnt[0]),
        .I3(col_cnt[1]),
        .I4(col_cnt[3]),
        .O(\col_cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \col_cnt[4]_i_1 
       (.I0(state[2]),
        .I1(state[1]),
        .I2(px_valid),
        .I3(\col_cnt[4]_i_3_n_0 ),
        .O(\col_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \col_cnt[4]_i_2 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(col_cnt[3]),
        .I2(col_cnt[1]),
        .I3(col_cnt[0]),
        .I4(col_cnt[2]),
        .I5(col_cnt[4]),
        .O(\col_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDDD1)) 
    \col_cnt[4]_i_3 
       (.I0(cfg_start),
        .I1(state[0]),
        .I2(\flush_cnt_reg_n_0_[0] ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(state[2]),
        .I5(state[1]),
        .O(\col_cnt[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[0] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\col_cnt[0]_i_1_n_0 ),
        .Q(col_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[1] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\col_cnt[1]_i_1_n_0 ),
        .Q(col_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[2] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\col_cnt[2]_i_1_n_0 ),
        .Q(col_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[3] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\col_cnt[3]_i_1_n_0 ),
        .Q(col_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[4] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\col_cnt[4]_i_2_n_0 ),
        .Q(col_cnt[4]));
  LUT5 #(
    .INIT(32'h00000080)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(\flush_cnt_reg_n_0_[2] ),
        .I2(\flush_cnt_reg_n_0_[1] ),
        .I3(\flush_cnt_reg_n_0_[0] ),
        .I4(done_i_3_n_0),
        .O(busy0));
  LUT6 #(
    .INIT(64'h55573BFF02FF003B)) 
    done_i_2
       (.I0(\kernel_cnt_reg_n_0_[0] ),
        .I1(cfg_num_kernels[1]),
        .I2(cfg_num_kernels[0]),
        .I3(cfg_num_kernels[2]),
        .I4(\kernel_cnt_reg_n_0_[1] ),
        .I5(\kernel_cnt_reg_n_0_[2] ),
        .O(done_i_2_n_0));
  LUT3 #(
    .INIT(8'hEF)) 
    done_i_3
       (.I0(state[2]),
        .I1(state[1]),
        .I2(state[0]),
        .O(done_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    done_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n),
        .D(busy0),
        .Q(done));
  LUT6 #(
    .INIT(64'h0200000000020202)) 
    \flush_cnt[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\flush_cnt_reg_n_0_[2] ),
        .I4(\flush_cnt_reg_n_0_[1] ),
        .I5(\flush_cnt_reg_n_0_[0] ),
        .O(\flush_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C000400080008)) 
    \flush_cnt[1]_i_1 
       (.I0(\flush_cnt_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\flush_cnt_reg_n_0_[2] ),
        .I5(\flush_cnt_reg_n_0_[1] ),
        .O(\flush_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000C0008000C0000)) 
    \flush_cnt[2]_i_1 
       (.I0(\flush_cnt_reg_n_0_[0] ),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(\flush_cnt_reg_n_0_[2] ),
        .I5(\flush_cnt_reg_n_0_[1] ),
        .O(\flush_cnt[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \flush_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\flush_cnt[0]_i_1_n_0 ),
        .Q(\flush_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \flush_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\flush_cnt[1]_i_1_n_0 ),
        .Q(\flush_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \flush_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\flush_cnt[2]_i_1_n_0 ),
        .Q(\flush_cnt_reg_n_0_[2] ));
  LUT6 #(
    .INIT(64'h00FF007000000000)) 
    \g_row[2].taps[2][2][7]_i_1 
       (.I0(\flush_cnt_reg_n_0_[1] ),
        .I1(\flush_cnt_reg_n_0_[2] ),
        .I2(state[0]),
        .I3(state[2]),
        .I4(state[1]),
        .I5(px_valid),
        .O(advance));
  LUT5 #(
    .INIT(32'h0000FFFD)) 
    \kernel_cnt[0]_i_1 
       (.I0(cfg_start),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .I4(\kernel_cnt_reg_n_0_[0] ),
        .O(\kernel_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FEFFFEFF0000)) 
    \kernel_cnt[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(cfg_start),
        .I4(\kernel_cnt_reg_n_0_[0] ),
        .I5(\kernel_cnt_reg_n_0_[1] ),
        .O(\kernel_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \kernel_cnt[2]_i_1 
       (.I0(done_i_3_n_0),
        .I1(\flush_cnt_reg_n_0_[0] ),
        .I2(\flush_cnt_reg_n_0_[1] ),
        .I3(\flush_cnt_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[1]_i_2_n_0 ),
        .I5(\kernel_cnt[2]_i_3_n_0 ),
        .O(kernel_cnt));
  LUT4 #(
    .INIT(16'h2A80)) 
    \kernel_cnt[2]_i_2 
       (.I0(\kernel_cnt[2]_i_3_n_0 ),
        .I1(\kernel_cnt_reg_n_0_[1] ),
        .I2(\kernel_cnt_reg_n_0_[0] ),
        .I3(\kernel_cnt_reg_n_0_[2] ),
        .O(\kernel_cnt[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \kernel_cnt[2]_i_3 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(cfg_start),
        .O(\kernel_cnt[2]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \kernel_cnt_reg[0] 
       (.C(clk),
        .CE(kernel_cnt),
        .CLR(rst_n_0),
        .D(\kernel_cnt[0]_i_1_n_0 ),
        .Q(\kernel_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \kernel_cnt_reg[1] 
       (.C(clk),
        .CE(kernel_cnt),
        .CLR(rst_n_0),
        .D(\kernel_cnt[1]_i_1_n_0 ),
        .Q(\kernel_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \kernel_cnt_reg[2] 
       (.C(clk),
        .CE(kernel_cnt),
        .CLR(rst_n_0),
        .D(\kernel_cnt[2]_i_2_n_0 ),
        .Q(\kernel_cnt_reg_n_0_[2] ));
  (* srl_bus_name = "\u_ctrl_fsm/meta_bank_reg[3] " *) 
  (* srl_name = "\u_ctrl_fsm/meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_7 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_bank[0]),
        .Q(\meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_7_n_0 ));
  (* srl_bus_name = "\u_ctrl_fsm/meta_bank_reg[3] " *) 
  (* srl_name = "\u_ctrl_fsm/meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_7 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_7 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_bank[1]),
        .Q(\meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_8 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_7_n_0 ),
        .Q(\meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_8 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_7_n_0 ),
        .Q(\meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \meta_bank_reg[5][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_bank_reg_gate__0_n_0),
        .Q(out_bank[0]));
  FDCE #(
    .INIT(1'b0)) 
    \meta_bank_reg[5][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_bank_reg_gate_n_0),
        .Q(out_bank[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    meta_bank_reg_gate
       (.I0(\meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ),
        .I1(meta_valid_reg_c_8_n_0),
        .O(meta_bank_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    meta_bank_reg_gate__0
       (.I0(\meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ),
        .I1(meta_valid_reg_c_8_n_0),
        .O(meta_bank_reg_gate__0_n_0));
  (* srl_bus_name = "\u_ctrl_fsm/meta_last_reg " *) 
  (* srl_name = "\u_ctrl_fsm/meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_last),
        .Q(\meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_1 
       (.I0(state[1]),
        .I1(px_valid),
        .I2(px_last),
        .O(pending_last));
  FDRE #(
    .INIT(1'b0)) 
    \meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ),
        .Q(\meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \meta_last_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_last_reg_gate_n_0),
        .Q(p_0_in1_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    meta_last_reg_gate
       (.I0(\meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9_n_0 ),
        .I1(meta_valid_reg_c_9_n_0),
        .O(meta_last_reg_gate_n_0));
  (* srl_bus_name = "\u_ctrl_fsm/meta_valid_reg " *) 
  (* srl_name = "\u_ctrl_fsm/meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_valid),
        .Q(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_1 
       (.I0(accepted),
        .I1(col_cnt[2]),
        .I2(col_cnt[1]),
        .I3(col_cnt[4]),
        .I4(col_cnt[3]),
        .I5(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_3_n_0 ),
        .O(pending_valid));
  LUT3 #(
    .INIT(8'h08)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_2 
       (.I0(px_valid),
        .I1(state[1]),
        .I2(state[2]),
        .O(accepted));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_3 
       (.I0(\row_cnt_reg_n_0_[2] ),
        .I1(\row_cnt_reg_n_0_[1] ),
        .I2(\row_cnt_reg_n_0_[4] ),
        .I3(\row_cnt_reg_n_0_[3] ),
        .O(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_8_n_0 ),
        .Q(\meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9_n_0 ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \meta_valid_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_gate_n_0),
        .Q(p_0_in2_in));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_5
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(pending_valid_reg_c_4_n_0),
        .Q(meta_valid_reg_c_5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_6
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_5_n_0),
        .Q(meta_valid_reg_c_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_7
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_6_n_0),
        .Q(meta_valid_reg_c_7_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_8
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_7_n_0),
        .Q(meta_valid_reg_c_8_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_9
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_8_n_0),
        .Q(meta_valid_reg_c_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    meta_valid_reg_gate
       (.I0(\meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_9_n_0 ),
        .I1(meta_valid_reg_c_9_n_0),
        .O(meta_valid_reg_gate_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    out_last_INST_0
       (.I0(p_0_in1_in),
        .I1(advanced_q),
        .O(out_last));
  FDCE #(
    .INIT(1'b0)) 
    \out_shift_reg[0] 
       (.C(clk),
        .CE(relu_en0),
        .CLR(rst_n),
        .D(cfg_out_shift[0]),
        .Q(\rounded_q_reg[16] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_shift_reg[1] 
       (.C(clk),
        .CE(relu_en0),
        .CLR(rst_n),
        .D(cfg_out_shift[1]),
        .Q(\rounded_q_reg[16] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_shift_reg[2] 
       (.C(clk),
        .CE(relu_en0),
        .CLR(rst_n),
        .D(cfg_out_shift[2]),
        .Q(\rounded_q_reg[16] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    out_valid_INST_0
       (.I0(p_0_in2_in),
        .I1(advanced_q),
        .O(out_valid));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \pending_bank[0]_i_1 
       (.I0(Q[0]),
        .I1(px_valid),
        .I2(state[1]),
        .I3(state[2]),
        .I4(pending_bank[0]),
        .O(\pending_bank[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \pending_bank[1]_i_1 
       (.I0(Q[1]),
        .I1(px_valid),
        .I2(state[1]),
        .I3(state[2]),
        .I4(pending_bank[1]),
        .O(\pending_bank[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pending_bank_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\pending_bank[0]_i_1_n_0 ),
        .Q(pending_bank[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pending_bank_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\pending_bank[1]_i_1_n_0 ),
        .Q(pending_bank[1]));
  FDCE #(
    .INIT(1'b0)) 
    pending_valid_reg_c_4
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(1'b1),
        .Q(pending_valid_reg_c_4_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    relu_en_i_1
       (.I0(cfg_start),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(relu_en0));
  FDCE #(
    .INIT(1'b0)) 
    relu_en_reg
       (.C(clk),
        .CE(relu_en0),
        .CLR(rst_n),
        .D(cfg_relu_en),
        .Q(relu_en));
  LUT6 #(
    .INIT(64'h00FF002A0000002A)) 
    \res[15]_i_1 
       (.I0(state[0]),
        .I1(\flush_cnt_reg_n_0_[1] ),
        .I2(\flush_cnt_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(state[1]),
        .I5(px_valid),
        .O(shift_en));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[0]_i_1 
       (.I0(\rounded_q[1]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[0]_i_2 
       (.I0(rounded_q1[6]),
        .I1(rounded_q1[2]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[4]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[0]),
        .O(\rounded_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[10]_i_1 
       (.I0(\rounded_q[11]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[10]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[10]_i_2 
       (.I0(rounded_q1[16]),
        .I1(rounded_q1[12]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[14]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[10]),
        .O(\rounded_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[11]_i_1 
       (.I0(\rounded_q[12]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[11]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[11]_i_2 
       (.I0(rounded_q1[17]),
        .I1(rounded_q1[13]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[15]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[11]),
        .O(\rounded_q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[12]_i_1 
       (.I0(\rounded_q[13]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[12]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[12]_i_2 
       (.I0(rounded_q1[18]),
        .I1(rounded_q1[14]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[16]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[12]),
        .O(\rounded_q[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[13]_i_1 
       (.I0(\rounded_q[14]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[13]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[13]_i_2 
       (.I0(O),
        .I1(rounded_q1[15]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[17]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[13]),
        .O(\rounded_q[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[14]_i_1 
       (.I0(\rounded_q[15]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[14]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[14]_i_2 
       (.I0(O),
        .I1(rounded_q1[16]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[18]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[14]),
        .O(\rounded_q[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[15]_i_1 
       (.I0(\rounded_q[16]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[15]_i_2_n_0 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \rounded_q[15]_i_2 
       (.I0(rounded_q1[17]),
        .I1(\rounded_q_reg[16] [1]),
        .I2(O),
        .I3(\rounded_q_reg[16] [2]),
        .I4(rounded_q1[15]),
        .O(\rounded_q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \rounded_q[16]_i_1 
       (.I0(\rounded_q_reg[16] [1]),
        .I1(O),
        .I2(\rounded_q_reg[16] [2]),
        .I3(rounded_q1[17]),
        .I4(\rounded_q_reg[16] [0]),
        .I5(\rounded_q[16]_i_2_n_0 ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \rounded_q[16]_i_2 
       (.I0(rounded_q1[18]),
        .I1(\rounded_q_reg[16] [1]),
        .I2(O),
        .I3(\rounded_q_reg[16] [2]),
        .I4(rounded_q1[16]),
        .O(\rounded_q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \rounded_q[17]_i_1 
       (.I0(rounded_q1[18]),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(O),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \rounded_q[18]_i_1 
       (.I0(\rounded_q_reg[16] [0]),
        .I1(\rounded_q_reg[16] [1]),
        .I2(O),
        .I3(\rounded_q_reg[16] [2]),
        .I4(rounded_q1[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[1]_i_1 
       (.I0(\rounded_q[2]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[1]_i_2 
       (.I0(rounded_q1[7]),
        .I1(rounded_q1[3]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[5]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[1]),
        .O(\rounded_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[2]_i_1 
       (.I0(\rounded_q[3]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[2]_i_2 
       (.I0(rounded_q1[8]),
        .I1(rounded_q1[4]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[6]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[2]),
        .O(\rounded_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[3]_i_1 
       (.I0(\rounded_q[4]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[3]_i_2 
       (.I0(rounded_q1[9]),
        .I1(rounded_q1[5]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[7]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[3]),
        .O(\rounded_q[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[4]_i_1 
       (.I0(\rounded_q[5]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[4]_i_2 
       (.I0(rounded_q1[10]),
        .I1(rounded_q1[6]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[8]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[4]),
        .O(\rounded_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[5]_i_1 
       (.I0(\rounded_q[6]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[5]_i_2 
       (.I0(rounded_q1[11]),
        .I1(rounded_q1[7]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[9]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[5]),
        .O(\rounded_q[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[6]_i_1 
       (.I0(\rounded_q[7]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[6]_i_2 
       (.I0(rounded_q1[12]),
        .I1(rounded_q1[8]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[10]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[6]),
        .O(\rounded_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[7]_i_1 
       (.I0(\rounded_q[8]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[7]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[7]_i_2 
       (.I0(rounded_q1[13]),
        .I1(rounded_q1[9]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[11]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[7]),
        .O(\rounded_q[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[8]_i_1 
       (.I0(\rounded_q[9]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[8]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[8]_i_2 
       (.I0(rounded_q1[14]),
        .I1(rounded_q1[10]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[12]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[8]),
        .O(\rounded_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[9]_i_1 
       (.I0(\rounded_q[10]_i_2_n_0 ),
        .I1(\rounded_q_reg[16] [0]),
        .I2(\rounded_q[9]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[9]_i_2 
       (.I0(rounded_q1[15]),
        .I1(rounded_q1[11]),
        .I2(\rounded_q_reg[16] [1]),
        .I3(rounded_q1[13]),
        .I4(\rounded_q_reg[16] [2]),
        .I5(rounded_q1[9]),
        .O(\rounded_q[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \row_cnt[0]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(\row_cnt_reg_n_0_[0] ),
        .O(\row_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \row_cnt[1]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(\row_cnt_reg_n_0_[0] ),
        .I2(\row_cnt_reg_n_0_[1] ),
        .O(\row_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \row_cnt[2]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(\row_cnt_reg_n_0_[1] ),
        .I2(\row_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[2] ),
        .O(\row_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \row_cnt[3]_i_1 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(\row_cnt_reg_n_0_[2] ),
        .I2(\row_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[1] ),
        .I4(\row_cnt_reg_n_0_[3] ),
        .O(\row_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \row_cnt[4]_i_1 
       (.I0(\row_cnt[4]_i_4_n_0 ),
        .I1(state[2]),
        .I2(state[1]),
        .I3(px_valid),
        .I4(col_cnt[4]),
        .I5(\col_cnt[4]_i_3_n_0 ),
        .O(\row_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \row_cnt[4]_i_2 
       (.I0(\col_cnt[4]_i_3_n_0 ),
        .I1(\row_cnt_reg_n_0_[3] ),
        .I2(\row_cnt_reg_n_0_[1] ),
        .I3(\row_cnt_reg_n_0_[0] ),
        .I4(\row_cnt_reg_n_0_[2] ),
        .I5(\row_cnt_reg_n_0_[4] ),
        .O(\row_cnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row_cnt[4]_i_4 
       (.I0(col_cnt[2]),
        .I1(col_cnt[0]),
        .I2(col_cnt[1]),
        .I3(col_cnt[3]),
        .O(\row_cnt[4]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[0] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\row_cnt[0]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[1] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\row_cnt[1]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[2] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\row_cnt[2]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[3] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\row_cnt[3]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[4] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\row_cnt[4]_i_2_n_0 ),
        .Q(\row_cnt_reg_n_0_[4] ));
endmodule

module kernel_regfile
   (\coef_reg[8][7]_0 ,
    \bank_reg[0][8][0]_0 ,
    \bank_reg[0][2][3]_0 ,
    \bank_reg[0][3][4]_0 ,
    p_0_out,
    p_0_out__0,
    p_0_out__1,
    p_0_out__2,
    p_0_out__3,
    p_0_out__4,
    p_0_out__5,
    p_0_out__6,
    p_0_out__7,
    Q,
    rst_n,
    kl_coef,
    clk,
    kl_addr,
    kl_bank,
    kl_valid);
  output \coef_reg[8][7]_0 ;
  output \bank_reg[0][8][0]_0 ;
  output \bank_reg[0][2][3]_0 ;
  output \bank_reg[0][3][4]_0 ;
  output [7:0]p_0_out;
  output [7:0]p_0_out__0;
  output [7:0]p_0_out__1;
  output [7:0]p_0_out__2;
  output [7:0]p_0_out__3;
  output [7:0]p_0_out__4;
  output [7:0]p_0_out__5;
  output [7:0]p_0_out__6;
  output [7:0]p_0_out__7;
  input [1:0]Q;
  input rst_n;
  input [7:0]kl_coef;
  input clk;
  input [3:0]kl_addr;
  input [1:0]kl_bank;
  input kl_valid;

  wire [1:0]Q;
  wire bank;
  wire \bank[0][1][7]_i_1_n_0 ;
  wire \bank[0][2][7]_i_1_n_0 ;
  wire \bank[0][3][7]_i_1_n_0 ;
  wire \bank[0][4][7]_i_1_n_0 ;
  wire \bank[0][5][7]_i_1_n_0 ;
  wire \bank[0][6][7]_i_1_n_0 ;
  wire \bank[0][7][7]_i_1_n_0 ;
  wire \bank[0][8][7]_i_1_n_0 ;
  wire \bank[1][0][7]_i_1_n_0 ;
  wire \bank[1][1][7]_i_1_n_0 ;
  wire \bank[1][2][7]_i_1_n_0 ;
  wire \bank[1][3][7]_i_1_n_0 ;
  wire \bank[1][4][7]_i_1_n_0 ;
  wire \bank[1][5][7]_i_1_n_0 ;
  wire \bank[1][6][7]_i_1_n_0 ;
  wire \bank[1][7][7]_i_1_n_0 ;
  wire \bank[1][8][7]_i_1_n_0 ;
  wire \bank[2][0][7]_i_1_n_0 ;
  wire \bank[2][0][7]_i_2_n_0 ;
  wire \bank[2][1][7]_i_1_n_0 ;
  wire \bank[2][2][7]_i_1_n_0 ;
  wire \bank[2][3][7]_i_1_n_0 ;
  wire \bank[2][4][7]_i_1_n_0 ;
  wire \bank[2][5][7]_i_1_n_0 ;
  wire \bank[2][6][7]_i_1_n_0 ;
  wire \bank[2][7][7]_i_1_n_0 ;
  wire \bank[2][8][7]_i_1_n_0 ;
  wire \bank[3][0][7]_i_1_n_0 ;
  wire \bank[3][0][7]_i_2_n_0 ;
  wire \bank[3][1][7]_i_1_n_0 ;
  wire \bank[3][2][7]_i_1_n_0 ;
  wire \bank[3][3][7]_i_1_n_0 ;
  wire \bank[3][4][7]_i_1_n_0 ;
  wire \bank[3][5][7]_i_1_n_0 ;
  wire \bank[3][6][7]_i_1_n_0 ;
  wire \bank[3][7][7]_i_1_n_0 ;
  wire \bank[3][8][7]_i_1_n_0 ;
  wire \bank[3][8][7]_i_2_n_0 ;
  wire [7:0]\bank_reg[0][0]_3 ;
  wire [7:0]\bank_reg[0][1]_7 ;
  wire \bank_reg[0][2][3]_0 ;
  wire [7:0]\bank_reg[0][2]_11 ;
  wire \bank_reg[0][3][4]_0 ;
  wire [7:0]\bank_reg[0][3]_15 ;
  wire [7:0]\bank_reg[0][4]_19 ;
  wire [7:0]\bank_reg[0][5]_23 ;
  wire [7:0]\bank_reg[0][6]_27 ;
  wire [7:0]\bank_reg[0][7]_31 ;
  wire \bank_reg[0][8][0]_0 ;
  wire [7:0]\bank_reg[0][8]_35 ;
  wire [7:0]\bank_reg[1][0]_2 ;
  wire [7:0]\bank_reg[1][1]_6 ;
  wire [7:0]\bank_reg[1][2]_10 ;
  wire [7:0]\bank_reg[1][3]_14 ;
  wire [7:0]\bank_reg[1][4]_18 ;
  wire [7:0]\bank_reg[1][5]_22 ;
  wire [7:0]\bank_reg[1][6]_26 ;
  wire [7:0]\bank_reg[1][7]_30 ;
  wire [7:0]\bank_reg[1][8]_34 ;
  wire [7:0]\bank_reg[2][0]_1 ;
  wire [7:0]\bank_reg[2][1]_5 ;
  wire [7:0]\bank_reg[2][2]_9 ;
  wire [7:0]\bank_reg[2][3]_13 ;
  wire [7:0]\bank_reg[2][4]_17 ;
  wire [7:0]\bank_reg[2][5]_21 ;
  wire [7:0]\bank_reg[2][6]_25 ;
  wire [7:0]\bank_reg[2][7]_29 ;
  wire [7:0]\bank_reg[2][8]_33 ;
  wire [7:0]\bank_reg[3][0]_0 ;
  wire [7:0]\bank_reg[3][1]_4 ;
  wire [7:0]\bank_reg[3][2]_8 ;
  wire [7:0]\bank_reg[3][3]_12 ;
  wire [7:0]\bank_reg[3][4]_16 ;
  wire [7:0]\bank_reg[3][5]_20 ;
  wire [7:0]\bank_reg[3][6]_24 ;
  wire [7:0]\bank_reg[3][7]_28 ;
  wire [7:0]\bank_reg[3][8]_32 ;
  wire clk;
  wire \coef[1][0]_i_1_n_0 ;
  wire \coef[1][1]_i_1_n_0 ;
  wire \coef[1][2]_i_1_n_0 ;
  wire \coef[1][3]_i_1_n_0 ;
  wire \coef[1][4]_i_1_n_0 ;
  wire \coef[1][5]_i_1_n_0 ;
  wire \coef[1][6]_i_1_n_0 ;
  wire \coef[1][7]_i_1_n_0 ;
  wire \coef[2][0]_i_1_n_0 ;
  wire \coef[2][1]_i_1_n_0 ;
  wire \coef[2][2]_i_1_n_0 ;
  wire \coef[2][3]_i_1_n_0 ;
  wire \coef[2][4]_i_1_n_0 ;
  wire \coef[2][5]_i_1_n_0 ;
  wire \coef[2][6]_i_1_n_0 ;
  wire \coef[2][7]_i_1_n_0 ;
  wire \coef[3][0]_i_1_n_0 ;
  wire \coef[3][1]_i_1_n_0 ;
  wire \coef[3][2]_i_1_n_0 ;
  wire \coef[3][3]_i_1_n_0 ;
  wire \coef[3][4]_i_1_n_0 ;
  wire \coef[3][5]_i_1_n_0 ;
  wire \coef[3][6]_i_1_n_0 ;
  wire \coef[3][7]_i_1_n_0 ;
  wire \coef[4][0]_i_1_n_0 ;
  wire \coef[4][1]_i_1_n_0 ;
  wire \coef[4][2]_i_1_n_0 ;
  wire \coef[4][3]_i_1_n_0 ;
  wire \coef[4][4]_i_1_n_0 ;
  wire \coef[4][5]_i_1_n_0 ;
  wire \coef[4][6]_i_1_n_0 ;
  wire \coef[4][7]_i_1_n_0 ;
  wire \coef[5][0]_i_1_n_0 ;
  wire \coef[5][1]_i_1_n_0 ;
  wire \coef[5][2]_i_1_n_0 ;
  wire \coef[5][3]_i_1_n_0 ;
  wire \coef[5][4]_i_1_n_0 ;
  wire \coef[5][5]_i_1_n_0 ;
  wire \coef[5][6]_i_1_n_0 ;
  wire \coef[5][7]_i_1_n_0 ;
  wire \coef[6][0]_i_1_n_0 ;
  wire \coef[6][1]_i_1_n_0 ;
  wire \coef[6][2]_i_1_n_0 ;
  wire \coef[6][3]_i_1_n_0 ;
  wire \coef[6][4]_i_1_n_0 ;
  wire \coef[6][5]_i_1_n_0 ;
  wire \coef[6][6]_i_1_n_0 ;
  wire \coef[6][7]_i_1_n_0 ;
  wire \coef[7][0]_i_1_n_0 ;
  wire \coef[7][1]_i_1_n_0 ;
  wire \coef[7][2]_i_1_n_0 ;
  wire \coef[7][3]_i_1_n_0 ;
  wire \coef[7][4]_i_1_n_0 ;
  wire \coef[7][5]_i_1_n_0 ;
  wire \coef[7][6]_i_1_n_0 ;
  wire \coef[7][7]_i_1_n_0 ;
  wire \coef[8][0]_i_1_n_0 ;
  wire \coef[8][1]_i_1_n_0 ;
  wire \coef[8][2]_i_1_n_0 ;
  wire \coef[8][3]_i_1_n_0 ;
  wire \coef[8][4]_i_1_n_0 ;
  wire \coef[8][5]_i_1_n_0 ;
  wire \coef[8][6]_i_1_n_0 ;
  wire \coef[8][7]_i_1_n_0 ;
  wire \coef_reg[8][7]_0 ;
  wire [3:0]kl_addr;
  wire [1:0]kl_bank;
  wire [7:0]kl_coef;
  wire kl_valid;
  wire [7:0]p_0_in;
  wire [7:0]p_0_out;
  wire [7:0]p_0_out__0;
  wire [7:0]p_0_out__1;
  wire [7:0]p_0_out__2;
  wire [7:0]p_0_out__3;
  wire [7:0]p_0_out__4;
  wire [7:0]p_0_out__5;
  wire [7:0]p_0_out__6;
  wire [7:0]p_0_out__7;
  wire rst_n;

  LUT5 #(
    .INIT(32'h00010000)) 
    \bank[0][0][7]_i_1 
       (.I0(kl_addr[0]),
        .I1(kl_addr[1]),
        .I2(kl_bank[1]),
        .I3(kl_addr[2]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(bank));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[0][1][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(\bank[0][1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[0][2][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[1]),
        .I3(kl_addr[0]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(\bank[0][2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \bank[0][3][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(\bank[0][3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \bank[0][4][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[0][4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bank[0][5][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[0][5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bank[0][6][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[0]),
        .I4(kl_addr[1]),
        .O(\bank[0][6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \bank[0][7][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[0][7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \bank[0][8][7]_i_1 
       (.I0(kl_bank[0]),
        .I1(kl_valid),
        .I2(kl_addr[3]),
        .I3(\bank[3][8][7]_i_2_n_0 ),
        .I4(kl_bank[1]),
        .I5(kl_addr[2]),
        .O(\bank[0][8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \bank[1][0][7]_i_1 
       (.I0(kl_addr[0]),
        .I1(kl_addr[1]),
        .I2(kl_bank[1]),
        .I3(kl_addr[2]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[1][0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[1][1][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[1][1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[1][2][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[1]),
        .I3(kl_addr[0]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[1][2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \bank[1][3][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[1][3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \bank[1][4][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[1][4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bank[1][5][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[1][5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bank[1][6][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[0]),
        .I4(kl_addr[1]),
        .O(\bank[1][6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \bank[1][7][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[1][7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \bank[1][8][7]_i_1 
       (.I0(kl_bank[0]),
        .I1(kl_valid),
        .I2(kl_addr[3]),
        .I3(\bank[3][8][7]_i_2_n_0 ),
        .I4(kl_bank[1]),
        .I5(kl_addr[2]),
        .O(\bank[1][8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[2][0][7]_i_1 
       (.I0(kl_addr[0]),
        .I1(kl_addr[1]),
        .I2(kl_bank[1]),
        .I3(kl_addr[2]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(\bank[2][0][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \bank[2][0][7]_i_2 
       (.I0(kl_addr[3]),
        .I1(kl_valid),
        .I2(kl_bank[0]),
        .O(\bank[2][0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[2][1][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(\bank[2][1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[2][2][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[1]),
        .I3(kl_addr[0]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(\bank[2][2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bank[2][3][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[2][0][7]_i_2_n_0 ),
        .O(\bank[2][3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \bank[2][4][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[2][4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bank[2][5][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[2][5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bank[2][6][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[0]),
        .I4(kl_addr[1]),
        .O(\bank[2][6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bank[2][7][7]_i_1 
       (.I0(\bank[2][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[2][7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \bank[2][8][7]_i_1 
       (.I0(kl_bank[0]),
        .I1(kl_valid),
        .I2(kl_addr[3]),
        .I3(\bank[3][8][7]_i_2_n_0 ),
        .I4(kl_bank[1]),
        .I5(kl_addr[2]),
        .O(\bank[2][8][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[3][0][7]_i_1 
       (.I0(kl_addr[0]),
        .I1(kl_addr[1]),
        .I2(kl_bank[1]),
        .I3(kl_addr[2]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[3][0][7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bank[3][0][7]_i_2 
       (.I0(kl_addr[3]),
        .I1(kl_valid),
        .I2(kl_bank[0]),
        .O(\bank[3][0][7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[3][1][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[3][1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[3][2][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[1]),
        .I3(kl_addr[0]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[3][2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bank[3][3][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_2_n_0 ),
        .O(\bank[3][3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \bank[3][4][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[3][4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bank[3][5][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[3][5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bank[3][6][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[0]),
        .I4(kl_addr[1]),
        .O(\bank[3][6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bank[3][7][7]_i_1 
       (.I0(\bank[3][0][7]_i_2_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[3][7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \bank[3][8][7]_i_1 
       (.I0(kl_bank[0]),
        .I1(kl_valid),
        .I2(kl_addr[3]),
        .I3(\bank[3][8][7]_i_2_n_0 ),
        .I4(kl_bank[1]),
        .I5(kl_addr[2]),
        .O(\bank[3][8][7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \bank[3][8][7]_i_2 
       (.I0(kl_addr[0]),
        .I1(kl_addr[1]),
        .O(\bank[3][8][7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][0] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][0]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][1] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][0]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][2] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][0]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][3] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][0]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][4] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][0]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][5] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][0]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][6] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][0]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][7] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][0]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][0] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][1]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][1] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][1]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][2] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][1]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][3] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][1]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][4] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][1]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][5] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][1]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][6] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][1]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][7] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][1]_7 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][0] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][2]_11 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][1] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][2]_11 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][2] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][2]_11 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][3] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][2]_11 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][4] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][2]_11 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][5] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][2]_11 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][6] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][2]_11 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][7] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][2]_11 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][0] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][3]_15 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][1] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][3]_15 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][2] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][3]_15 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][3] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][3]_15 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][4] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][3]_15 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][5] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][3]_15 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][6] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][3]_15 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][7] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][3]_15 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][0] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][4]_19 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][1] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][4]_19 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][2] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][4]_19 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][3] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][4]_19 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][4] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][4]_19 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][5] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][4]_19 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][6] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][4]_19 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][7] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][4]_19 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][0] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][5]_23 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][1] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][5]_23 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][2] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][5]_23 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][3] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][5]_23 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][4] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][5]_23 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][5] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][5]_23 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][6] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][5]_23 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][7] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][5]_23 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][0] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][6]_27 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][1] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][6]_27 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][2] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][6]_27 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][3] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][6]_27 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][4] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][6]_27 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][5] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][6]_27 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][6] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][6]_27 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][7] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][6]_27 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][0] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][7]_31 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][1] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][7]_31 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][2] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][7]_31 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][3] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][7]_31 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][4] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][7]_31 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][5] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][7]_31 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][6] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][7]_31 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][7] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][7]_31 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][0] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][8]_35 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][1] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][8]_35 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][2] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][8]_35 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][3] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][8]_35 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][4] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][8]_35 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][5] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][8]_35 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][6] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][8]_35 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][7] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][8]_35 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][0] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][0]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][1] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][0]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][2] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][0]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][3] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][0]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][4] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][0]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][5] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][0]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][6] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][0]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][7] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][0]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][0] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][1]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][1] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][1]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][2] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][1]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][3] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][1]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][4] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][1]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][5] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][1]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][6] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][1]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][7] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][1]_6 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][0] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][2]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][1] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][2]_10 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][2] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][2]_10 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][3] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][2]_10 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][4] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][2]_10 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][5] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][2]_10 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][6] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][2]_10 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][7] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][2]_10 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][0] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][3]_14 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][1] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][3]_14 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][2] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][3]_14 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][3] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][3]_14 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][4] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][3]_14 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][5] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][3]_14 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][6] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][3]_14 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][7] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][3]_14 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][0] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][4]_18 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][1] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][4]_18 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][2] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][4]_18 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][3] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][4]_18 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][4] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][4]_18 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][5] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][4]_18 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][6] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][4]_18 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][7] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][4]_18 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][0] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][5]_22 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][1] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][5]_22 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][2] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][5]_22 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][3] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][5]_22 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][4] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][5]_22 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][5] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][5]_22 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][6] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][5]_22 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][7] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][5]_22 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][0] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][6]_26 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][1] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][6]_26 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][2] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][6]_26 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][3] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][6]_26 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][4] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][6]_26 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][5] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][6]_26 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][6] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][6]_26 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][7] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][6]_26 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][0] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][7]_30 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][1] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][7]_30 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][2] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][7]_30 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][3] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][7]_30 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][4] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][7]_30 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][5] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][7]_30 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][6] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][7]_30 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][7] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][7]_30 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][0] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][8]_34 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][1] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][8]_34 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][2] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][8]_34 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][3] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][8]_34 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][4] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][8]_34 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][5] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][8]_34 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][6] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][8]_34 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][7] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][8]_34 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][0] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][0]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][1] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][0]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][2] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][0]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][3] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][0]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][4] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][0]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][5] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][0]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][6] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][0]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][7] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][0]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][0] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][1]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][1] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][1]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][2] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][1]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][3] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][1]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][4] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][1]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][5] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][1]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][6] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][1]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][7] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][1]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][0] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][2]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][1] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][2]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][2] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][2]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][3] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][2]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][4] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][2]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][5] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][2]_9 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][6] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][2]_9 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][7] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][2]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][0] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][3]_13 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][1] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][3]_13 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][2] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][3]_13 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][3] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][3]_13 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][4] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][3]_13 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][5] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][3]_13 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][6] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][3]_13 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][7] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][3]_13 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][0] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][4]_17 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][1] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][4]_17 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][2] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][4]_17 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][3] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][4]_17 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][4] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][4]_17 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][5] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][4]_17 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][6] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][4]_17 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][7] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][4]_17 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][0] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][5]_21 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][1] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][5]_21 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][2] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][5]_21 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][3] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][5]_21 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][4] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][5]_21 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][5] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][5]_21 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][6] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][5]_21 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][7] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][5]_21 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][0] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][6]_25 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][1] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][6]_25 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][2] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][6]_25 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][3] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][6]_25 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][4] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][6]_25 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][5] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][6]_25 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][6] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][6]_25 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][7] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][6]_25 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][0] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][7]_29 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][1] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][7]_29 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][2] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][7]_29 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][3] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][7]_29 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][4] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][7]_29 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][5] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][7]_29 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][6] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][7]_29 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][7] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][7]_29 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][0] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][8]_33 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][1] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][8]_33 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][2] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][8]_33 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][3] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][8]_33 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][4] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][8]_33 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][5] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][8]_33 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][6] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][8]_33 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][7] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][8]_33 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][0] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][1] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][2] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][3] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][4] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][5] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][6] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][7] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][0] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][1]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][1] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][1]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][2] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][1]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][3] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][1]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][4] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][1]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][5] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][1]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][6] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][1]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][7] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][1]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][0] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][2]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][1] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][2]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][2] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][2]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][3] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][2]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][4] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][2]_8 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][5] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][2]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][6] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][2]_8 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][7] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][3]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][2]_8 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][0] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][3]_12 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][1] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][3]_12 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][2] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][3]_12 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][3] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][3]_12 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][4] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][3]_12 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][5] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][3]_12 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][6] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][3]_12 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][7] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][3]_12 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][0] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][4]_16 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][1] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][4]_16 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][2] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][4]_16 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][3] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][4]_16 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][4] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][4]_16 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][5] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][4]_16 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][6] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][4]_16 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][7] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][4]_16 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][0] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][5]_20 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][1] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][5]_20 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][2] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][5]_20 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][3] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][5]_20 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][4] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][5]_20 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][5] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][5]_20 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][6] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][5]_20 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][7] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][5]_20 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][0] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][6]_24 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][1] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][6]_24 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][2] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][6]_24 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][3] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][6]_24 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][4] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][6]_24 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][5] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][6]_24 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][6] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][6]_24 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][7] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][6]_24 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][0] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][7]_28 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][1] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][7]_28 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][2] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][7]_28 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][3] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][7]_28 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][4] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][7]_28 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][5] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][7]_28 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][6] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][7]_28 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][7] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][8][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][7]_28 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][0] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][8]_32 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][1] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][8]_32 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][2] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][8]_32 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][3] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][8]_32 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][4] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][8]_32 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][5] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][8]_32 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][6] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][8]_32 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][7] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][3][4]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][8]_32 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \bank_sel[1]_i_2 
       (.I0(rst_n),
        .O(\bank_reg[0][2][3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    busy_i_2
       (.I0(rst_n),
        .O(\bank_reg[0][3][4]_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][0]_i_1 
       (.I0(\bank_reg[3][0]_0 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [0]),
        .I4(\bank_reg[1][0]_2 [0]),
        .I5(\bank_reg[0][0]_3 [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][1]_i_1 
       (.I0(\bank_reg[3][0]_0 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [1]),
        .I4(\bank_reg[1][0]_2 [1]),
        .I5(\bank_reg[0][0]_3 [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][2]_i_1 
       (.I0(\bank_reg[3][0]_0 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [2]),
        .I4(\bank_reg[1][0]_2 [2]),
        .I5(\bank_reg[0][0]_3 [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][3]_i_1 
       (.I0(\bank_reg[3][0]_0 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [3]),
        .I4(\bank_reg[1][0]_2 [3]),
        .I5(\bank_reg[0][0]_3 [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][4]_i_1 
       (.I0(\bank_reg[3][0]_0 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [4]),
        .I4(\bank_reg[1][0]_2 [4]),
        .I5(\bank_reg[0][0]_3 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][5]_i_1 
       (.I0(\bank_reg[3][0]_0 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [5]),
        .I4(\bank_reg[1][0]_2 [5]),
        .I5(\bank_reg[0][0]_3 [5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][6]_i_1 
       (.I0(\bank_reg[3][0]_0 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [6]),
        .I4(\bank_reg[1][0]_2 [6]),
        .I5(\bank_reg[0][0]_3 [6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[0][7]_i_1 
       (.I0(\bank_reg[3][0]_0 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][0]_1 [7]),
        .I4(\bank_reg[1][0]_2 [7]),
        .I5(\bank_reg[0][0]_3 [7]),
        .O(p_0_in[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \coef[0][7]_i_2 
       (.I0(rst_n),
        .O(\coef_reg[8][7]_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][0]_i_1 
       (.I0(\bank_reg[3][1]_4 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [0]),
        .I4(\bank_reg[1][1]_6 [0]),
        .I5(\bank_reg[0][1]_7 [0]),
        .O(\coef[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][1]_i_1 
       (.I0(\bank_reg[3][1]_4 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [1]),
        .I4(\bank_reg[1][1]_6 [1]),
        .I5(\bank_reg[0][1]_7 [1]),
        .O(\coef[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][2]_i_1 
       (.I0(\bank_reg[3][1]_4 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [2]),
        .I4(\bank_reg[1][1]_6 [2]),
        .I5(\bank_reg[0][1]_7 [2]),
        .O(\coef[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][3]_i_1 
       (.I0(\bank_reg[3][1]_4 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [3]),
        .I4(\bank_reg[1][1]_6 [3]),
        .I5(\bank_reg[0][1]_7 [3]),
        .O(\coef[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][4]_i_1 
       (.I0(\bank_reg[3][1]_4 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [4]),
        .I4(\bank_reg[1][1]_6 [4]),
        .I5(\bank_reg[0][1]_7 [4]),
        .O(\coef[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][5]_i_1 
       (.I0(\bank_reg[3][1]_4 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [5]),
        .I4(\bank_reg[1][1]_6 [5]),
        .I5(\bank_reg[0][1]_7 [5]),
        .O(\coef[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][6]_i_1 
       (.I0(\bank_reg[3][1]_4 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [6]),
        .I4(\bank_reg[1][1]_6 [6]),
        .I5(\bank_reg[0][1]_7 [6]),
        .O(\coef[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[1][7]_i_1 
       (.I0(\bank_reg[3][1]_4 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][1]_5 [7]),
        .I4(\bank_reg[1][1]_6 [7]),
        .I5(\bank_reg[0][1]_7 [7]),
        .O(\coef[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][0]_i_1 
       (.I0(\bank_reg[3][2]_8 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [0]),
        .I4(\bank_reg[1][2]_10 [0]),
        .I5(\bank_reg[0][2]_11 [0]),
        .O(\coef[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][1]_i_1 
       (.I0(\bank_reg[3][2]_8 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [1]),
        .I4(\bank_reg[1][2]_10 [1]),
        .I5(\bank_reg[0][2]_11 [1]),
        .O(\coef[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][2]_i_1 
       (.I0(\bank_reg[3][2]_8 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [2]),
        .I4(\bank_reg[1][2]_10 [2]),
        .I5(\bank_reg[0][2]_11 [2]),
        .O(\coef[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][3]_i_1 
       (.I0(\bank_reg[3][2]_8 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [3]),
        .I4(\bank_reg[1][2]_10 [3]),
        .I5(\bank_reg[0][2]_11 [3]),
        .O(\coef[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][4]_i_1 
       (.I0(\bank_reg[3][2]_8 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [4]),
        .I4(\bank_reg[1][2]_10 [4]),
        .I5(\bank_reg[0][2]_11 [4]),
        .O(\coef[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][5]_i_1 
       (.I0(\bank_reg[3][2]_8 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [5]),
        .I4(\bank_reg[1][2]_10 [5]),
        .I5(\bank_reg[0][2]_11 [5]),
        .O(\coef[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][6]_i_1 
       (.I0(\bank_reg[3][2]_8 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [6]),
        .I4(\bank_reg[1][2]_10 [6]),
        .I5(\bank_reg[0][2]_11 [6]),
        .O(\coef[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[2][7]_i_1 
       (.I0(\bank_reg[3][2]_8 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][2]_9 [7]),
        .I4(\bank_reg[1][2]_10 [7]),
        .I5(\bank_reg[0][2]_11 [7]),
        .O(\coef[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][0]_i_1 
       (.I0(\bank_reg[3][3]_12 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [0]),
        .I4(\bank_reg[1][3]_14 [0]),
        .I5(\bank_reg[0][3]_15 [0]),
        .O(\coef[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][1]_i_1 
       (.I0(\bank_reg[3][3]_12 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [1]),
        .I4(\bank_reg[1][3]_14 [1]),
        .I5(\bank_reg[0][3]_15 [1]),
        .O(\coef[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][2]_i_1 
       (.I0(\bank_reg[3][3]_12 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [2]),
        .I4(\bank_reg[1][3]_14 [2]),
        .I5(\bank_reg[0][3]_15 [2]),
        .O(\coef[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][3]_i_1 
       (.I0(\bank_reg[3][3]_12 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [3]),
        .I4(\bank_reg[1][3]_14 [3]),
        .I5(\bank_reg[0][3]_15 [3]),
        .O(\coef[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][4]_i_1 
       (.I0(\bank_reg[3][3]_12 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [4]),
        .I4(\bank_reg[1][3]_14 [4]),
        .I5(\bank_reg[0][3]_15 [4]),
        .O(\coef[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][5]_i_1 
       (.I0(\bank_reg[3][3]_12 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [5]),
        .I4(\bank_reg[1][3]_14 [5]),
        .I5(\bank_reg[0][3]_15 [5]),
        .O(\coef[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][6]_i_1 
       (.I0(\bank_reg[3][3]_12 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [6]),
        .I4(\bank_reg[1][3]_14 [6]),
        .I5(\bank_reg[0][3]_15 [6]),
        .O(\coef[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[3][7]_i_1 
       (.I0(\bank_reg[3][3]_12 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][3]_13 [7]),
        .I4(\bank_reg[1][3]_14 [7]),
        .I5(\bank_reg[0][3]_15 [7]),
        .O(\coef[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][0]_i_1 
       (.I0(\bank_reg[3][4]_16 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [0]),
        .I4(\bank_reg[1][4]_18 [0]),
        .I5(\bank_reg[0][4]_19 [0]),
        .O(\coef[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][1]_i_1 
       (.I0(\bank_reg[3][4]_16 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [1]),
        .I4(\bank_reg[1][4]_18 [1]),
        .I5(\bank_reg[0][4]_19 [1]),
        .O(\coef[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][2]_i_1 
       (.I0(\bank_reg[3][4]_16 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [2]),
        .I4(\bank_reg[1][4]_18 [2]),
        .I5(\bank_reg[0][4]_19 [2]),
        .O(\coef[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][3]_i_1 
       (.I0(\bank_reg[3][4]_16 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [3]),
        .I4(\bank_reg[1][4]_18 [3]),
        .I5(\bank_reg[0][4]_19 [3]),
        .O(\coef[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][4]_i_1 
       (.I0(\bank_reg[3][4]_16 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [4]),
        .I4(\bank_reg[1][4]_18 [4]),
        .I5(\bank_reg[0][4]_19 [4]),
        .O(\coef[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][5]_i_1 
       (.I0(\bank_reg[3][4]_16 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [5]),
        .I4(\bank_reg[1][4]_18 [5]),
        .I5(\bank_reg[0][4]_19 [5]),
        .O(\coef[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][6]_i_1 
       (.I0(\bank_reg[3][4]_16 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [6]),
        .I4(\bank_reg[1][4]_18 [6]),
        .I5(\bank_reg[0][4]_19 [6]),
        .O(\coef[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[4][7]_i_1 
       (.I0(\bank_reg[3][4]_16 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][4]_17 [7]),
        .I4(\bank_reg[1][4]_18 [7]),
        .I5(\bank_reg[0][4]_19 [7]),
        .O(\coef[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][0]_i_1 
       (.I0(\bank_reg[3][5]_20 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [0]),
        .I4(\bank_reg[1][5]_22 [0]),
        .I5(\bank_reg[0][5]_23 [0]),
        .O(\coef[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][1]_i_1 
       (.I0(\bank_reg[3][5]_20 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [1]),
        .I4(\bank_reg[1][5]_22 [1]),
        .I5(\bank_reg[0][5]_23 [1]),
        .O(\coef[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][2]_i_1 
       (.I0(\bank_reg[3][5]_20 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [2]),
        .I4(\bank_reg[1][5]_22 [2]),
        .I5(\bank_reg[0][5]_23 [2]),
        .O(\coef[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][3]_i_1 
       (.I0(\bank_reg[3][5]_20 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [3]),
        .I4(\bank_reg[1][5]_22 [3]),
        .I5(\bank_reg[0][5]_23 [3]),
        .O(\coef[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][4]_i_1 
       (.I0(\bank_reg[3][5]_20 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [4]),
        .I4(\bank_reg[1][5]_22 [4]),
        .I5(\bank_reg[0][5]_23 [4]),
        .O(\coef[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][5]_i_1 
       (.I0(\bank_reg[3][5]_20 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [5]),
        .I4(\bank_reg[1][5]_22 [5]),
        .I5(\bank_reg[0][5]_23 [5]),
        .O(\coef[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][6]_i_1 
       (.I0(\bank_reg[3][5]_20 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [6]),
        .I4(\bank_reg[1][5]_22 [6]),
        .I5(\bank_reg[0][5]_23 [6]),
        .O(\coef[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[5][7]_i_1 
       (.I0(\bank_reg[3][5]_20 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][5]_21 [7]),
        .I4(\bank_reg[1][5]_22 [7]),
        .I5(\bank_reg[0][5]_23 [7]),
        .O(\coef[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][0]_i_1 
       (.I0(\bank_reg[3][6]_24 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [0]),
        .I4(\bank_reg[1][6]_26 [0]),
        .I5(\bank_reg[0][6]_27 [0]),
        .O(\coef[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][1]_i_1 
       (.I0(\bank_reg[3][6]_24 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [1]),
        .I4(\bank_reg[1][6]_26 [1]),
        .I5(\bank_reg[0][6]_27 [1]),
        .O(\coef[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][2]_i_1 
       (.I0(\bank_reg[3][6]_24 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [2]),
        .I4(\bank_reg[1][6]_26 [2]),
        .I5(\bank_reg[0][6]_27 [2]),
        .O(\coef[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][3]_i_1 
       (.I0(\bank_reg[3][6]_24 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [3]),
        .I4(\bank_reg[1][6]_26 [3]),
        .I5(\bank_reg[0][6]_27 [3]),
        .O(\coef[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][4]_i_1 
       (.I0(\bank_reg[3][6]_24 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [4]),
        .I4(\bank_reg[1][6]_26 [4]),
        .I5(\bank_reg[0][6]_27 [4]),
        .O(\coef[6][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][5]_i_1 
       (.I0(\bank_reg[3][6]_24 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [5]),
        .I4(\bank_reg[1][6]_26 [5]),
        .I5(\bank_reg[0][6]_27 [5]),
        .O(\coef[6][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][6]_i_1 
       (.I0(\bank_reg[3][6]_24 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [6]),
        .I4(\bank_reg[1][6]_26 [6]),
        .I5(\bank_reg[0][6]_27 [6]),
        .O(\coef[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[6][7]_i_1 
       (.I0(\bank_reg[3][6]_24 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][6]_25 [7]),
        .I4(\bank_reg[1][6]_26 [7]),
        .I5(\bank_reg[0][6]_27 [7]),
        .O(\coef[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][0]_i_1 
       (.I0(\bank_reg[3][7]_28 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [0]),
        .I4(\bank_reg[1][7]_30 [0]),
        .I5(\bank_reg[0][7]_31 [0]),
        .O(\coef[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][1]_i_1 
       (.I0(\bank_reg[3][7]_28 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [1]),
        .I4(\bank_reg[1][7]_30 [1]),
        .I5(\bank_reg[0][7]_31 [1]),
        .O(\coef[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][2]_i_1 
       (.I0(\bank_reg[3][7]_28 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [2]),
        .I4(\bank_reg[1][7]_30 [2]),
        .I5(\bank_reg[0][7]_31 [2]),
        .O(\coef[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][3]_i_1 
       (.I0(\bank_reg[3][7]_28 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [3]),
        .I4(\bank_reg[1][7]_30 [3]),
        .I5(\bank_reg[0][7]_31 [3]),
        .O(\coef[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][4]_i_1 
       (.I0(\bank_reg[3][7]_28 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [4]),
        .I4(\bank_reg[1][7]_30 [4]),
        .I5(\bank_reg[0][7]_31 [4]),
        .O(\coef[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][5]_i_1 
       (.I0(\bank_reg[3][7]_28 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [5]),
        .I4(\bank_reg[1][7]_30 [5]),
        .I5(\bank_reg[0][7]_31 [5]),
        .O(\coef[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][6]_i_1 
       (.I0(\bank_reg[3][7]_28 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [6]),
        .I4(\bank_reg[1][7]_30 [6]),
        .I5(\bank_reg[0][7]_31 [6]),
        .O(\coef[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[7][7]_i_1 
       (.I0(\bank_reg[3][7]_28 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][7]_29 [7]),
        .I4(\bank_reg[1][7]_30 [7]),
        .I5(\bank_reg[0][7]_31 [7]),
        .O(\coef[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][0]_i_1 
       (.I0(\bank_reg[3][8]_32 [0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [0]),
        .I4(\bank_reg[1][8]_34 [0]),
        .I5(\bank_reg[0][8]_35 [0]),
        .O(\coef[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][1]_i_1 
       (.I0(\bank_reg[3][8]_32 [1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [1]),
        .I4(\bank_reg[1][8]_34 [1]),
        .I5(\bank_reg[0][8]_35 [1]),
        .O(\coef[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][2]_i_1 
       (.I0(\bank_reg[3][8]_32 [2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [2]),
        .I4(\bank_reg[1][8]_34 [2]),
        .I5(\bank_reg[0][8]_35 [2]),
        .O(\coef[8][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][3]_i_1 
       (.I0(\bank_reg[3][8]_32 [3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [3]),
        .I4(\bank_reg[1][8]_34 [3]),
        .I5(\bank_reg[0][8]_35 [3]),
        .O(\coef[8][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][4]_i_1 
       (.I0(\bank_reg[3][8]_32 [4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [4]),
        .I4(\bank_reg[1][8]_34 [4]),
        .I5(\bank_reg[0][8]_35 [4]),
        .O(\coef[8][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][5]_i_1 
       (.I0(\bank_reg[3][8]_32 [5]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [5]),
        .I4(\bank_reg[1][8]_34 [5]),
        .I5(\bank_reg[0][8]_35 [5]),
        .O(\coef[8][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][6]_i_1 
       (.I0(\bank_reg[3][8]_32 [6]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [6]),
        .I4(\bank_reg[1][8]_34 [6]),
        .I5(\bank_reg[0][8]_35 [6]),
        .O(\coef[8][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8FB383BC8CB080)) 
    \coef[8][7]_i_1 
       (.I0(\bank_reg[3][8]_32 [7]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\bank_reg[2][8]_33 [7]),
        .I4(\bank_reg[1][8]_34 [7]),
        .I5(\bank_reg[0][8]_35 [7]),
        .O(\coef[8][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[0]),
        .Q(p_0_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[1]),
        .Q(p_0_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[2]),
        .Q(p_0_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[3]),
        .Q(p_0_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[4]),
        .Q(p_0_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[5]),
        .Q(p_0_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[6]),
        .Q(p_0_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(p_0_in[7]),
        .Q(p_0_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][0]_i_1_n_0 ),
        .Q(p_0_out__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][1]_i_1_n_0 ),
        .Q(p_0_out__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][2]_i_1_n_0 ),
        .Q(p_0_out__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][3]_i_1_n_0 ),
        .Q(p_0_out__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][4]_i_1_n_0 ),
        .Q(p_0_out__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][5]_i_1_n_0 ),
        .Q(p_0_out__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][6]_i_1_n_0 ),
        .Q(p_0_out__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[1][7]_i_1_n_0 ),
        .Q(p_0_out__0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][0]_i_1_n_0 ),
        .Q(p_0_out__1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][1]_i_1_n_0 ),
        .Q(p_0_out__1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][2]_i_1_n_0 ),
        .Q(p_0_out__1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][3]_i_1_n_0 ),
        .Q(p_0_out__1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][4]_i_1_n_0 ),
        .Q(p_0_out__1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][5]_i_1_n_0 ),
        .Q(p_0_out__1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][6]_i_1_n_0 ),
        .Q(p_0_out__1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[2][7]_i_1_n_0 ),
        .Q(p_0_out__1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][0]_i_1_n_0 ),
        .Q(p_0_out__2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][1]_i_1_n_0 ),
        .Q(p_0_out__2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][2]_i_1_n_0 ),
        .Q(p_0_out__2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][3]_i_1_n_0 ),
        .Q(p_0_out__2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][4]_i_1_n_0 ),
        .Q(p_0_out__2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][5]_i_1_n_0 ),
        .Q(p_0_out__2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][6]_i_1_n_0 ),
        .Q(p_0_out__2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[3][7]_i_1_n_0 ),
        .Q(p_0_out__2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][0]_i_1_n_0 ),
        .Q(p_0_out__3[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][1]_i_1_n_0 ),
        .Q(p_0_out__3[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][2]_i_1_n_0 ),
        .Q(p_0_out__3[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][3]_i_1_n_0 ),
        .Q(p_0_out__3[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][4]_i_1_n_0 ),
        .Q(p_0_out__3[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][5]_i_1_n_0 ),
        .Q(p_0_out__3[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][6]_i_1_n_0 ),
        .Q(p_0_out__3[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[4][7]_i_1_n_0 ),
        .Q(p_0_out__3[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][0]_i_1_n_0 ),
        .Q(p_0_out__4[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][1]_i_1_n_0 ),
        .Q(p_0_out__4[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][2]_i_1_n_0 ),
        .Q(p_0_out__4[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][3]_i_1_n_0 ),
        .Q(p_0_out__4[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][4]_i_1_n_0 ),
        .Q(p_0_out__4[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][5]_i_1_n_0 ),
        .Q(p_0_out__4[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][6]_i_1_n_0 ),
        .Q(p_0_out__4[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[5][7]_i_1_n_0 ),
        .Q(p_0_out__4[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][0]_i_1_n_0 ),
        .Q(p_0_out__5[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][1]_i_1_n_0 ),
        .Q(p_0_out__5[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][2]_i_1_n_0 ),
        .Q(p_0_out__5[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][3]_i_1_n_0 ),
        .Q(p_0_out__5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][4]_i_1_n_0 ),
        .Q(p_0_out__5[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][5]_i_1_n_0 ),
        .Q(p_0_out__5[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][6]_i_1_n_0 ),
        .Q(p_0_out__5[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[6][7]_i_1_n_0 ),
        .Q(p_0_out__5[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][0]_i_1_n_0 ),
        .Q(p_0_out__6[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][1]_i_1_n_0 ),
        .Q(p_0_out__6[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][2]_i_1_n_0 ),
        .Q(p_0_out__6[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][3]_i_1_n_0 ),
        .Q(p_0_out__6[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][4]_i_1_n_0 ),
        .Q(p_0_out__6[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][5]_i_1_n_0 ),
        .Q(p_0_out__6[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][6]_i_1_n_0 ),
        .Q(p_0_out__6[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[7][7]_i_1_n_0 ),
        .Q(p_0_out__6[7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][0]_i_1_n_0 ),
        .Q(p_0_out__7[0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][1]_i_1_n_0 ),
        .Q(p_0_out__7[1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][2]_i_1_n_0 ),
        .Q(p_0_out__7[2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][3]_i_1_n_0 ),
        .Q(p_0_out__7[3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][4]_i_1_n_0 ),
        .Q(p_0_out__7[4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][5]_i_1_n_0 ),
        .Q(p_0_out__7[5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][6]_i_1_n_0 ),
        .Q(p_0_out__7[6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\coef_reg[8][7]_0 ),
        .D(\coef[8][7]_i_1_n_0 ),
        .Q(p_0_out__7[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \row_cnt[4]_i_3 
       (.I0(rst_n),
        .O(\bank_reg[0][8][0]_0 ));
endmodule

module line_window
   (Q,
    p_0_out__2,
    \g_row[2].g_tap[1].taps_reg[2][1][7]_0 ,
    \g_row[2].g_tap[0].taps_reg[2][0][7]_0 ,
    \g_row[1].g_tap[1].taps_reg[1][1][7]_0 ,
    \g_row[1].g_tap[0].taps_reg[1][0][7]_0 ,
    \g_row[0].g_tap[1].taps_reg[0][1][7]_0 ,
    \g_row[0].g_tap[0].taps_reg[0][0][7]_0 ,
    p_0_out,
    advance,
    clk,
    px_data,
    rst_n);
  output [7:0]Q;
  output [7:0]p_0_out__2;
  output [7:0]\g_row[2].g_tap[1].taps_reg[2][1][7]_0 ;
  output [7:0]\g_row[2].g_tap[0].taps_reg[2][0][7]_0 ;
  output [7:0]\g_row[1].g_tap[1].taps_reg[1][1][7]_0 ;
  output [7:0]\g_row[1].g_tap[0].taps_reg[1][0][7]_0 ;
  output [7:0]\g_row[0].g_tap[1].taps_reg[0][1][7]_0 ;
  output [7:0]\g_row[0].g_tap[0].taps_reg[0][0][7]_0 ;
  output [7:0]p_0_out;
  input advance;
  input clk;
  input [7:0]px_data;
  input rst_n;

  wire [7:0]Q;
  wire advance;
  wire clk;
  wire [7:0]\g_delay[0].srl_reg[28]_1 ;
  wire [7:0]\g_delay[1].srl_reg[28]_0 ;
  wire [7:0]\g_row[0].g_tap[0].taps_reg[0][0][7]_0 ;
  wire [7:0]\g_row[0].g_tap[1].taps_reg[0][1][7]_0 ;
  wire [7:0]\g_row[1].g_tap[0].taps_reg[1][0][7]_0 ;
  wire [7:0]\g_row[1].g_tap[1].taps_reg[1][1][7]_0 ;
  wire [7:0]\g_row[2].g_tap[0].taps_reg[2][0][7]_0 ;
  wire [7:0]\g_row[2].g_tap[1].taps_reg[2][1][7]_0 ;
  wire [7:0]p_0_out;
  wire [7:0]p_0_out__2;
  wire [7:0]px_data;
  wire rst_n;
  wire \NLW_g_delay[0].srl_reg[28][0]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[0].srl_reg[28][1]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[0].srl_reg[28][2]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[0].srl_reg[28][3]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[0].srl_reg[28][4]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[0].srl_reg[28][5]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[0].srl_reg[28][6]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[0].srl_reg[28][7]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][0]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][1]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][2]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][3]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][4]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][5]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][6]_srl29_Q31_UNCONNECTED ;
  wire \NLW_g_delay[1].srl_reg[28][7]_srl29_Q31_UNCONNECTED ;

  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][0]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][0]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[0]),
        .Q(\g_delay[0].srl_reg[28]_1 [0]),
        .Q31(\NLW_g_delay[0].srl_reg[28][0]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][1]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][1]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[1]),
        .Q(\g_delay[0].srl_reg[28]_1 [1]),
        .Q31(\NLW_g_delay[0].srl_reg[28][1]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][2]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][2]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[2]),
        .Q(\g_delay[0].srl_reg[28]_1 [2]),
        .Q31(\NLW_g_delay[0].srl_reg[28][2]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][3]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][3]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[3]),
        .Q(\g_delay[0].srl_reg[28]_1 [3]),
        .Q31(\NLW_g_delay[0].srl_reg[28][3]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][4]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][4]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[4]),
        .Q(\g_delay[0].srl_reg[28]_1 [4]),
        .Q31(\NLW_g_delay[0].srl_reg[28][4]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][5]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][5]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[5]),
        .Q(\g_delay[0].srl_reg[28]_1 [5]),
        .Q31(\NLW_g_delay[0].srl_reg[28][5]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][6]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][6]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[6]),
        .Q(\g_delay[0].srl_reg[28]_1 [6]),
        .Q31(\NLW_g_delay[0].srl_reg[28][6]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][7]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][7]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(p_0_out__2[7]),
        .Q(\g_delay[0].srl_reg[28]_1 [7]),
        .Q31(\NLW_g_delay[0].srl_reg[28][7]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][0]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][0]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[0]),
        .Q(\g_delay[1].srl_reg[28]_0 [0]),
        .Q31(\NLW_g_delay[1].srl_reg[28][0]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][1]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][1]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[1]),
        .Q(\g_delay[1].srl_reg[28]_0 [1]),
        .Q31(\NLW_g_delay[1].srl_reg[28][1]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][2]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][2]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[2]),
        .Q(\g_delay[1].srl_reg[28]_0 [2]),
        .Q31(\NLW_g_delay[1].srl_reg[28][2]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][3]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][3]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[3]),
        .Q(\g_delay[1].srl_reg[28]_0 [3]),
        .Q31(\NLW_g_delay[1].srl_reg[28][3]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][4]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][4]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[4]),
        .Q(\g_delay[1].srl_reg[28]_0 [4]),
        .Q31(\NLW_g_delay[1].srl_reg[28][4]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][5]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][5]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[5]),
        .Q(\g_delay[1].srl_reg[28]_0 [5]),
        .Q31(\NLW_g_delay[1].srl_reg[28][5]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][6]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][6]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[6]),
        .Q(\g_delay[1].srl_reg[28]_0 [6]),
        .Q31(\NLW_g_delay[1].srl_reg[28][6]_srl29_Q31_UNCONNECTED ));
  (* srl_bus_name = "\u_line_window/g_delay[1].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[1].srl_reg[28][7]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[1].srl_reg[28][7]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(Q[7]),
        .Q(\g_delay[1].srl_reg[28]_0 [7]),
        .Q31(\NLW_g_delay[1].srl_reg[28][7]_srl29_Q31_UNCONNECTED ));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .Q(p_0_out[0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]),
        .Q(p_0_out[1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .Q(p_0_out[2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [3]),
        .Q(p_0_out[3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [4]),
        .Q(p_0_out[4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [5]),
        .Q(p_0_out[5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [6]),
        .Q(p_0_out[6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [7]),
        .Q(p_0_out[7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [3]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [4]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [5]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [6]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [7]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [0]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [1]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [2]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [3]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [4]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [5]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [6]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[0].srl_reg[28]_1 [7]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .Q(p_0_out__2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]),
        .Q(p_0_out__2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .Q(p_0_out__2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [3]),
        .Q(p_0_out__2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [4]),
        .Q(p_0_out__2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [5]),
        .Q(p_0_out__2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [6]),
        .Q(p_0_out__2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [7]),
        .Q(p_0_out__2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [3]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [4]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [5]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [6]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [7]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [0]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [1]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [2]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [3]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [4]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [5]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [6]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_delay[1].srl_reg[28]_0 [7]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [3]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [4]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [5]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [6]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [7]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[0]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[1]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[2]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[3]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[4]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[5]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[6]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n),
        .D(px_data[7]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [7]));
endmodule

module mac_array
   (\s1_reg[3][17] ,
    P,
    \s1_reg[2][17] ,
    \s1_reg[2][17]_0 ,
    \s1_reg[1][17] ,
    \s1_reg[1][17]_0 ,
    \s1_reg[0][17] ,
    \s1_reg[0][17]_0 ,
    \prod[0] ,
    \prod[2] ,
    \prod[4] ,
    \prod[6] ,
    D,
    \s1_reg[0][15] ,
    \s1_reg[1][15] ,
    \s1_reg[2][15] ,
    \s1_reg[3][15] ,
    \p8_a1_reg[16]_i_2 ,
    shift_en,
    clk,
    \coef_reg[0][7] ,
    \win[0][0] ,
    \coef_reg[1][7] ,
    \win[0][1] ,
    \coef_reg[2][7] ,
    \win[0][2] ,
    \coef_reg[3][7] ,
    \win[1][0] ,
    \coef_reg[4][7] ,
    \win[1][1] ,
    \coef_reg[5][7] ,
    \win[1][2] ,
    \coef_reg[6][7] ,
    \win[2][0] ,
    \coef_reg[7][7] ,
    \win[2][1] ,
    \coef_reg[8][7] ,
    \win[2][2] );
  output [0:0]\s1_reg[3][17] ;
  output [16:0]P;
  output [0:0]\s1_reg[2][17] ;
  output [16:0]\s1_reg[2][17]_0 ;
  output [0:0]\s1_reg[1][17] ;
  output [16:0]\s1_reg[1][17]_0 ;
  output [0:0]\s1_reg[0][17] ;
  output [16:0]\s1_reg[0][17]_0 ;
  output [15:0]\prod[0] ;
  output [15:0]\prod[2] ;
  output [15:0]\prod[4] ;
  output [15:0]\prod[6] ;
  output [16:0]D;
  output [15:0]\s1_reg[0][15] ;
  output [15:0]\s1_reg[1][15] ;
  output [15:0]\s1_reg[2][15] ;
  output [15:0]\s1_reg[3][15] ;
  input \p8_a1_reg[16]_i_2 ;
  input shift_en;
  input clk;
  input [7:0]\coef_reg[0][7] ;
  input [7:0]\win[0][0] ;
  input [7:0]\coef_reg[1][7] ;
  input [7:0]\win[0][1] ;
  input [7:0]\coef_reg[2][7] ;
  input [7:0]\win[0][2] ;
  input [7:0]\coef_reg[3][7] ;
  input [7:0]\win[1][0] ;
  input [7:0]\coef_reg[4][7] ;
  input [7:0]\win[1][1] ;
  input [7:0]\coef_reg[5][7] ;
  input [7:0]\win[1][2] ;
  input [7:0]\coef_reg[6][7] ;
  input [7:0]\win[2][0] ;
  input [7:0]\coef_reg[7][7] ;
  input [7:0]\win[2][1] ;
  input [7:0]\coef_reg[8][7] ;
  input [7:0]\win[2][2] ;

  wire [16:0]D;
  wire [16:0]P;
  wire clk;
  wire [7:0]\coef_reg[0][7] ;
  wire [7:0]\coef_reg[1][7] ;
  wire [7:0]\coef_reg[2][7] ;
  wire [7:0]\coef_reg[3][7] ;
  wire [7:0]\coef_reg[4][7] ;
  wire [7:0]\coef_reg[5][7] ;
  wire [7:0]\coef_reg[6][7] ;
  wire [7:0]\coef_reg[7][7] ;
  wire [7:0]\coef_reg[8][7] ;
  wire \p8_a1_reg[16]_i_2 ;
  wire p_0_out__0_n_89;
  wire p_0_out__2_n_89;
  wire p_0_out__4_n_89;
  wire p_0_out__6_n_89;
  wire p_0_out__7_n_100;
  wire p_0_out__7_n_101;
  wire p_0_out__7_n_102;
  wire p_0_out__7_n_103;
  wire p_0_out__7_n_104;
  wire p_0_out__7_n_105;
  wire p_0_out__7_n_89;
  wire p_0_out__7_n_90;
  wire p_0_out__7_n_91;
  wire p_0_out__7_n_92;
  wire p_0_out__7_n_93;
  wire p_0_out__7_n_94;
  wire p_0_out__7_n_95;
  wire p_0_out__7_n_96;
  wire p_0_out__7_n_97;
  wire p_0_out__7_n_98;
  wire p_0_out__7_n_99;
  wire [15:0]\prod[0] ;
  wire [15:0]\prod[2] ;
  wire [15:0]\prod[4] ;
  wire [15:0]\prod[6] ;
  wire [15:0]\s1_reg[0][15] ;
  wire [0:0]\s1_reg[0][17] ;
  wire [16:0]\s1_reg[0][17]_0 ;
  wire [15:0]\s1_reg[1][15] ;
  wire [0:0]\s1_reg[1][17] ;
  wire [16:0]\s1_reg[1][17]_0 ;
  wire [15:0]\s1_reg[2][15] ;
  wire [0:0]\s1_reg[2][17] ;
  wire [16:0]\s1_reg[2][17]_0 ;
  wire [15:0]\s1_reg[3][15] ;
  wire [0:0]\s1_reg[3][17] ;
  wire shift_en;
  wire [7:0]\win[0][0] ;
  wire [7:0]\win[0][1] ;
  wire [7:0]\win[0][2] ;
  wire [7:0]\win[1][0] ;
  wire [7:0]\win[1][1] ;
  wire [7:0]\win[1][2] ;
  wire [7:0]\win[2][0] ;
  wire [7:0]\win[2][1] ;
  wire [7:0]\win[2][2] ;
  wire NLW_p_0_out_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__0_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__0_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__0_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__0_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__1_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__1_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__1_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__1_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__2_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__2_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__2_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__2_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__2_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__2_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__2_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__2_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__2_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__2_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__2_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__3_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__3_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__3_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__3_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__3_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__3_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__3_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__3_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__3_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__3_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__3_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__4_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__4_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__4_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__4_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__4_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__4_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__4_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__4_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__4_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__4_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__4_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__5_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__5_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__5_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__5_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__5_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__5_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__5_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__5_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__5_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__5_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__5_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__6_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__6_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__6_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__6_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__6_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__6_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__6_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__6_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__6_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__6_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__6_PCOUT_UNCONNECTED;
  wire NLW_p_0_out__7_CARRYCASCOUT_UNCONNECTED;
  wire NLW_p_0_out__7_MULTSIGNOUT_UNCONNECTED;
  wire NLW_p_0_out__7_OVERFLOW_UNCONNECTED;
  wire NLW_p_0_out__7_PATTERNBDETECT_UNCONNECTED;
  wire NLW_p_0_out__7_PATTERNDETECT_UNCONNECTED;
  wire NLW_p_0_out__7_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_p_0_out__7_ACOUT_UNCONNECTED;
  wire [17:0]NLW_p_0_out__7_BCOUT_UNCONNECTED;
  wire [3:0]NLW_p_0_out__7_CARRYOUT_UNCONNECTED;
  wire [47:17]NLW_p_0_out__7_P_UNCONNECTED;
  wire [47:0]NLW_p_0_out__7_PCOUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[0]_i_1 
       (.I0(p_0_out__7_n_105),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[10]_i_1 
       (.I0(p_0_out__7_n_95),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[10]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[11]_i_1 
       (.I0(p_0_out__7_n_94),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[11]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[12]_i_1 
       (.I0(p_0_out__7_n_93),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[12]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[13]_i_1 
       (.I0(p_0_out__7_n_92),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[13]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[14]_i_1 
       (.I0(p_0_out__7_n_91),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[15]_i_1 
       (.I0(p_0_out__7_n_90),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[15]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[16]_i_1 
       (.I0(p_0_out__7_n_89),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[16]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[1]_i_1 
       (.I0(p_0_out__7_n_104),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[2]_i_1 
       (.I0(p_0_out__7_n_103),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[2]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[3]_i_1 
       (.I0(p_0_out__7_n_102),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[4]_i_1 
       (.I0(p_0_out__7_n_101),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[4]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[5]_i_1 
       (.I0(p_0_out__7_n_100),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[5]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[6]_i_1 
       (.I0(p_0_out__7_n_99),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[6]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[7]_i_1 
       (.I0(p_0_out__7_n_98),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[7]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[8]_i_1 
       (.I0(p_0_out__7_n_97),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[8]));
  LUT2 #(
    .INIT(4'h8)) 
    \p8_a1[9]_i_1 
       (.I0(p_0_out__7_n_96),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(D[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[0][0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] [7],\coef_reg[0][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out_P_UNCONNECTED[47:17],\s1_reg[0][17]_0 }),
        .PATTERNBDETECT(NLW_p_0_out_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[0][1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] [7],\coef_reg[1][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__0_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__0_P_UNCONNECTED[47:17],p_0_out__0_n_89,\s1_reg[0][15] }),
        .PATTERNBDETECT(NLW_p_0_out__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__0_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[0][2] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] [7],\coef_reg[2][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__1_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__1_P_UNCONNECTED[47:17],\s1_reg[1][17]_0 }),
        .PATTERNBDETECT(NLW_p_0_out__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__1_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__1_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__2
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[1][0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__2_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] [7],\coef_reg[3][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__2_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__2_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__2_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__2_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__2_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__2_P_UNCONNECTED[47:17],p_0_out__2_n_89,\s1_reg[1][15] }),
        .PATTERNBDETECT(NLW_p_0_out__2_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__2_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__2_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__2_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__3
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[1][1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__3_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] [7],\coef_reg[4][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__3_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__3_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__3_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__3_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__3_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__3_P_UNCONNECTED[47:17],\s1_reg[2][17]_0 }),
        .PATTERNBDETECT(NLW_p_0_out__3_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__3_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__3_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__3_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__4
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[1][2] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__4_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] [7],\coef_reg[5][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__4_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__4_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__4_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__4_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__4_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__4_P_UNCONNECTED[47:17],p_0_out__4_n_89,\s1_reg[2][15] }),
        .PATTERNBDETECT(NLW_p_0_out__4_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__4_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__4_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__4_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__5
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[2][0] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__5_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] [7],\coef_reg[6][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__5_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__5_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__5_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__5_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__5_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__5_P_UNCONNECTED[47:17],P}),
        .PATTERNBDETECT(NLW_p_0_out__5_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__5_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__5_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__5_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__6
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[2][1] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__6_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] [7],\coef_reg[7][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__6_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__6_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__6_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__6_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__6_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__6_P_UNCONNECTED[47:17],p_0_out__6_n_89,\s1_reg[3][15] }),
        .PATTERNBDETECT(NLW_p_0_out__6_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__6_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__6_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__6_UNDERFLOW_UNCONNECTED));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-12 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(1),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    p_0_out__7
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\win[2][2] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_p_0_out__7_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] [7],\coef_reg[8][7] }),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_p_0_out__7_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_p_0_out__7_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_p_0_out__7_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(shift_en),
        .CLK(clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_p_0_out__7_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_p_0_out__7_OVERFLOW_UNCONNECTED),
        .P({NLW_p_0_out__7_P_UNCONNECTED[47:17],p_0_out__7_n_89,p_0_out__7_n_90,p_0_out__7_n_91,p_0_out__7_n_92,p_0_out__7_n_93,p_0_out__7_n_94,p_0_out__7_n_95,p_0_out__7_n_96,p_0_out__7_n_97,p_0_out__7_n_98,p_0_out__7_n_99,p_0_out__7_n_100,p_0_out__7_n_101,p_0_out__7_n_102,p_0_out__7_n_103,p_0_out__7_n_104,p_0_out__7_n_105}),
        .PATTERNBDETECT(NLW_p_0_out__7_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_p_0_out__7_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_p_0_out__7_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_p_0_out__7_UNDERFLOW_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][11]_i_2 
       (.I0(\s1_reg[0][17]_0 [11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [11]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][11]_i_3 
       (.I0(\s1_reg[0][17]_0 [10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [10]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][11]_i_4 
       (.I0(\s1_reg[0][17]_0 [9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [9]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][11]_i_5 
       (.I0(\s1_reg[0][17]_0 [8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][15]_i_2 
       (.I0(\s1_reg[0][17]_0 [15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [15]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][15]_i_3 
       (.I0(\s1_reg[0][17]_0 [14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [14]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][15]_i_4 
       (.I0(\s1_reg[0][17]_0 [13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [13]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][15]_i_5 
       (.I0(\s1_reg[0][17]_0 [12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [12]));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[0][17]_i_3 
       (.I0(\s1_reg[0][17]_0 [16]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__0_n_89),
        .O(\s1_reg[0][17] ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][3]_i_2 
       (.I0(\s1_reg[0][17]_0 [3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][3]_i_3 
       (.I0(\s1_reg[0][17]_0 [2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][3]_i_4 
       (.I0(\s1_reg[0][17]_0 [1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][3]_i_5 
       (.I0(\s1_reg[0][17]_0 [0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][7]_i_2 
       (.I0(\s1_reg[0][17]_0 [7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][7]_i_3 
       (.I0(\s1_reg[0][17]_0 [6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][7]_i_4 
       (.I0(\s1_reg[0][17]_0 [5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [5]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[0][7]_i_5 
       (.I0(\s1_reg[0][17]_0 [4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[0] [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][11]_i_2 
       (.I0(\s1_reg[1][17]_0 [11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [11]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][11]_i_3 
       (.I0(\s1_reg[1][17]_0 [10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [10]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][11]_i_4 
       (.I0(\s1_reg[1][17]_0 [9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [9]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][11]_i_5 
       (.I0(\s1_reg[1][17]_0 [8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][15]_i_2 
       (.I0(\s1_reg[1][17]_0 [15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [15]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][15]_i_3 
       (.I0(\s1_reg[1][17]_0 [14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [14]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][15]_i_4 
       (.I0(\s1_reg[1][17]_0 [13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [13]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][15]_i_5 
       (.I0(\s1_reg[1][17]_0 [12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [12]));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[1][17]_i_3 
       (.I0(\s1_reg[1][17]_0 [16]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__2_n_89),
        .O(\s1_reg[1][17] ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][3]_i_2 
       (.I0(\s1_reg[1][17]_0 [3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][3]_i_3 
       (.I0(\s1_reg[1][17]_0 [2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][3]_i_4 
       (.I0(\s1_reg[1][17]_0 [1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][3]_i_5 
       (.I0(\s1_reg[1][17]_0 [0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][7]_i_2 
       (.I0(\s1_reg[1][17]_0 [7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][7]_i_3 
       (.I0(\s1_reg[1][17]_0 [6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][7]_i_4 
       (.I0(\s1_reg[1][17]_0 [5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [5]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[1][7]_i_5 
       (.I0(\s1_reg[1][17]_0 [4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[2] [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][11]_i_2 
       (.I0(\s1_reg[2][17]_0 [11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [11]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][11]_i_3 
       (.I0(\s1_reg[2][17]_0 [10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [10]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][11]_i_4 
       (.I0(\s1_reg[2][17]_0 [9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [9]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][11]_i_5 
       (.I0(\s1_reg[2][17]_0 [8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][15]_i_2 
       (.I0(\s1_reg[2][17]_0 [15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [15]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][15]_i_3 
       (.I0(\s1_reg[2][17]_0 [14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [14]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][15]_i_4 
       (.I0(\s1_reg[2][17]_0 [13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [13]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][15]_i_5 
       (.I0(\s1_reg[2][17]_0 [12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [12]));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[2][17]_i_3 
       (.I0(\s1_reg[2][17]_0 [16]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__4_n_89),
        .O(\s1_reg[2][17] ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][3]_i_2 
       (.I0(\s1_reg[2][17]_0 [3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][3]_i_3 
       (.I0(\s1_reg[2][17]_0 [2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][3]_i_4 
       (.I0(\s1_reg[2][17]_0 [1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][3]_i_5 
       (.I0(\s1_reg[2][17]_0 [0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][7]_i_2 
       (.I0(\s1_reg[2][17]_0 [7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][7]_i_3 
       (.I0(\s1_reg[2][17]_0 [6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][7]_i_4 
       (.I0(\s1_reg[2][17]_0 [5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [5]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[2][7]_i_5 
       (.I0(\s1_reg[2][17]_0 [4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[4] [4]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][11]_i_2 
       (.I0(P[11]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [11]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][11]_i_3 
       (.I0(P[10]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [10]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][11]_i_4 
       (.I0(P[9]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [9]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][11]_i_5 
       (.I0(P[8]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [8]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][15]_i_2 
       (.I0(P[15]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [15]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][15]_i_3 
       (.I0(P[14]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [14]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][15]_i_4 
       (.I0(P[13]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [13]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][15]_i_5 
       (.I0(P[12]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [12]));
  LUT3 #(
    .INIT(8'h48)) 
    \s1[3][17]_i_4 
       (.I0(P[16]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .I2(p_0_out__6_n_89),
        .O(\s1_reg[3][17] ));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][3]_i_2 
       (.I0(P[3]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [3]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][3]_i_3 
       (.I0(P[2]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [2]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][3]_i_4 
       (.I0(P[1]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][3]_i_5 
       (.I0(P[0]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][7]_i_2 
       (.I0(P[7]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [7]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][7]_i_3 
       (.I0(P[6]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [6]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][7]_i_4 
       (.I0(P[5]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [5]));
  LUT2 #(
    .INIT(4'h8)) 
    \s1[3][7]_i_5 
       (.I0(P[4]),
        .I1(\p8_a1_reg[16]_i_2 ),
        .O(\prod[6] [4]));
endmodule

module normalize
   (sat_flag,
    \res_reg[15]_0 ,
    out_data,
    S,
    \rounded_q_reg[6]_0 ,
    clk,
    shift_en,
    relu_en,
    rst_n,
    D,
    Q,
    \out_shift_reg[2] );
  output sat_flag;
  output \res_reg[15]_0 ;
  output [15:0]out_data;
  output [3:0]S;
  output [2:0]\rounded_q_reg[6]_0 ;
  input clk;
  input shift_en;
  input relu_en;
  input rst_n;
  input [19:0]D;
  input [6:0]Q;
  input [2:0]\out_shift_reg[2] ;

  wire [19:0]D;
  wire [6:0]Q;
  wire [3:0]S;
  wire clk;
  wire [15:0]out_data;
  wire [2:0]\out_shift_reg[2] ;
  wire [15:0]p_0_in;
  wire relu_en;
  wire \res_reg[15]_0 ;
  wire [19:0]rounded_q;
  wire [2:0]\rounded_q_reg[6]_0 ;
  wire rst_n;
  wire sat_d1__2_carry_i_1_n_0;
  wire sat_d1__2_carry_i_2_n_0;
  wire sat_d1__2_carry_i_3_n_0;
  wire sat_d1__2_carry_i_4_n_0;
  wire sat_d1__2_carry_i_5_n_0;
  wire sat_d1__2_carry_n_1;
  wire sat_d1_carry_i_1_n_0;
  wire sat_d1_carry_i_2_n_0;
  wire sat_d1_carry_i_3_n_0;
  wire sat_d1_carry_i_4_n_0;
  wire sat_d1_carry_i_5_n_0;
  wire sat_d1_carry_i_6_n_0;
  wire sat_d1_carry_n_1;
  wire sat_flag;
  wire sat_flag_i_1_n_0;
  wire shift_en;
  wire [3:0]NLW_sat_d1__2_carry_CO_UNCONNECTED;
  wire [3:0]NLW_sat_d1__2_carry_O_UNCONNECTED;
  wire [3:0]NLW_sat_d1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_sat_d1_carry_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[0]_i_1 
       (.I0(rounded_q[0]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[10]_i_1 
       (.I0(rounded_q[10]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[11]_i_1 
       (.I0(rounded_q[11]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[12]_i_1 
       (.I0(rounded_q[12]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[13]_i_1 
       (.I0(rounded_q[13]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hAABAAAFA)) 
    \res[14]_i_1 
       (.I0(sat_d1__2_carry_n_1),
        .I1(relu_en),
        .I2(rounded_q[14]),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \res[15]_i_2 
       (.I0(rounded_q[15]),
        .I1(sat_d1_carry_n_1),
        .I2(sat_d1__2_carry_n_1),
        .I3(relu_en),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \res[15]_i_3 
       (.I0(rst_n),
        .O(\res_reg[15]_0 ));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[1]_i_1 
       (.I0(rounded_q[1]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[2]_i_1 
       (.I0(rounded_q[2]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[3]_i_1 
       (.I0(rounded_q[3]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[4]_i_1 
       (.I0(rounded_q[4]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[5]_i_1 
       (.I0(rounded_q[5]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[6]_i_1 
       (.I0(rounded_q[6]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[7]_i_1 
       (.I0(rounded_q[7]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[8]_i_1 
       (.I0(rounded_q[8]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hCCCECCEE)) 
    \res[9]_i_1 
       (.I0(rounded_q[9]),
        .I1(sat_d1__2_carry_n_1),
        .I2(relu_en),
        .I3(sat_d1_carry_n_1),
        .I4(rounded_q[15]),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[0]),
        .Q(out_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[10]),
        .Q(out_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[11]),
        .Q(out_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[12]),
        .Q(out_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[13]),
        .Q(out_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[14]),
        .Q(out_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[15]),
        .Q(out_data[15]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[1]),
        .Q(out_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[2]),
        .Q(out_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[3]),
        .Q(out_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[4]),
        .Q(out_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[5]),
        .Q(out_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[6]),
        .Q(out_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[7]),
        .Q(out_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[8]),
        .Q(out_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(p_0_in[9]),
        .Q(out_data[9]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \rounded_q[3]_i_4 
       (.I0(Q[3]),
        .I1(\out_shift_reg[2] [0]),
        .I2(\out_shift_reg[2] [2]),
        .I3(\out_shift_reg[2] [1]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \rounded_q[3]_i_5 
       (.I0(Q[2]),
        .I1(\out_shift_reg[2] [0]),
        .I2(\out_shift_reg[2] [1]),
        .I3(\out_shift_reg[2] [2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \rounded_q[3]_i_6 
       (.I0(Q[1]),
        .I1(\out_shift_reg[2] [0]),
        .I2(\out_shift_reg[2] [1]),
        .I3(\out_shift_reg[2] [2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hAAA6)) 
    \rounded_q[3]_i_7 
       (.I0(Q[0]),
        .I1(\out_shift_reg[2] [0]),
        .I2(\out_shift_reg[2] [2]),
        .I3(\out_shift_reg[2] [1]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rounded_q[7]_i_4 
       (.I0(Q[6]),
        .I1(\out_shift_reg[2] [0]),
        .I2(\out_shift_reg[2] [2]),
        .I3(\out_shift_reg[2] [1]),
        .O(\rounded_q_reg[6]_0 [2]));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \rounded_q[7]_i_5 
       (.I0(Q[5]),
        .I1(\out_shift_reg[2] [0]),
        .I2(\out_shift_reg[2] [2]),
        .I3(\out_shift_reg[2] [1]),
        .O(\rounded_q_reg[6]_0 [1]));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \rounded_q[7]_i_6 
       (.I0(Q[4]),
        .I1(\out_shift_reg[2] [0]),
        .I2(\out_shift_reg[2] [2]),
        .I3(\out_shift_reg[2] [1]),
        .O(\rounded_q_reg[6]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[0]),
        .Q(rounded_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[10]),
        .Q(rounded_q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[11]),
        .Q(rounded_q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[12]),
        .Q(rounded_q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[13]),
        .Q(rounded_q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[14]),
        .Q(rounded_q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[15]),
        .Q(rounded_q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[16]),
        .Q(rounded_q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[17]),
        .Q(rounded_q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[18]),
        .Q(rounded_q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[19] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[19]),
        .Q(rounded_q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[1]),
        .Q(rounded_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[2]),
        .Q(rounded_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[3]),
        .Q(rounded_q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[4]),
        .Q(rounded_q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[5]),
        .Q(rounded_q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[6]),
        .Q(rounded_q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[7]),
        .Q(rounded_q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[8]),
        .Q(rounded_q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\res_reg[15]_0 ),
        .D(D[9]),
        .Q(rounded_q[9]));
  CARRY4 sat_d1__2_carry
       (.CI(1'b0),
        .CO({NLW_sat_d1__2_carry_CO_UNCONNECTED[3],sat_d1__2_carry_n_1,NLW_sat_d1__2_carry_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,sat_d1__2_carry_i_1_n_0,sat_d1__2_carry_i_2_n_0,rounded_q[15]}),
        .O(NLW_sat_d1__2_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,sat_d1__2_carry_i_3_n_0,sat_d1__2_carry_i_4_n_0,sat_d1__2_carry_i_5_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    sat_d1__2_carry_i_1
       (.I0(rounded_q[18]),
        .I1(rounded_q[19]),
        .O(sat_d1__2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    sat_d1__2_carry_i_2
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(sat_d1__2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat_d1__2_carry_i_3
       (.I0(rounded_q[18]),
        .I1(rounded_q[19]),
        .O(sat_d1__2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    sat_d1__2_carry_i_4
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(sat_d1__2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sat_d1__2_carry_i_5
       (.I0(rounded_q[14]),
        .I1(rounded_q[15]),
        .O(sat_d1__2_carry_i_5_n_0));
  CARRY4 sat_d1_carry
       (.CI(1'b0),
        .CO({NLW_sat_d1_carry_CO_UNCONNECTED[3],sat_d1_carry_n_1,NLW_sat_d1_carry_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,sat_d1_carry_i_1_n_0,sat_d1_carry_i_2_n_0,sat_d1_carry_i_3_n_0}),
        .O(NLW_sat_d1_carry_O_UNCONNECTED[3:0]),
        .S({1'b0,sat_d1_carry_i_4_n_0,sat_d1_carry_i_5_n_0,sat_d1_carry_i_6_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    sat_d1_carry_i_1
       (.I0(rounded_q[19]),
        .I1(rounded_q[18]),
        .O(sat_d1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    sat_d1_carry_i_2
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(sat_d1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    sat_d1_carry_i_3
       (.I0(rounded_q[15]),
        .O(sat_d1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sat_d1_carry_i_4
       (.I0(rounded_q[18]),
        .I1(rounded_q[19]),
        .O(sat_d1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sat_d1_carry_i_5
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(sat_d1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    sat_d1_carry_i_6
       (.I0(rounded_q[15]),
        .I1(rounded_q[14]),
        .O(sat_d1_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    sat_flag_i_1
       (.I0(sat_d1__2_carry_n_1),
        .I1(sat_d1_carry_n_1),
        .I2(shift_en),
        .O(sat_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sat_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\res_reg[15]_0 ),
        .D(sat_flag_i_1_n_0),
        .Q(sat_flag));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
