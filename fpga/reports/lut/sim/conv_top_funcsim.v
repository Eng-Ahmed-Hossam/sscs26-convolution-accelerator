// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Sep 22 02:11:50 2026
// Host        : Eng_Ahmed running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/Digital_IC_Design/SSCS_Design_Competition/fpga/reports/lut/sim/conv_top_funcsim.v
// Design      : conv_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module adder_tree
   (\s1_reg[0][17]_0 ,
    rounded_q1,
    Q,
    O,
    rst_n,
    S,
    \acc_reg[6]_0 ,
    \prod[6] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[16] ,
    \prod[7] ,
    shift_en,
    clk,
    rst_n_0,
    rst_n_1,
    \prod[4] ,
    \g_row[1].g_col[1].g_lut.p_q_reg[16] ,
    \prod[5] ,
    \prod[8] ,
    \prod[2] ,
    \g_row[0].g_col[2].g_lut.p_q_reg[16] ,
    \prod[3] ,
    rst_n_2,
    \prod[0] ,
    \g_row[0].g_col[0].g_lut.p_q_reg[16] ,
    \prod[1] ,
    rst_n_3);
  output \s1_reg[0][17]_0 ;
  output [18:0]rounded_q1;
  output [6:0]Q;
  output [0:0]O;
  input rst_n;
  input [3:0]S;
  input [2:0]\acc_reg[6]_0 ;
  input [16:0]\prod[6] ;
  input [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16] ;
  input [15:0]\prod[7] ;
  input shift_en;
  input clk;
  input rst_n_0;
  input rst_n_1;
  input [16:0]\prod[4] ;
  input [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16] ;
  input [15:0]\prod[5] ;
  input [16:0]\prod[8] ;
  input [16:0]\prod[2] ;
  input [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16] ;
  input [15:0]\prod[3] ;
  input rst_n_2;
  input [16:0]\prod[0] ;
  input [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16] ;
  input [15:0]\prod[1] ;
  input rst_n_3;

  wire [0:0]O;
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
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16] ;
  wire [16:0]p8_a1;
  wire [16:0]p8_a2;
  wire [17:0]p_0_in;
  wire [16:0]\prod[0] ;
  wire [15:0]\prod[1] ;
  wire [16:0]\prod[2] ;
  wire [15:0]\prod[3] ;
  wire [16:0]\prod[4] ;
  wire [15:0]\prod[5] ;
  wire [16:0]\prod[6] ;
  wire [15:0]\prod[7] ;
  wire [16:0]\prod[8] ;
  wire [18:0]rounded_q1;
  wire \rounded_q_reg[19]_i_2_n_0 ;
  wire \rounded_q_reg[19]_i_3_n_0 ;
  wire \rounded_q_reg[3]_i_3_n_0 ;
  wire \rounded_q_reg[7]_i_3_n_0 ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire rst_n_3;
  wire \s1[0][11]_i_2_n_0 ;
  wire \s1[0][11]_i_3_n_0 ;
  wire \s1[0][11]_i_4_n_0 ;
  wire \s1[0][11]_i_5_n_0 ;
  wire \s1[0][15]_i_2_n_0 ;
  wire \s1[0][15]_i_3_n_0 ;
  wire \s1[0][15]_i_4_n_0 ;
  wire \s1[0][15]_i_5_n_0 ;
  wire \s1[0][17]_i_2_n_0 ;
  wire \s1[0][3]_i_2_n_0 ;
  wire \s1[0][3]_i_3_n_0 ;
  wire \s1[0][3]_i_4_n_0 ;
  wire \s1[0][3]_i_5_n_0 ;
  wire \s1[0][7]_i_2_n_0 ;
  wire \s1[0][7]_i_3_n_0 ;
  wire \s1[0][7]_i_4_n_0 ;
  wire \s1[0][7]_i_5_n_0 ;
  wire \s1[1][11]_i_2_n_0 ;
  wire \s1[1][11]_i_3_n_0 ;
  wire \s1[1][11]_i_4_n_0 ;
  wire \s1[1][11]_i_5_n_0 ;
  wire \s1[1][15]_i_2_n_0 ;
  wire \s1[1][15]_i_3_n_0 ;
  wire \s1[1][15]_i_4_n_0 ;
  wire \s1[1][15]_i_5_n_0 ;
  wire \s1[1][17]_i_2_n_0 ;
  wire \s1[1][3]_i_2_n_0 ;
  wire \s1[1][3]_i_3_n_0 ;
  wire \s1[1][3]_i_4_n_0 ;
  wire \s1[1][3]_i_5_n_0 ;
  wire \s1[1][7]_i_2_n_0 ;
  wire \s1[1][7]_i_3_n_0 ;
  wire \s1[1][7]_i_4_n_0 ;
  wire \s1[1][7]_i_5_n_0 ;
  wire \s1[2][11]_i_2_n_0 ;
  wire \s1[2][11]_i_3_n_0 ;
  wire \s1[2][11]_i_4_n_0 ;
  wire \s1[2][11]_i_5_n_0 ;
  wire \s1[2][15]_i_2_n_0 ;
  wire \s1[2][15]_i_3_n_0 ;
  wire \s1[2][15]_i_4_n_0 ;
  wire \s1[2][15]_i_5_n_0 ;
  wire \s1[2][17]_i_2_n_0 ;
  wire \s1[2][3]_i_2_n_0 ;
  wire \s1[2][3]_i_3_n_0 ;
  wire \s1[2][3]_i_4_n_0 ;
  wire \s1[2][3]_i_5_n_0 ;
  wire \s1[2][7]_i_2_n_0 ;
  wire \s1[2][7]_i_3_n_0 ;
  wire \s1[2][7]_i_4_n_0 ;
  wire \s1[2][7]_i_5_n_0 ;
  wire \s1[3][11]_i_2_n_0 ;
  wire \s1[3][11]_i_3_n_0 ;
  wire \s1[3][11]_i_4_n_0 ;
  wire \s1[3][11]_i_5_n_0 ;
  wire \s1[3][15]_i_2_n_0 ;
  wire \s1[3][15]_i_3_n_0 ;
  wire \s1[3][15]_i_4_n_0 ;
  wire \s1[3][15]_i_5_n_0 ;
  wire \s1[3][17]_i_2_n_0 ;
  wire \s1[3][3]_i_2_n_0 ;
  wire \s1[3][3]_i_3_n_0 ;
  wire \s1[3][3]_i_4_n_0 ;
  wire \s1[3][3]_i_5_n_0 ;
  wire \s1[3][7]_i_2_n_0 ;
  wire \s1[3][7]_i_3_n_0 ;
  wire \s1[3][7]_i_4_n_0 ;
  wire \s1[3][7]_i_5_n_0 ;
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
  wire \s1_reg[0][17]_0 ;
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

  (* HLUTNM = "lutpair55" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_2 
       (.I0(\s2_reg[1]_2 [10]),
        .I1(p8_a2[10]),
        .I2(\s2_reg[0]_5 [10]),
        .O(\acc[11]_i_2_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_3 
       (.I0(\s2_reg[1]_2 [9]),
        .I1(p8_a2[9]),
        .I2(\s2_reg[0]_5 [9]),
        .O(\acc[11]_i_3_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_4 
       (.I0(\s2_reg[1]_2 [8]),
        .I1(p8_a2[8]),
        .I2(\s2_reg[0]_5 [8]),
        .O(\acc[11]_i_4_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[11]_i_5 
       (.I0(\s2_reg[1]_2 [7]),
        .I1(p8_a2[7]),
        .I2(\s2_reg[0]_5 [7]),
        .O(\acc[11]_i_5_n_0 ));
  (* HLUTNM = "lutpair56" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_6 
       (.I0(\s2_reg[1]_2 [11]),
        .I1(p8_a2[11]),
        .I2(\s2_reg[0]_5 [11]),
        .I3(\acc[11]_i_2_n_0 ),
        .O(\acc[11]_i_6_n_0 ));
  (* HLUTNM = "lutpair55" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_7 
       (.I0(\s2_reg[1]_2 [10]),
        .I1(p8_a2[10]),
        .I2(\s2_reg[0]_5 [10]),
        .I3(\acc[11]_i_3_n_0 ),
        .O(\acc[11]_i_7_n_0 ));
  (* HLUTNM = "lutpair54" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_8 
       (.I0(\s2_reg[1]_2 [9]),
        .I1(p8_a2[9]),
        .I2(\s2_reg[0]_5 [9]),
        .I3(\acc[11]_i_4_n_0 ),
        .O(\acc[11]_i_8_n_0 ));
  (* HLUTNM = "lutpair53" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[11]_i_9 
       (.I0(\s2_reg[1]_2 [8]),
        .I1(p8_a2[8]),
        .I2(\s2_reg[0]_5 [8]),
        .I3(\acc[11]_i_5_n_0 ),
        .O(\acc[11]_i_9_n_0 ));
  (* HLUTNM = "lutpair59" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_2 
       (.I0(\s2_reg[1]_2 [14]),
        .I1(p8_a2[14]),
        .I2(\s2_reg[0]_5 [14]),
        .O(\acc[15]_i_2_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_3 
       (.I0(\s2_reg[1]_2 [13]),
        .I1(p8_a2[13]),
        .I2(\s2_reg[0]_5 [13]),
        .O(\acc[15]_i_3_n_0 ));
  (* HLUTNM = "lutpair57" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[15]_i_4 
       (.I0(\s2_reg[1]_2 [12]),
        .I1(p8_a2[12]),
        .I2(\s2_reg[0]_5 [12]),
        .O(\acc[15]_i_4_n_0 ));
  (* HLUTNM = "lutpair56" *) 
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
  (* HLUTNM = "lutpair59" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_7 
       (.I0(\s2_reg[1]_2 [14]),
        .I1(p8_a2[14]),
        .I2(\s2_reg[0]_5 [14]),
        .I3(\acc[15]_i_3_n_0 ),
        .O(\acc[15]_i_7_n_0 ));
  (* HLUTNM = "lutpair58" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[15]_i_8 
       (.I0(\s2_reg[1]_2 [13]),
        .I1(p8_a2[13]),
        .I2(\s2_reg[0]_5 [13]),
        .I3(\acc[15]_i_4_n_0 ),
        .O(\acc[15]_i_8_n_0 ));
  (* HLUTNM = "lutpair57" *) 
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
  (* HLUTNM = "lutpair47" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[3]_i_2 
       (.I0(\s2_reg[1]_2 [2]),
        .I1(p8_a2[2]),
        .I2(\s2_reg[0]_5 [2]),
        .O(\acc[3]_i_2_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[3]_i_3 
       (.I0(\s2_reg[1]_2 [1]),
        .I1(p8_a2[1]),
        .I2(\s2_reg[0]_5 [1]),
        .O(\acc[3]_i_3_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[3]_i_4 
       (.I0(\s2_reg[1]_2 [0]),
        .I1(p8_a2[0]),
        .I2(\s2_reg[0]_5 [0]),
        .O(\acc[3]_i_4_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[3]_i_5 
       (.I0(\s2_reg[1]_2 [3]),
        .I1(p8_a2[3]),
        .I2(\s2_reg[0]_5 [3]),
        .I3(\acc[3]_i_2_n_0 ),
        .O(\acc[3]_i_5_n_0 ));
  (* HLUTNM = "lutpair47" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[3]_i_6 
       (.I0(\s2_reg[1]_2 [2]),
        .I1(p8_a2[2]),
        .I2(\s2_reg[0]_5 [2]),
        .I3(\acc[3]_i_3_n_0 ),
        .O(\acc[3]_i_6_n_0 ));
  (* HLUTNM = "lutpair46" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[3]_i_7 
       (.I0(\s2_reg[1]_2 [1]),
        .I1(p8_a2[1]),
        .I2(\s2_reg[0]_5 [1]),
        .I3(\acc[3]_i_4_n_0 ),
        .O(\acc[3]_i_7_n_0 ));
  (* HLUTNM = "lutpair45" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \acc[3]_i_8 
       (.I0(\s2_reg[1]_2 [0]),
        .I1(p8_a2[0]),
        .I2(\s2_reg[0]_5 [0]),
        .O(\acc[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_2 
       (.I0(\s2_reg[1]_2 [6]),
        .I1(p8_a2[6]),
        .I2(\s2_reg[0]_5 [6]),
        .O(\acc[7]_i_2_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_3 
       (.I0(\s2_reg[1]_2 [5]),
        .I1(p8_a2[5]),
        .I2(\s2_reg[0]_5 [5]),
        .O(\acc[7]_i_3_n_0 ));
  (* HLUTNM = "lutpair49" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_4 
       (.I0(\s2_reg[1]_2 [4]),
        .I1(p8_a2[4]),
        .I2(\s2_reg[0]_5 [4]),
        .O(\acc[7]_i_4_n_0 ));
  (* HLUTNM = "lutpair48" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \acc[7]_i_5 
       (.I0(\s2_reg[1]_2 [3]),
        .I1(p8_a2[3]),
        .I2(\s2_reg[0]_5 [3]),
        .O(\acc[7]_i_5_n_0 ));
  (* HLUTNM = "lutpair52" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_6 
       (.I0(\s2_reg[1]_2 [7]),
        .I1(p8_a2[7]),
        .I2(\s2_reg[0]_5 [7]),
        .I3(\acc[7]_i_2_n_0 ),
        .O(\acc[7]_i_6_n_0 ));
  (* HLUTNM = "lutpair51" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_7 
       (.I0(\s2_reg[1]_2 [6]),
        .I1(p8_a2[6]),
        .I2(\s2_reg[0]_5 [6]),
        .I3(\acc[7]_i_3_n_0 ),
        .O(\acc[7]_i_7_n_0 ));
  (* HLUTNM = "lutpair50" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \acc[7]_i_8 
       (.I0(\s2_reg[1]_2 [5]),
        .I1(p8_a2[5]),
        .I2(\s2_reg[0]_5 [5]),
        .I3(\acc[7]_i_4_n_0 ),
        .O(\acc[7]_i_8_n_0 ));
  (* HLUTNM = "lutpair49" *) 
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
        .CLR(rst_n_3),
        .D(\acc_reg[3]_i_1_n_7 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[11]_i_1_n_5 ),
        .Q(acc[10]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
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
        .CLR(rst_n_3),
        .D(\acc_reg[15]_i_1_n_7 ),
        .Q(acc[12]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[15]_i_1_n_6 ),
        .Q(acc[13]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[15]_i_1_n_5 ),
        .Q(acc[14]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
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
        .CLR(rst_n_3),
        .D(\acc_reg[19]_i_1_n_7 ),
        .Q(acc[16]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[19]_i_1_n_6 ),
        .Q(acc[17]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[19]_i_1_n_5 ),
        .Q(acc[18]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[19] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
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
        .CLR(rst_n_3),
        .D(\acc_reg[3]_i_1_n_6 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[3]_i_1_n_5 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
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
        .CLR(rst_n_3),
        .D(\acc_reg[7]_i_1_n_7 ),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[7]_i_1_n_6 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[7]_i_1_n_5 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
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
        .CLR(rst_n_3),
        .D(\acc_reg[11]_i_1_n_7 ),
        .Q(acc[8]));
  FDCE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_3),
        .D(\acc_reg[11]_i_1_n_6 ),
        .Q(acc[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \coef[6][7]_i_2 
       (.I0(rst_n),
        .O(\s1_reg[0][17]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [0]),
        .Q(p8_a1[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [10]),
        .Q(p8_a1[10]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\prod[8] [11]),
        .Q(p8_a1[11]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\prod[8] [12]),
        .Q(p8_a1[12]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\prod[8] [13]),
        .Q(p8_a1[13]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\prod[8] [14]),
        .Q(p8_a1[14]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\prod[8] [15]),
        .Q(p8_a1[15]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\prod[8] [16]),
        .Q(p8_a1[16]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [1]),
        .Q(p8_a1[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [2]),
        .Q(p8_a1[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [3]),
        .Q(p8_a1[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [4]),
        .Q(p8_a1[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [5]),
        .Q(p8_a1[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [6]),
        .Q(p8_a1[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [7]),
        .Q(p8_a1[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [8]),
        .Q(p8_a1[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a1_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\prod[8] [9]),
        .Q(p8_a1[9]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[0]),
        .Q(p8_a2[0]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[1]),
        .Q(p8_a2[1]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[2]),
        .Q(p8_a2[2]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[3]),
        .Q(p8_a2[3]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[4]),
        .Q(p8_a2[4]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[5]),
        .Q(p8_a2[5]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[6]),
        .Q(p8_a2[6]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[7]),
        .Q(p8_a2[7]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p8_a1[8]),
        .Q(p8_a2[8]));
  FDCE #(
    .INIT(1'b0)) 
    \p8_a2_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
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
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][11]_i_2 
       (.I0(\prod[0] [11]),
        .I1(\prod[1] [11]),
        .O(\s1[0][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][11]_i_3 
       (.I0(\prod[0] [10]),
        .I1(\prod[1] [10]),
        .O(\s1[0][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][11]_i_4 
       (.I0(\prod[0] [9]),
        .I1(\prod[1] [9]),
        .O(\s1[0][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][11]_i_5 
       (.I0(\prod[0] [8]),
        .I1(\prod[1] [8]),
        .O(\s1[0][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][15]_i_2 
       (.I0(\prod[0] [15]),
        .I1(\prod[1] [15]),
        .O(\s1[0][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][15]_i_3 
       (.I0(\prod[0] [14]),
        .I1(\prod[1] [14]),
        .O(\s1[0][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][15]_i_4 
       (.I0(\prod[0] [13]),
        .I1(\prod[1] [13]),
        .O(\s1[0][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][15]_i_5 
       (.I0(\prod[0] [12]),
        .I1(\prod[1] [12]),
        .O(\s1[0][15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s1[0][17]_i_2 
       (.I0(\prod[0] [16]),
        .O(\s1[0][17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][3]_i_2 
       (.I0(\prod[0] [3]),
        .I1(\prod[1] [3]),
        .O(\s1[0][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][3]_i_3 
       (.I0(\prod[0] [2]),
        .I1(\prod[1] [2]),
        .O(\s1[0][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][3]_i_4 
       (.I0(\prod[0] [1]),
        .I1(\prod[1] [1]),
        .O(\s1[0][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][3]_i_5 
       (.I0(\prod[0] [0]),
        .I1(\prod[1] [0]),
        .O(\s1[0][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][7]_i_2 
       (.I0(\prod[0] [7]),
        .I1(\prod[1] [7]),
        .O(\s1[0][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][7]_i_3 
       (.I0(\prod[0] [6]),
        .I1(\prod[1] [6]),
        .O(\s1[0][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][7]_i_4 
       (.I0(\prod[0] [5]),
        .I1(\prod[1] [5]),
        .O(\s1[0][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][7]_i_5 
       (.I0(\prod[0] [4]),
        .I1(\prod[1] [4]),
        .O(\s1[0][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][11]_i_2 
       (.I0(\prod[2] [11]),
        .I1(\prod[3] [11]),
        .O(\s1[1][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][11]_i_3 
       (.I0(\prod[2] [10]),
        .I1(\prod[3] [10]),
        .O(\s1[1][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][11]_i_4 
       (.I0(\prod[2] [9]),
        .I1(\prod[3] [9]),
        .O(\s1[1][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][11]_i_5 
       (.I0(\prod[2] [8]),
        .I1(\prod[3] [8]),
        .O(\s1[1][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][15]_i_2 
       (.I0(\prod[2] [15]),
        .I1(\prod[3] [15]),
        .O(\s1[1][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][15]_i_3 
       (.I0(\prod[2] [14]),
        .I1(\prod[3] [14]),
        .O(\s1[1][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][15]_i_4 
       (.I0(\prod[2] [13]),
        .I1(\prod[3] [13]),
        .O(\s1[1][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][15]_i_5 
       (.I0(\prod[2] [12]),
        .I1(\prod[3] [12]),
        .O(\s1[1][15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s1[1][17]_i_2 
       (.I0(\prod[2] [16]),
        .O(\s1[1][17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][3]_i_2 
       (.I0(\prod[2] [3]),
        .I1(\prod[3] [3]),
        .O(\s1[1][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][3]_i_3 
       (.I0(\prod[2] [2]),
        .I1(\prod[3] [2]),
        .O(\s1[1][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][3]_i_4 
       (.I0(\prod[2] [1]),
        .I1(\prod[3] [1]),
        .O(\s1[1][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][3]_i_5 
       (.I0(\prod[2] [0]),
        .I1(\prod[3] [0]),
        .O(\s1[1][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][7]_i_2 
       (.I0(\prod[2] [7]),
        .I1(\prod[3] [7]),
        .O(\s1[1][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][7]_i_3 
       (.I0(\prod[2] [6]),
        .I1(\prod[3] [6]),
        .O(\s1[1][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][7]_i_4 
       (.I0(\prod[2] [5]),
        .I1(\prod[3] [5]),
        .O(\s1[1][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][7]_i_5 
       (.I0(\prod[2] [4]),
        .I1(\prod[3] [4]),
        .O(\s1[1][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][11]_i_2 
       (.I0(\prod[4] [11]),
        .I1(\prod[5] [11]),
        .O(\s1[2][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][11]_i_3 
       (.I0(\prod[4] [10]),
        .I1(\prod[5] [10]),
        .O(\s1[2][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][11]_i_4 
       (.I0(\prod[4] [9]),
        .I1(\prod[5] [9]),
        .O(\s1[2][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][11]_i_5 
       (.I0(\prod[4] [8]),
        .I1(\prod[5] [8]),
        .O(\s1[2][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][15]_i_2 
       (.I0(\prod[4] [15]),
        .I1(\prod[5] [15]),
        .O(\s1[2][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][15]_i_3 
       (.I0(\prod[4] [14]),
        .I1(\prod[5] [14]),
        .O(\s1[2][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][15]_i_4 
       (.I0(\prod[4] [13]),
        .I1(\prod[5] [13]),
        .O(\s1[2][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][15]_i_5 
       (.I0(\prod[4] [12]),
        .I1(\prod[5] [12]),
        .O(\s1[2][15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s1[2][17]_i_2 
       (.I0(\prod[4] [16]),
        .O(\s1[2][17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][3]_i_2 
       (.I0(\prod[4] [3]),
        .I1(\prod[5] [3]),
        .O(\s1[2][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][3]_i_3 
       (.I0(\prod[4] [2]),
        .I1(\prod[5] [2]),
        .O(\s1[2][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][3]_i_4 
       (.I0(\prod[4] [1]),
        .I1(\prod[5] [1]),
        .O(\s1[2][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][3]_i_5 
       (.I0(\prod[4] [0]),
        .I1(\prod[5] [0]),
        .O(\s1[2][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][7]_i_2 
       (.I0(\prod[4] [7]),
        .I1(\prod[5] [7]),
        .O(\s1[2][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][7]_i_3 
       (.I0(\prod[4] [6]),
        .I1(\prod[5] [6]),
        .O(\s1[2][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][7]_i_4 
       (.I0(\prod[4] [5]),
        .I1(\prod[5] [5]),
        .O(\s1[2][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][7]_i_5 
       (.I0(\prod[4] [4]),
        .I1(\prod[5] [4]),
        .O(\s1[2][7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][11]_i_2 
       (.I0(\prod[6] [11]),
        .I1(\prod[7] [11]),
        .O(\s1[3][11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][11]_i_3 
       (.I0(\prod[6] [10]),
        .I1(\prod[7] [10]),
        .O(\s1[3][11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][11]_i_4 
       (.I0(\prod[6] [9]),
        .I1(\prod[7] [9]),
        .O(\s1[3][11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][11]_i_5 
       (.I0(\prod[6] [8]),
        .I1(\prod[7] [8]),
        .O(\s1[3][11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][15]_i_2 
       (.I0(\prod[6] [15]),
        .I1(\prod[7] [15]),
        .O(\s1[3][15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][15]_i_3 
       (.I0(\prod[6] [14]),
        .I1(\prod[7] [14]),
        .O(\s1[3][15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][15]_i_4 
       (.I0(\prod[6] [13]),
        .I1(\prod[7] [13]),
        .O(\s1[3][15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][15]_i_5 
       (.I0(\prod[6] [12]),
        .I1(\prod[7] [12]),
        .O(\s1[3][15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s1[3][17]_i_2 
       (.I0(\prod[6] [16]),
        .O(\s1[3][17]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][3]_i_2 
       (.I0(\prod[6] [3]),
        .I1(\prod[7] [3]),
        .O(\s1[3][3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][3]_i_3 
       (.I0(\prod[6] [2]),
        .I1(\prod[7] [2]),
        .O(\s1[3][3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][3]_i_4 
       (.I0(\prod[6] [1]),
        .I1(\prod[7] [1]),
        .O(\s1[3][3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][3]_i_5 
       (.I0(\prod[6] [0]),
        .I1(\prod[7] [0]),
        .O(\s1[3][3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][7]_i_2 
       (.I0(\prod[6] [7]),
        .I1(\prod[7] [7]),
        .O(\s1[3][7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][7]_i_3 
       (.I0(\prod[6] [6]),
        .I1(\prod[7] [6]),
        .O(\s1[3][7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][7]_i_4 
       (.I0(\prod[6] [5]),
        .I1(\prod[7] [5]),
        .O(\s1[3][7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][7]_i_5 
       (.I0(\prod[6] [4]),
        .I1(\prod[7] [4]),
        .O(\s1[3][7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][3]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][11]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][11]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [11]));
  CARRY4 \s1_reg[0][11]_i_1 
       (.CI(\s1_reg[0][7]_i_1_n_0 ),
        .CO({\s1_reg[0][11]_i_1_n_0 ,\NLW_s1_reg[0][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [11:8]),
        .O({\s1_reg[0][11]_i_1_n_4 ,\s1_reg[0][11]_i_1_n_5 ,\s1_reg[0][11]_i_1_n_6 ,\s1_reg[0][11]_i_1_n_7 }),
        .S({\s1[0][11]_i_2_n_0 ,\s1[0][11]_i_3_n_0 ,\s1[0][11]_i_4_n_0 ,\s1[0][11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][15]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][15]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][15]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][15]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [15]));
  CARRY4 \s1_reg[0][15]_i_1 
       (.CI(\s1_reg[0][11]_i_1_n_0 ),
        .CO({\s1_reg[0][15]_i_1_n_0 ,\NLW_s1_reg[0][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [15:12]),
        .O({\s1_reg[0][15]_i_1_n_4 ,\s1_reg[0][15]_i_1_n_5 ,\s1_reg[0][15]_i_1_n_6 ,\s1_reg[0][15]_i_1_n_7 }),
        .S({\s1[0][15]_i_2_n_0 ,\s1[0][15]_i_3_n_0 ,\s1[0][15]_i_4_n_0 ,\s1[0][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s1_reg[0][17]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s1_reg[0][17]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [17]));
  CARRY4 \s1_reg[0][17]_i_1 
       (.CI(\s1_reg[0][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[0][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[0][17]_i_2_n_0 }),
        .O({\NLW_s1_reg[0][17]_i_1_O_UNCONNECTED [3:2],\s1_reg[0][17]_i_1_n_6 ,\s1_reg[0][17]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\g_row[0].g_col[0].g_lut.p_q_reg[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][3]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][3]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][3]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [3]));
  CARRY4 \s1_reg[0][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[0][3]_i_1_n_0 ,\NLW_s1_reg[0][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [3:0]),
        .O({\s1_reg[0][3]_i_1_n_4 ,\s1_reg[0][3]_i_1_n_5 ,\s1_reg[0][3]_i_1_n_6 ,\s1_reg[0][3]_i_1_n_7 }),
        .S({\s1[0][3]_i_2_n_0 ,\s1[0][3]_i_3_n_0 ,\s1[0][3]_i_4_n_0 ,\s1[0][3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][7]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][7]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][7]_i_1_n_5 ),
        .Q(\s1_reg[0]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][7]_i_1_n_4 ),
        .Q(\s1_reg[0]_4 [7]));
  CARRY4 \s1_reg[0][7]_i_1 
       (.CI(\s1_reg[0][3]_i_1_n_0 ),
        .CO({\s1_reg[0][7]_i_1_n_0 ,\NLW_s1_reg[0][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[0] [7:4]),
        .O({\s1_reg[0][7]_i_1_n_4 ,\s1_reg[0][7]_i_1_n_5 ,\s1_reg[0][7]_i_1_n_6 ,\s1_reg[0][7]_i_1_n_7 }),
        .S({\s1[0][7]_i_2_n_0 ,\s1[0][7]_i_3_n_0 ,\s1[0][7]_i_4_n_0 ,\s1[0][7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][11]_i_1_n_7 ),
        .Q(\s1_reg[0]_4 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[0][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[0][11]_i_1_n_6 ),
        .Q(\s1_reg[0]_4 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][3]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][11]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][11]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [11]));
  CARRY4 \s1_reg[1][11]_i_1 
       (.CI(\s1_reg[1][7]_i_1_n_0 ),
        .CO({\s1_reg[1][11]_i_1_n_0 ,\NLW_s1_reg[1][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [11:8]),
        .O({\s1_reg[1][11]_i_1_n_4 ,\s1_reg[1][11]_i_1_n_5 ,\s1_reg[1][11]_i_1_n_6 ,\s1_reg[1][11]_i_1_n_7 }),
        .S({\s1[1][11]_i_2_n_0 ,\s1[1][11]_i_3_n_0 ,\s1[1][11]_i_4_n_0 ,\s1[1][11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][15]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][15]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][15]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][15]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [15]));
  CARRY4 \s1_reg[1][15]_i_1 
       (.CI(\s1_reg[1][11]_i_1_n_0 ),
        .CO({\s1_reg[1][15]_i_1_n_0 ,\NLW_s1_reg[1][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [15:12]),
        .O({\s1_reg[1][15]_i_1_n_4 ,\s1_reg[1][15]_i_1_n_5 ,\s1_reg[1][15]_i_1_n_6 ,\s1_reg[1][15]_i_1_n_7 }),
        .S({\s1[1][15]_i_2_n_0 ,\s1[1][15]_i_3_n_0 ,\s1[1][15]_i_4_n_0 ,\s1[1][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s1_reg[1][17]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s1_reg[1][17]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [17]));
  CARRY4 \s1_reg[1][17]_i_1 
       (.CI(\s1_reg[1][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[1][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[1][17]_i_2_n_0 }),
        .O({\NLW_s1_reg[1][17]_i_1_O_UNCONNECTED [3:2],\s1_reg[1][17]_i_1_n_6 ,\s1_reg[1][17]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\g_row[0].g_col[2].g_lut.p_q_reg[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][3]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][3]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][3]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [3]));
  CARRY4 \s1_reg[1][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[1][3]_i_1_n_0 ,\NLW_s1_reg[1][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [3:0]),
        .O({\s1_reg[1][3]_i_1_n_4 ,\s1_reg[1][3]_i_1_n_5 ,\s1_reg[1][3]_i_1_n_6 ,\s1_reg[1][3]_i_1_n_7 }),
        .S({\s1[1][3]_i_2_n_0 ,\s1[1][3]_i_3_n_0 ,\s1[1][3]_i_4_n_0 ,\s1[1][3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][7]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][7]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][7]_i_1_n_5 ),
        .Q(\s1_reg[1]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][7]_i_1_n_4 ),
        .Q(\s1_reg[1]_3 [7]));
  CARRY4 \s1_reg[1][7]_i_1 
       (.CI(\s1_reg[1][3]_i_1_n_0 ),
        .CO({\s1_reg[1][7]_i_1_n_0 ,\NLW_s1_reg[1][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[2] [7:4]),
        .O({\s1_reg[1][7]_i_1_n_4 ,\s1_reg[1][7]_i_1_n_5 ,\s1_reg[1][7]_i_1_n_6 ,\s1_reg[1][7]_i_1_n_7 }),
        .S({\s1[1][7]_i_2_n_0 ,\s1[1][7]_i_3_n_0 ,\s1[1][7]_i_4_n_0 ,\s1[1][7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][11]_i_1_n_7 ),
        .Q(\s1_reg[1]_3 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[1][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_2),
        .D(\s1_reg[1][11]_i_1_n_6 ),
        .Q(\s1_reg[1]_3 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][3]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][11]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][11]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [11]));
  CARRY4 \s1_reg[2][11]_i_1 
       (.CI(\s1_reg[2][7]_i_1_n_0 ),
        .CO({\s1_reg[2][11]_i_1_n_0 ,\NLW_s1_reg[2][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [11:8]),
        .O({\s1_reg[2][11]_i_1_n_4 ,\s1_reg[2][11]_i_1_n_5 ,\s1_reg[2][11]_i_1_n_6 ,\s1_reg[2][11]_i_1_n_7 }),
        .S({\s1[2][11]_i_2_n_0 ,\s1[2][11]_i_3_n_0 ,\s1[2][11]_i_4_n_0 ,\s1[2][11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s1_reg[2][15]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s1_reg[2][15]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s1_reg[2][15]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s1_reg[2][15]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [15]));
  CARRY4 \s1_reg[2][15]_i_1 
       (.CI(\s1_reg[2][11]_i_1_n_0 ),
        .CO({\s1_reg[2][15]_i_1_n_0 ,\NLW_s1_reg[2][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [15:12]),
        .O({\s1_reg[2][15]_i_1_n_4 ,\s1_reg[2][15]_i_1_n_5 ,\s1_reg[2][15]_i_1_n_6 ,\s1_reg[2][15]_i_1_n_7 }),
        .S({\s1[2][15]_i_2_n_0 ,\s1[2][15]_i_3_n_0 ,\s1[2][15]_i_4_n_0 ,\s1[2][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s1_reg[2][17]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s1_reg[2][17]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [17]));
  CARRY4 \s1_reg[2][17]_i_1 
       (.CI(\s1_reg[2][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[2][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[2][17]_i_2_n_0 }),
        .O({\NLW_s1_reg[2][17]_i_1_O_UNCONNECTED [3:2],\s1_reg[2][17]_i_1_n_6 ,\s1_reg[2][17]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b1,\g_row[1].g_col[1].g_lut.p_q_reg[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][3]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][3]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][3]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [3]));
  CARRY4 \s1_reg[2][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[2][3]_i_1_n_0 ,\NLW_s1_reg[2][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [3:0]),
        .O({\s1_reg[2][3]_i_1_n_4 ,\s1_reg[2][3]_i_1_n_5 ,\s1_reg[2][3]_i_1_n_6 ,\s1_reg[2][3]_i_1_n_7 }),
        .S({\s1[2][3]_i_2_n_0 ,\s1[2][3]_i_3_n_0 ,\s1[2][3]_i_4_n_0 ,\s1[2][3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][7]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][7]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][7]_i_1_n_5 ),
        .Q(\s1_reg[2]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][7]_i_1_n_4 ),
        .Q(\s1_reg[2]_1 [7]));
  CARRY4 \s1_reg[2][7]_i_1 
       (.CI(\s1_reg[2][3]_i_1_n_0 ),
        .CO({\s1_reg[2][7]_i_1_n_0 ,\NLW_s1_reg[2][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[4] [7:4]),
        .O({\s1_reg[2][7]_i_1_n_4 ,\s1_reg[2][7]_i_1_n_5 ,\s1_reg[2][7]_i_1_n_6 ,\s1_reg[2][7]_i_1_n_7 }),
        .S({\s1[2][7]_i_2_n_0 ,\s1[2][7]_i_3_n_0 ,\s1[2][7]_i_4_n_0 ,\s1[2][7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][11]_i_1_n_7 ),
        .Q(\s1_reg[2]_1 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[2][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(\s1_reg[2][11]_i_1_n_6 ),
        .Q(\s1_reg[2]_1 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[0]),
        .Q(\s1_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[10]),
        .Q(\s1_reg[3]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[11]),
        .Q(\s1_reg[3]_0 [11]));
  CARRY4 \s1_reg[3][11]_i_1 
       (.CI(\s1_reg[3][7]_i_1_n_0 ),
        .CO({\s1_reg[3][11]_i_1_n_0 ,\NLW_s1_reg[3][11]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [11:8]),
        .O(p_0_in[11:8]),
        .S({\s1[3][11]_i_2_n_0 ,\s1[3][11]_i_3_n_0 ,\s1[3][11]_i_4_n_0 ,\s1[3][11]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p_0_in[12]),
        .Q(\s1_reg[3]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p_0_in[13]),
        .Q(\s1_reg[3]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p_0_in[14]),
        .Q(\s1_reg[3]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p_0_in[15]),
        .Q(\s1_reg[3]_0 [15]));
  CARRY4 \s1_reg[3][15]_i_1 
       (.CI(\s1_reg[3][11]_i_1_n_0 ),
        .CO({\s1_reg[3][15]_i_1_n_0 ,\NLW_s1_reg[3][15]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [15:12]),
        .O(p_0_in[15:12]),
        .S({\s1[3][15]_i_2_n_0 ,\s1[3][15]_i_3_n_0 ,\s1[3][15]_i_4_n_0 ,\s1[3][15]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p_0_in[16]),
        .Q(\s1_reg[3]_0 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(p_0_in[17]),
        .Q(\s1_reg[3]_0 [17]));
  CARRY4 \s1_reg[3][17]_i_1 
       (.CI(\s1_reg[3][15]_i_1_n_0 ),
        .CO(\NLW_s1_reg[3][17]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\s1[3][17]_i_2_n_0 }),
        .O({\NLW_s1_reg[3][17]_i_1_O_UNCONNECTED [3:2],p_0_in[17:16]}),
        .S({1'b0,1'b0,1'b1,\g_row[2].g_col[0].g_lut.p_q_reg[16] }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[1]),
        .Q(\s1_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[2]),
        .Q(\s1_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[3]),
        .Q(\s1_reg[3]_0 [3]));
  CARRY4 \s1_reg[3][3]_i_1 
       (.CI(1'b0),
        .CO({\s1_reg[3][3]_i_1_n_0 ,\NLW_s1_reg[3][3]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [3:0]),
        .O(p_0_in[3:0]),
        .S({\s1[3][3]_i_2_n_0 ,\s1[3][3]_i_3_n_0 ,\s1[3][3]_i_4_n_0 ,\s1[3][3]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[4]),
        .Q(\s1_reg[3]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[5]),
        .Q(\s1_reg[3]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[6]),
        .Q(\s1_reg[3]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
        .D(p_0_in[7]),
        .Q(\s1_reg[3]_0 [7]));
  CARRY4 \s1_reg[3][7]_i_1 
       (.CI(\s1_reg[3][3]_i_1_n_0 ),
        .CO({\s1_reg[3][7]_i_1_n_0 ,\NLW_s1_reg[3][7]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\prod[6] [7:4]),
        .O(p_0_in[7:4]),
        .S({\s1[3][7]_i_2_n_0 ,\s1[3][7]_i_3_n_0 ,\s1[3][7]_i_4_n_0 ,\s1[3][7]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(p_0_in[8]),
        .Q(\s1_reg[3]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s1_reg[3][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_1),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][3]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][11]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
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
        .CLR(rst_n_0),
        .D(\s2_reg[0][15]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s2_reg[0][15]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s2_reg[0][15]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
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
        .CLR(rst_n_0),
        .D(\s2_reg[0][18]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s2_reg[0][18]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][3]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][3]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][7]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][7]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][7]_i_1_n_5 ),
        .Q(\s2_reg[0]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][11]_i_1_n_7 ),
        .Q(\s2_reg[0]_5 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[0][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[0][11]_i_1_n_6 ),
        .Q(\s2_reg[0]_5 [9]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][3]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][11]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
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
        .CLR(rst_n_0),
        .D(\s2_reg[1][15]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s2_reg[1][15]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s2_reg[1][15]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
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
        .CLR(rst_n_0),
        .D(\s2_reg[1][18]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [16]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
        .D(\s2_reg[1][18]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [17]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n_0),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][3]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][3]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][7]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][7]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][7]_i_1_n_5 ),
        .Q(\s2_reg[1]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
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
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][11]_i_1_n_7 ),
        .Q(\s2_reg[1]_2 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \s2_reg[1][9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(\s1_reg[0][17]_0 ),
        .D(\s2_reg[1][11]_i_1_n_6 ),
        .Q(\s2_reg[1]_2 [9]));
endmodule

(* ECO_CHECKSUM = "5ab2d537" *) (* W = "32" *) (* use_dsp = "0" *) 
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
  wire out_valid;
  wire [16:0]\prod[0] ;
  wire [15:0]\prod[1] ;
  wire [16:0]\prod[2] ;
  wire [15:0]\prod[3] ;
  wire [16:0]\prod[4] ;
  wire [15:0]\prod[5] ;
  wire [16:0]\prod[6] ;
  wire [15:0]\prod[7] ;
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
  wire u_adder_tree_n_0;
  wire u_ctrl_fsm_n_11;
  wire u_ctrl_fsm_n_12;
  wire u_ctrl_fsm_n_13;
  wire u_ctrl_fsm_n_14;
  wire u_ctrl_fsm_n_15;
  wire u_ctrl_fsm_n_16;
  wire u_ctrl_fsm_n_17;
  wire u_kernel_regfile_n_0;
  wire u_kernel_regfile_n_1;
  wire u_kernel_regfile_n_101;
  wire u_kernel_regfile_n_102;
  wire u_kernel_regfile_n_103;
  wire u_kernel_regfile_n_104;
  wire u_kernel_regfile_n_105;
  wire u_kernel_regfile_n_106;
  wire u_kernel_regfile_n_107;
  wire u_kernel_regfile_n_108;
  wire u_kernel_regfile_n_109;
  wire u_kernel_regfile_n_11;
  wire u_kernel_regfile_n_110;
  wire u_kernel_regfile_n_111;
  wire u_kernel_regfile_n_112;
  wire u_kernel_regfile_n_113;
  wire u_kernel_regfile_n_114;
  wire u_kernel_regfile_n_115;
  wire u_kernel_regfile_n_116;
  wire u_kernel_regfile_n_117;
  wire u_kernel_regfile_n_118;
  wire u_kernel_regfile_n_119;
  wire u_kernel_regfile_n_12;
  wire u_kernel_regfile_n_120;
  wire u_kernel_regfile_n_121;
  wire u_kernel_regfile_n_122;
  wire u_kernel_regfile_n_13;
  wire u_kernel_regfile_n_131;
  wire u_kernel_regfile_n_132;
  wire u_kernel_regfile_n_133;
  wire u_kernel_regfile_n_134;
  wire u_kernel_regfile_n_135;
  wire u_kernel_regfile_n_136;
  wire u_kernel_regfile_n_137;
  wire u_kernel_regfile_n_138;
  wire u_kernel_regfile_n_139;
  wire u_kernel_regfile_n_14;
  wire u_kernel_regfile_n_140;
  wire u_kernel_regfile_n_141;
  wire u_kernel_regfile_n_142;
  wire u_kernel_regfile_n_143;
  wire u_kernel_regfile_n_144;
  wire u_kernel_regfile_n_145;
  wire u_kernel_regfile_n_146;
  wire u_kernel_regfile_n_147;
  wire u_kernel_regfile_n_148;
  wire u_kernel_regfile_n_149;
  wire u_kernel_regfile_n_15;
  wire u_kernel_regfile_n_150;
  wire u_kernel_regfile_n_151;
  wire u_kernel_regfile_n_152;
  wire u_kernel_regfile_n_16;
  wire u_kernel_regfile_n_161;
  wire u_kernel_regfile_n_162;
  wire u_kernel_regfile_n_163;
  wire u_kernel_regfile_n_164;
  wire u_kernel_regfile_n_165;
  wire u_kernel_regfile_n_166;
  wire u_kernel_regfile_n_167;
  wire u_kernel_regfile_n_168;
  wire u_kernel_regfile_n_169;
  wire u_kernel_regfile_n_17;
  wire u_kernel_regfile_n_170;
  wire u_kernel_regfile_n_171;
  wire u_kernel_regfile_n_172;
  wire u_kernel_regfile_n_173;
  wire u_kernel_regfile_n_174;
  wire u_kernel_regfile_n_175;
  wire u_kernel_regfile_n_176;
  wire u_kernel_regfile_n_177;
  wire u_kernel_regfile_n_178;
  wire u_kernel_regfile_n_179;
  wire u_kernel_regfile_n_18;
  wire u_kernel_regfile_n_180;
  wire u_kernel_regfile_n_181;
  wire u_kernel_regfile_n_182;
  wire u_kernel_regfile_n_19;
  wire u_kernel_regfile_n_191;
  wire u_kernel_regfile_n_192;
  wire u_kernel_regfile_n_193;
  wire u_kernel_regfile_n_194;
  wire u_kernel_regfile_n_195;
  wire u_kernel_regfile_n_196;
  wire u_kernel_regfile_n_197;
  wire u_kernel_regfile_n_198;
  wire u_kernel_regfile_n_199;
  wire u_kernel_regfile_n_2;
  wire u_kernel_regfile_n_20;
  wire u_kernel_regfile_n_200;
  wire u_kernel_regfile_n_201;
  wire u_kernel_regfile_n_202;
  wire u_kernel_regfile_n_203;
  wire u_kernel_regfile_n_204;
  wire u_kernel_regfile_n_205;
  wire u_kernel_regfile_n_206;
  wire u_kernel_regfile_n_207;
  wire u_kernel_regfile_n_208;
  wire u_kernel_regfile_n_209;
  wire u_kernel_regfile_n_21;
  wire u_kernel_regfile_n_210;
  wire u_kernel_regfile_n_211;
  wire u_kernel_regfile_n_212;
  wire u_kernel_regfile_n_22;
  wire u_kernel_regfile_n_221;
  wire u_kernel_regfile_n_222;
  wire u_kernel_regfile_n_223;
  wire u_kernel_regfile_n_224;
  wire u_kernel_regfile_n_225;
  wire u_kernel_regfile_n_226;
  wire u_kernel_regfile_n_227;
  wire u_kernel_regfile_n_228;
  wire u_kernel_regfile_n_229;
  wire u_kernel_regfile_n_23;
  wire u_kernel_regfile_n_230;
  wire u_kernel_regfile_n_231;
  wire u_kernel_regfile_n_232;
  wire u_kernel_regfile_n_233;
  wire u_kernel_regfile_n_234;
  wire u_kernel_regfile_n_235;
  wire u_kernel_regfile_n_236;
  wire u_kernel_regfile_n_237;
  wire u_kernel_regfile_n_238;
  wire u_kernel_regfile_n_239;
  wire u_kernel_regfile_n_24;
  wire u_kernel_regfile_n_240;
  wire u_kernel_regfile_n_241;
  wire u_kernel_regfile_n_242;
  wire u_kernel_regfile_n_25;
  wire u_kernel_regfile_n_251;
  wire u_kernel_regfile_n_252;
  wire u_kernel_regfile_n_253;
  wire u_kernel_regfile_n_254;
  wire u_kernel_regfile_n_255;
  wire u_kernel_regfile_n_256;
  wire u_kernel_regfile_n_257;
  wire u_kernel_regfile_n_258;
  wire u_kernel_regfile_n_259;
  wire u_kernel_regfile_n_26;
  wire u_kernel_regfile_n_260;
  wire u_kernel_regfile_n_261;
  wire u_kernel_regfile_n_262;
  wire u_kernel_regfile_n_263;
  wire u_kernel_regfile_n_264;
  wire u_kernel_regfile_n_265;
  wire u_kernel_regfile_n_266;
  wire u_kernel_regfile_n_267;
  wire u_kernel_regfile_n_268;
  wire u_kernel_regfile_n_269;
  wire u_kernel_regfile_n_27;
  wire u_kernel_regfile_n_270;
  wire u_kernel_regfile_n_271;
  wire u_kernel_regfile_n_28;
  wire u_kernel_regfile_n_29;
  wire u_kernel_regfile_n_30;
  wire u_kernel_regfile_n_31;
  wire u_kernel_regfile_n_32;
  wire u_kernel_regfile_n_41;
  wire u_kernel_regfile_n_42;
  wire u_kernel_regfile_n_43;
  wire u_kernel_regfile_n_44;
  wire u_kernel_regfile_n_45;
  wire u_kernel_regfile_n_46;
  wire u_kernel_regfile_n_47;
  wire u_kernel_regfile_n_48;
  wire u_kernel_regfile_n_49;
  wire u_kernel_regfile_n_50;
  wire u_kernel_regfile_n_51;
  wire u_kernel_regfile_n_52;
  wire u_kernel_regfile_n_53;
  wire u_kernel_regfile_n_54;
  wire u_kernel_regfile_n_55;
  wire u_kernel_regfile_n_56;
  wire u_kernel_regfile_n_57;
  wire u_kernel_regfile_n_58;
  wire u_kernel_regfile_n_59;
  wire u_kernel_regfile_n_60;
  wire u_kernel_regfile_n_61;
  wire u_kernel_regfile_n_62;
  wire u_kernel_regfile_n_71;
  wire u_kernel_regfile_n_72;
  wire u_kernel_regfile_n_73;
  wire u_kernel_regfile_n_74;
  wire u_kernel_regfile_n_75;
  wire u_kernel_regfile_n_76;
  wire u_kernel_regfile_n_77;
  wire u_kernel_regfile_n_78;
  wire u_kernel_regfile_n_79;
  wire u_kernel_regfile_n_80;
  wire u_kernel_regfile_n_81;
  wire u_kernel_regfile_n_82;
  wire u_kernel_regfile_n_83;
  wire u_kernel_regfile_n_84;
  wire u_kernel_regfile_n_85;
  wire u_kernel_regfile_n_86;
  wire u_kernel_regfile_n_87;
  wire u_kernel_regfile_n_88;
  wire u_kernel_regfile_n_89;
  wire u_kernel_regfile_n_90;
  wire u_kernel_regfile_n_91;
  wire u_kernel_regfile_n_92;
  wire u_line_window_n_100;
  wire u_line_window_n_101;
  wire u_line_window_n_102;
  wire u_line_window_n_103;
  wire u_line_window_n_104;
  wire u_line_window_n_105;
  wire u_line_window_n_106;
  wire u_line_window_n_115;
  wire u_line_window_n_116;
  wire u_line_window_n_117;
  wire u_line_window_n_118;
  wire u_line_window_n_119;
  wire u_line_window_n_120;
  wire u_line_window_n_121;
  wire u_line_window_n_122;
  wire u_line_window_n_123;
  wire u_line_window_n_124;
  wire u_line_window_n_125;
  wire u_line_window_n_126;
  wire u_line_window_n_127;
  wire u_line_window_n_128;
  wire u_line_window_n_129;
  wire u_line_window_n_130;
  wire u_line_window_n_131;
  wire u_line_window_n_132;
  wire u_line_window_n_133;
  wire u_line_window_n_134;
  wire u_line_window_n_135;
  wire u_line_window_n_136;
  wire u_line_window_n_145;
  wire u_line_window_n_146;
  wire u_line_window_n_147;
  wire u_line_window_n_148;
  wire u_line_window_n_149;
  wire u_line_window_n_150;
  wire u_line_window_n_151;
  wire u_line_window_n_152;
  wire u_line_window_n_153;
  wire u_line_window_n_154;
  wire u_line_window_n_155;
  wire u_line_window_n_16;
  wire u_line_window_n_164;
  wire u_line_window_n_165;
  wire u_line_window_n_166;
  wire u_line_window_n_167;
  wire u_line_window_n_168;
  wire u_line_window_n_169;
  wire u_line_window_n_17;
  wire u_line_window_n_170;
  wire u_line_window_n_171;
  wire u_line_window_n_18;
  wire u_line_window_n_19;
  wire u_line_window_n_28;
  wire u_line_window_n_29;
  wire u_line_window_n_30;
  wire u_line_window_n_31;
  wire u_line_window_n_32;
  wire u_line_window_n_33;
  wire u_line_window_n_34;
  wire u_line_window_n_35;
  wire u_line_window_n_36;
  wire u_line_window_n_37;
  wire u_line_window_n_38;
  wire u_line_window_n_47;
  wire u_line_window_n_48;
  wire u_line_window_n_49;
  wire u_line_window_n_50;
  wire u_line_window_n_51;
  wire u_line_window_n_52;
  wire u_line_window_n_53;
  wire u_line_window_n_54;
  wire u_line_window_n_55;
  wire u_line_window_n_56;
  wire u_line_window_n_57;
  wire u_line_window_n_66;
  wire u_line_window_n_67;
  wire u_line_window_n_68;
  wire u_line_window_n_69;
  wire u_line_window_n_70;
  wire u_line_window_n_71;
  wire u_line_window_n_72;
  wire u_line_window_n_73;
  wire u_line_window_n_74;
  wire u_line_window_n_75;
  wire u_line_window_n_76;
  wire u_line_window_n_77;
  wire u_line_window_n_78;
  wire u_line_window_n_79;
  wire u_line_window_n_80;
  wire u_line_window_n_81;
  wire u_line_window_n_82;
  wire u_line_window_n_83;
  wire u_line_window_n_84;
  wire u_line_window_n_85;
  wire u_line_window_n_86;
  wire u_line_window_n_87;
  wire u_line_window_n_96;
  wire u_line_window_n_97;
  wire u_line_window_n_98;
  wire u_line_window_n_99;
  wire u_mac_array_n_0;
  wire u_mac_array_n_1;
  wire u_mac_array_n_10;
  wire u_mac_array_n_11;
  wire u_mac_array_n_12;
  wire u_mac_array_n_13;
  wire u_mac_array_n_131;
  wire u_mac_array_n_14;
  wire u_mac_array_n_15;
  wire u_mac_array_n_16;
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
  wire u_mac_array_n_217;
  wire u_mac_array_n_218;
  wire u_mac_array_n_219;
  wire u_mac_array_n_22;
  wire u_mac_array_n_220;
  wire u_mac_array_n_221;
  wire u_mac_array_n_222;
  wire u_mac_array_n_223;
  wire u_mac_array_n_224;
  wire u_mac_array_n_225;
  wire u_mac_array_n_226;
  wire u_mac_array_n_227;
  wire u_mac_array_n_228;
  wire u_mac_array_n_229;
  wire u_mac_array_n_23;
  wire u_mac_array_n_230;
  wire u_mac_array_n_231;
  wire u_mac_array_n_232;
  wire u_mac_array_n_233;
  wire u_mac_array_n_234;
  wire u_mac_array_n_235;
  wire u_mac_array_n_236;
  wire u_mac_array_n_237;
  wire u_mac_array_n_238;
  wire u_mac_array_n_239;
  wire u_mac_array_n_24;
  wire u_mac_array_n_240;
  wire u_mac_array_n_241;
  wire u_mac_array_n_242;
  wire u_mac_array_n_243;
  wire u_mac_array_n_244;
  wire u_mac_array_n_245;
  wire u_mac_array_n_246;
  wire u_mac_array_n_247;
  wire u_mac_array_n_248;
  wire u_mac_array_n_249;
  wire u_mac_array_n_25;
  wire u_mac_array_n_250;
  wire u_mac_array_n_251;
  wire u_mac_array_n_252;
  wire u_mac_array_n_253;
  wire u_mac_array_n_254;
  wire u_mac_array_n_255;
  wire u_mac_array_n_256;
  wire u_mac_array_n_257;
  wire u_mac_array_n_258;
  wire u_mac_array_n_259;
  wire u_mac_array_n_26;
  wire u_mac_array_n_260;
  wire u_mac_array_n_261;
  wire u_mac_array_n_262;
  wire u_mac_array_n_263;
  wire u_mac_array_n_264;
  wire u_mac_array_n_265;
  wire u_mac_array_n_266;
  wire u_mac_array_n_267;
  wire u_mac_array_n_268;
  wire u_mac_array_n_269;
  wire u_mac_array_n_27;
  wire u_mac_array_n_270;
  wire u_mac_array_n_271;
  wire u_mac_array_n_272;
  wire u_mac_array_n_273;
  wire u_mac_array_n_274;
  wire u_mac_array_n_275;
  wire u_mac_array_n_276;
  wire u_mac_array_n_277;
  wire u_mac_array_n_278;
  wire u_mac_array_n_279;
  wire u_mac_array_n_28;
  wire u_mac_array_n_280;
  wire u_mac_array_n_281;
  wire u_mac_array_n_282;
  wire u_mac_array_n_283;
  wire u_mac_array_n_284;
  wire u_mac_array_n_285;
  wire u_mac_array_n_286;
  wire u_mac_array_n_287;
  wire u_mac_array_n_288;
  wire u_mac_array_n_289;
  wire u_mac_array_n_29;
  wire u_mac_array_n_290;
  wire u_mac_array_n_291;
  wire u_mac_array_n_292;
  wire u_mac_array_n_293;
  wire u_mac_array_n_294;
  wire u_mac_array_n_295;
  wire u_mac_array_n_296;
  wire u_mac_array_n_297;
  wire u_mac_array_n_298;
  wire u_mac_array_n_299;
  wire u_mac_array_n_3;
  wire u_mac_array_n_300;
  wire u_mac_array_n_301;
  wire u_mac_array_n_302;
  wire u_mac_array_n_303;
  wire u_mac_array_n_304;
  wire u_mac_array_n_305;
  wire u_mac_array_n_306;
  wire u_mac_array_n_307;
  wire u_mac_array_n_308;
  wire u_mac_array_n_309;
  wire u_mac_array_n_310;
  wire u_mac_array_n_311;
  wire u_mac_array_n_312;
  wire u_mac_array_n_313;
  wire u_mac_array_n_314;
  wire u_mac_array_n_315;
  wire u_mac_array_n_316;
  wire u_mac_array_n_317;
  wire u_mac_array_n_318;
  wire u_mac_array_n_319;
  wire u_mac_array_n_320;
  wire u_mac_array_n_321;
  wire u_mac_array_n_322;
  wire u_mac_array_n_323;
  wire u_mac_array_n_324;
  wire u_mac_array_n_325;
  wire u_mac_array_n_326;
  wire u_mac_array_n_327;
  wire u_mac_array_n_328;
  wire u_mac_array_n_329;
  wire u_mac_array_n_330;
  wire u_mac_array_n_331;
  wire u_mac_array_n_332;
  wire u_mac_array_n_333;
  wire u_mac_array_n_334;
  wire u_mac_array_n_335;
  wire u_mac_array_n_336;
  wire u_mac_array_n_337;
  wire u_mac_array_n_338;
  wire u_mac_array_n_339;
  wire u_mac_array_n_340;
  wire u_mac_array_n_341;
  wire u_mac_array_n_342;
  wire u_mac_array_n_343;
  wire u_mac_array_n_344;
  wire u_mac_array_n_4;
  wire u_mac_array_n_5;
  wire u_mac_array_n_6;
  wire u_mac_array_n_63;
  wire u_mac_array_n_7;
  wire u_mac_array_n_8;
  wire u_mac_array_n_9;
  wire u_mac_array_n_97;
  wire u_normalize_n_1;
  wire [7:0]\win[0][0] ;
  wire [7:0]\win[0][1] ;
  wire [7:0]\win[0][2] ;
  wire [7:0]\win[1][0] ;
  wire [7:0]\win[1][1] ;
  wire [7:0]\win[1][2] ;
  wire [7:0]\win[2][0] ;
  wire [7:0]\win[2][1] ;
  wire [7:0]\win[2][2] ;

  adder_tree u_adder_tree
       (.O(rounded_q1),
        .Q(acc),
        .S({u_ctrl_fsm_n_11,u_ctrl_fsm_n_12,u_ctrl_fsm_n_13,u_ctrl_fsm_n_14}),
        .\acc_reg[6]_0 ({u_ctrl_fsm_n_15,u_ctrl_fsm_n_16,u_ctrl_fsm_n_17}),
        .clk(clk),
        .\g_row[0].g_col[0].g_lut.p_q_reg[16] (u_mac_array_n_131),
        .\g_row[0].g_col[2].g_lut.p_q_reg[16] (u_mac_array_n_97),
        .\g_row[1].g_col[1].g_lut.p_q_reg[16] (u_mac_array_n_63),
        .\g_row[2].g_col[0].g_lut.p_q_reg[16] (u_mac_array_n_29),
        .\prod[0] (\prod[0] ),
        .\prod[1] (\prod[1] ),
        .\prod[2] (\prod[2] ),
        .\prod[3] (\prod[3] ),
        .\prod[4] (\prod[4] ),
        .\prod[5] (\prod[5] ),
        .\prod[6] (\prod[6] ),
        .\prod[7] (\prod[7] ),
        .\prod[8] (\prod[8] ),
        .rounded_q1(rounded_q1__0),
        .rst_n(rst_n),
        .rst_n_0(u_mac_array_n_1),
        .rst_n_1(u_line_window_n_16),
        .rst_n_2(u_mac_array_n_0),
        .rst_n_3(u_normalize_n_1),
        .\s1_reg[0][17]_0 (u_adder_tree_n_0),
        .shift_en(shift_en));
  ctrl_fsm u_ctrl_fsm
       (.D(rounded_d),
        .O(rounded_q1),
        .Q(bank_sel),
        .S({u_ctrl_fsm_n_11,u_ctrl_fsm_n_12,u_ctrl_fsm_n_13,u_ctrl_fsm_n_14}),
        .\acc_reg[6] (acc),
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
        .\rounded_q_reg[6] ({u_ctrl_fsm_n_15,u_ctrl_fsm_n_16,u_ctrl_fsm_n_17}),
        .rst_n(u_normalize_n_1),
        .rst_n_0(u_kernel_regfile_n_0),
        .rst_n_1(u_kernel_regfile_n_1),
        .shift_en(shift_en));
  kernel_regfile u_kernel_regfile
       (.CO(u_mac_array_n_173),
        .DI({u_mac_array_n_165,u_mac_array_n_166,u_mac_array_n_167,u_mac_array_n_168}),
        .O(u_mac_array_n_4),
        .Q(bank_sel),
        .S(u_kernel_regfile_n_2),
        .\bank_reg[0][2][0]_0 (u_kernel_regfile_n_1),
        .\bank_reg[0][7][0]_0 (u_kernel_regfile_n_0),
        .clk(clk),
        .\coef[0] (\coef[0] ),
        .\coef[1] (\coef[1] ),
        .\coef[2] (\coef[2] ),
        .\coef[3] (\coef[3] ),
        .\coef[4] (\coef[4] ),
        .\coef[5] (\coef[5] ),
        .\coef[6] (\coef[6] ),
        .\coef[7] (\coef[7] ),
        .\coef[8] (\coef[8] ),
        .\coef_reg[0][5]_0 ({u_mac_array_n_169,u_mac_array_n_170,u_mac_array_n_171,u_mac_array_n_172}),
        .\coef_reg[0][7]_0 ({u_mac_array_n_2,u_mac_array_n_3}),
        .\coef_reg[1][2]_0 ({u_mac_array_n_185,u_mac_array_n_186,u_mac_array_n_187,u_mac_array_n_188}),
        .\coef_reg[1][5]_0 ({u_mac_array_n_189,u_mac_array_n_190,u_mac_array_n_191,u_mac_array_n_192}),
        .\coef_reg[1][5]_1 (u_mac_array_n_7),
        .\coef_reg[1][5]_2 (u_mac_array_n_193),
        .\coef_reg[1][7]_0 ({u_mac_array_n_5,u_mac_array_n_6}),
        .\coef_reg[2][2]_0 ({u_mac_array_n_205,u_mac_array_n_206,u_mac_array_n_207,u_mac_array_n_208}),
        .\coef_reg[2][5]_0 ({u_mac_array_n_209,u_mac_array_n_210,u_mac_array_n_211,u_mac_array_n_212}),
        .\coef_reg[2][5]_1 (u_mac_array_n_10),
        .\coef_reg[2][5]_2 (u_mac_array_n_213),
        .\coef_reg[2][7]_0 ({u_mac_array_n_8,u_mac_array_n_9}),
        .\coef_reg[3][2]_0 ({u_mac_array_n_225,u_mac_array_n_226,u_mac_array_n_227,u_mac_array_n_228}),
        .\coef_reg[3][5]_0 ({u_mac_array_n_229,u_mac_array_n_230,u_mac_array_n_231,u_mac_array_n_232}),
        .\coef_reg[3][5]_1 (u_mac_array_n_13),
        .\coef_reg[3][5]_2 (u_mac_array_n_233),
        .\coef_reg[3][7]_0 ({u_mac_array_n_11,u_mac_array_n_12}),
        .\coef_reg[4][2]_0 ({u_mac_array_n_245,u_mac_array_n_246,u_mac_array_n_247,u_mac_array_n_248}),
        .\coef_reg[4][5]_0 ({u_mac_array_n_249,u_mac_array_n_250,u_mac_array_n_251,u_mac_array_n_252}),
        .\coef_reg[4][5]_1 (u_mac_array_n_16),
        .\coef_reg[4][5]_2 (u_mac_array_n_253),
        .\coef_reg[4][7]_0 ({u_mac_array_n_14,u_mac_array_n_15}),
        .\coef_reg[5][2]_0 ({u_mac_array_n_265,u_mac_array_n_266,u_mac_array_n_267,u_mac_array_n_268}),
        .\coef_reg[5][5]_0 ({u_mac_array_n_269,u_mac_array_n_270,u_mac_array_n_271,u_mac_array_n_272}),
        .\coef_reg[5][5]_1 (u_mac_array_n_19),
        .\coef_reg[5][5]_2 (u_mac_array_n_273),
        .\coef_reg[5][7]_0 ({u_mac_array_n_17,u_mac_array_n_18}),
        .\coef_reg[6][2]_0 ({u_mac_array_n_285,u_mac_array_n_286,u_mac_array_n_287,u_mac_array_n_288}),
        .\coef_reg[6][5]_0 ({u_mac_array_n_289,u_mac_array_n_290,u_mac_array_n_291,u_mac_array_n_292}),
        .\coef_reg[6][5]_1 (u_mac_array_n_22),
        .\coef_reg[6][5]_2 (u_mac_array_n_293),
        .\coef_reg[6][7]_0 ({u_mac_array_n_20,u_mac_array_n_21}),
        .\coef_reg[7][2]_0 ({u_mac_array_n_305,u_mac_array_n_306,u_mac_array_n_307,u_mac_array_n_308}),
        .\coef_reg[7][5]_0 ({u_mac_array_n_309,u_mac_array_n_310,u_mac_array_n_311,u_mac_array_n_312}),
        .\coef_reg[7][5]_1 (u_mac_array_n_25),
        .\coef_reg[7][5]_2 (u_mac_array_n_313),
        .\coef_reg[7][7]_0 ({u_mac_array_n_23,u_mac_array_n_24}),
        .\coef_reg[8][2]_0 ({u_mac_array_n_325,u_mac_array_n_326,u_mac_array_n_327,u_mac_array_n_328}),
        .\coef_reg[8][5]_0 ({u_mac_array_n_329,u_mac_array_n_330,u_mac_array_n_331,u_mac_array_n_332}),
        .\coef_reg[8][5]_1 (u_mac_array_n_28),
        .\coef_reg[8][5]_2 (u_mac_array_n_333),
        .\coef_reg[8][7]_0 ({u_mac_array_n_26,u_mac_array_n_27}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10] ({u_kernel_regfile_n_11,u_kernel_regfile_n_12,u_kernel_regfile_n_13,u_kernel_regfile_n_14}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_16),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_17,u_kernel_regfile_n_18,u_kernel_regfile_n_19,u_kernel_regfile_n_20}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_22,u_kernel_regfile_n_23,u_kernel_regfile_n_24}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[14] (u_kernel_regfile_n_15),
        .\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_21),
        .\g_row[0].g_col[0].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_30),
        .\g_row[0].g_col[0].g_lut.p_q_reg[16] ({u_kernel_regfile_n_25,u_kernel_regfile_n_26,u_kernel_regfile_n_27,u_kernel_regfile_n_28}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_29),
        .\g_row[0].g_col[0].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_31),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10] ({u_kernel_regfile_n_41,u_kernel_regfile_n_42,u_kernel_regfile_n_43,u_kernel_regfile_n_44}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_46),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_47,u_kernel_regfile_n_48,u_kernel_regfile_n_49,u_kernel_regfile_n_50}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_52,u_kernel_regfile_n_53,u_kernel_regfile_n_54}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[14] (u_kernel_regfile_n_45),
        .\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_51),
        .\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_60),
        .\g_row[0].g_col[1].g_lut.p_q_reg[16] ({u_kernel_regfile_n_55,u_kernel_regfile_n_56,u_kernel_regfile_n_57,u_kernel_regfile_n_58}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_59),
        .\g_row[0].g_col[1].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_61),
        .\g_row[0].g_col[1].g_lut.p_q_reg[2] (u_kernel_regfile_n_32),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10] ({u_kernel_regfile_n_71,u_kernel_regfile_n_72,u_kernel_regfile_n_73,u_kernel_regfile_n_74}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_76),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_77,u_kernel_regfile_n_78,u_kernel_regfile_n_79,u_kernel_regfile_n_80}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_82,u_kernel_regfile_n_83,u_kernel_regfile_n_84}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[14] (u_kernel_regfile_n_75),
        .\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_81),
        .\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_90),
        .\g_row[0].g_col[2].g_lut.p_q_reg[16] ({u_kernel_regfile_n_85,u_kernel_regfile_n_86,u_kernel_regfile_n_87,u_kernel_regfile_n_88}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_89),
        .\g_row[0].g_col[2].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_91),
        .\g_row[0].g_col[2].g_lut.p_q_reg[2] (u_kernel_regfile_n_62),
        .\g_row[0].g_tap[0].taps_reg[0][0][2] (u_mac_array_n_176),
        .\g_row[0].g_tap[0].taps_reg[0][0][2]_0 (u_mac_array_n_181),
        .\g_row[0].g_tap[0].taps_reg[0][0][3] (u_mac_array_n_177),
        .\g_row[0].g_tap[0].taps_reg[0][0][3]_0 (u_mac_array_n_182),
        .\g_row[0].g_tap[0].taps_reg[0][0][4] (u_mac_array_n_178),
        .\g_row[0].g_tap[0].taps_reg[0][0][4]_0 (u_mac_array_n_183),
        .\g_row[0].g_tap[0].taps_reg[0][0][5] (u_mac_array_n_179),
        .\g_row[0].g_tap[0].taps_reg[0][0][5]_0 (u_mac_array_n_184),
        .\g_row[0].g_tap[0].taps_reg[0][0][7] (u_mac_array_n_174),
        .\g_row[0].g_tap[1].taps_reg[0][1][2] (u_mac_array_n_196),
        .\g_row[0].g_tap[1].taps_reg[0][1][2]_0 (u_mac_array_n_201),
        .\g_row[0].g_tap[1].taps_reg[0][1][3] (u_mac_array_n_197),
        .\g_row[0].g_tap[1].taps_reg[0][1][3]_0 (u_mac_array_n_202),
        .\g_row[0].g_tap[1].taps_reg[0][1][4] (u_mac_array_n_198),
        .\g_row[0].g_tap[1].taps_reg[0][1][4]_0 (u_mac_array_n_203),
        .\g_row[0].g_tap[1].taps_reg[0][1][5] (u_mac_array_n_199),
        .\g_row[0].g_tap[1].taps_reg[0][1][5]_0 (u_mac_array_n_204),
        .\g_row[0].g_tap[1].taps_reg[0][1][7] (u_mac_array_n_194),
        .\g_row[0].taps_reg[0][2][2] (u_mac_array_n_216),
        .\g_row[0].taps_reg[0][2][2]_0 (u_mac_array_n_221),
        .\g_row[0].taps_reg[0][2][3] (u_mac_array_n_217),
        .\g_row[0].taps_reg[0][2][3]_0 (u_mac_array_n_222),
        .\g_row[0].taps_reg[0][2][4] (u_mac_array_n_218),
        .\g_row[0].taps_reg[0][2][4]_0 (u_mac_array_n_223),
        .\g_row[0].taps_reg[0][2][5] (u_mac_array_n_219),
        .\g_row[0].taps_reg[0][2][5]_0 (u_mac_array_n_224),
        .\g_row[0].taps_reg[0][2][7] (u_mac_array_n_214),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10] ({u_kernel_regfile_n_101,u_kernel_regfile_n_102,u_kernel_regfile_n_103,u_kernel_regfile_n_104}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_106),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_107,u_kernel_regfile_n_108,u_kernel_regfile_n_109,u_kernel_regfile_n_110}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_112,u_kernel_regfile_n_113,u_kernel_regfile_n_114}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[14] (u_kernel_regfile_n_105),
        .\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_111),
        .\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_120),
        .\g_row[1].g_col[0].g_lut.p_q_reg[16] ({u_kernel_regfile_n_115,u_kernel_regfile_n_116,u_kernel_regfile_n_117,u_kernel_regfile_n_118}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_119),
        .\g_row[1].g_col[0].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_121),
        .\g_row[1].g_col[0].g_lut.p_q_reg[2] (u_kernel_regfile_n_92),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10] ({u_kernel_regfile_n_131,u_kernel_regfile_n_132,u_kernel_regfile_n_133,u_kernel_regfile_n_134}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_136),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_137,u_kernel_regfile_n_138,u_kernel_regfile_n_139,u_kernel_regfile_n_140}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_142,u_kernel_regfile_n_143,u_kernel_regfile_n_144}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[14] (u_kernel_regfile_n_135),
        .\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_141),
        .\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_150),
        .\g_row[1].g_col[1].g_lut.p_q_reg[16] ({u_kernel_regfile_n_145,u_kernel_regfile_n_146,u_kernel_regfile_n_147,u_kernel_regfile_n_148}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_149),
        .\g_row[1].g_col[1].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_151),
        .\g_row[1].g_col[1].g_lut.p_q_reg[2] (u_kernel_regfile_n_122),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10] ({u_kernel_regfile_n_161,u_kernel_regfile_n_162,u_kernel_regfile_n_163,u_kernel_regfile_n_164}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_166),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_167,u_kernel_regfile_n_168,u_kernel_regfile_n_169,u_kernel_regfile_n_170}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_172,u_kernel_regfile_n_173,u_kernel_regfile_n_174}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[14] (u_kernel_regfile_n_165),
        .\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_171),
        .\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_180),
        .\g_row[1].g_col[2].g_lut.p_q_reg[16] ({u_kernel_regfile_n_175,u_kernel_regfile_n_176,u_kernel_regfile_n_177,u_kernel_regfile_n_178}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_179),
        .\g_row[1].g_col[2].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_181),
        .\g_row[1].g_col[2].g_lut.p_q_reg[2] (u_kernel_regfile_n_152),
        .\g_row[1].g_tap[0].taps_reg[1][0][2] (u_mac_array_n_236),
        .\g_row[1].g_tap[0].taps_reg[1][0][2]_0 (u_mac_array_n_241),
        .\g_row[1].g_tap[0].taps_reg[1][0][3] (u_mac_array_n_237),
        .\g_row[1].g_tap[0].taps_reg[1][0][3]_0 (u_mac_array_n_242),
        .\g_row[1].g_tap[0].taps_reg[1][0][4] (u_mac_array_n_238),
        .\g_row[1].g_tap[0].taps_reg[1][0][4]_0 (u_mac_array_n_243),
        .\g_row[1].g_tap[0].taps_reg[1][0][5] (u_mac_array_n_239),
        .\g_row[1].g_tap[0].taps_reg[1][0][5]_0 (u_mac_array_n_244),
        .\g_row[1].g_tap[0].taps_reg[1][0][7] (u_mac_array_n_234),
        .\g_row[1].g_tap[1].taps_reg[1][1][2] (u_mac_array_n_256),
        .\g_row[1].g_tap[1].taps_reg[1][1][2]_0 (u_mac_array_n_261),
        .\g_row[1].g_tap[1].taps_reg[1][1][3] (u_mac_array_n_257),
        .\g_row[1].g_tap[1].taps_reg[1][1][3]_0 (u_mac_array_n_262),
        .\g_row[1].g_tap[1].taps_reg[1][1][4] (u_mac_array_n_258),
        .\g_row[1].g_tap[1].taps_reg[1][1][4]_0 (u_mac_array_n_263),
        .\g_row[1].g_tap[1].taps_reg[1][1][5] (u_mac_array_n_259),
        .\g_row[1].g_tap[1].taps_reg[1][1][5]_0 (u_mac_array_n_264),
        .\g_row[1].g_tap[1].taps_reg[1][1][7] (u_mac_array_n_254),
        .\g_row[1].taps_reg[1][2][2] (u_mac_array_n_276),
        .\g_row[1].taps_reg[1][2][2]_0 (u_mac_array_n_281),
        .\g_row[1].taps_reg[1][2][3] (u_mac_array_n_277),
        .\g_row[1].taps_reg[1][2][3]_0 (u_mac_array_n_282),
        .\g_row[1].taps_reg[1][2][4] (u_mac_array_n_278),
        .\g_row[1].taps_reg[1][2][4]_0 (u_mac_array_n_283),
        .\g_row[1].taps_reg[1][2][5] (u_mac_array_n_279),
        .\g_row[1].taps_reg[1][2][5]_0 (u_mac_array_n_284),
        .\g_row[1].taps_reg[1][2][7] (u_mac_array_n_274),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10] ({u_kernel_regfile_n_191,u_kernel_regfile_n_192,u_kernel_regfile_n_193,u_kernel_regfile_n_194}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_196),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_197,u_kernel_regfile_n_198,u_kernel_regfile_n_199,u_kernel_regfile_n_200}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_202,u_kernel_regfile_n_203,u_kernel_regfile_n_204}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[14] (u_kernel_regfile_n_195),
        .\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_201),
        .\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_210),
        .\g_row[2].g_col[0].g_lut.p_q_reg[16] ({u_kernel_regfile_n_205,u_kernel_regfile_n_206,u_kernel_regfile_n_207,u_kernel_regfile_n_208}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_209),
        .\g_row[2].g_col[0].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_211),
        .\g_row[2].g_col[0].g_lut.p_q_reg[2] (u_kernel_regfile_n_182),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10] ({u_kernel_regfile_n_221,u_kernel_regfile_n_222,u_kernel_regfile_n_223,u_kernel_regfile_n_224}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_226),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_227,u_kernel_regfile_n_228,u_kernel_regfile_n_229,u_kernel_regfile_n_230}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_232,u_kernel_regfile_n_233,u_kernel_regfile_n_234}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[14] (u_kernel_regfile_n_225),
        .\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_231),
        .\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_240),
        .\g_row[2].g_col[1].g_lut.p_q_reg[16] ({u_kernel_regfile_n_235,u_kernel_regfile_n_236,u_kernel_regfile_n_237,u_kernel_regfile_n_238}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_239),
        .\g_row[2].g_col[1].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_241),
        .\g_row[2].g_col[1].g_lut.p_q_reg[2] (u_kernel_regfile_n_212),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10] ({u_kernel_regfile_n_251,u_kernel_regfile_n_252,u_kernel_regfile_n_253,u_kernel_regfile_n_254}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 (u_kernel_regfile_n_256),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ({u_kernel_regfile_n_257,u_kernel_regfile_n_258,u_kernel_regfile_n_259,u_kernel_regfile_n_260}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ({u_kernel_regfile_n_262,u_kernel_regfile_n_263,u_kernel_regfile_n_264}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[14] (u_kernel_regfile_n_255),
        .\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 (u_kernel_regfile_n_261),
        .\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 (u_kernel_regfile_n_270),
        .\g_row[2].g_col[2].g_lut.p_q_reg[16] ({u_kernel_regfile_n_265,u_kernel_regfile_n_266,u_kernel_regfile_n_267,u_kernel_regfile_n_268}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 (u_kernel_regfile_n_269),
        .\g_row[2].g_col[2].g_lut.p_q_reg[16]_1 (u_kernel_regfile_n_271),
        .\g_row[2].g_col[2].g_lut.p_q_reg[2] (u_kernel_regfile_n_242),
        .\g_row[2].g_tap[0].taps_reg[2][0][2] (u_mac_array_n_296),
        .\g_row[2].g_tap[0].taps_reg[2][0][2]_0 (u_mac_array_n_301),
        .\g_row[2].g_tap[0].taps_reg[2][0][3] (u_mac_array_n_297),
        .\g_row[2].g_tap[0].taps_reg[2][0][3]_0 (u_mac_array_n_302),
        .\g_row[2].g_tap[0].taps_reg[2][0][4] (u_mac_array_n_298),
        .\g_row[2].g_tap[0].taps_reg[2][0][4]_0 (u_mac_array_n_303),
        .\g_row[2].g_tap[0].taps_reg[2][0][5] (u_mac_array_n_299),
        .\g_row[2].g_tap[0].taps_reg[2][0][5]_0 (u_mac_array_n_304),
        .\g_row[2].g_tap[0].taps_reg[2][0][7] (u_mac_array_n_294),
        .\g_row[2].g_tap[1].taps_reg[2][1][2] (u_mac_array_n_316),
        .\g_row[2].g_tap[1].taps_reg[2][1][2]_0 (u_mac_array_n_321),
        .\g_row[2].g_tap[1].taps_reg[2][1][3] (u_mac_array_n_317),
        .\g_row[2].g_tap[1].taps_reg[2][1][3]_0 (u_mac_array_n_322),
        .\g_row[2].g_tap[1].taps_reg[2][1][4] (u_mac_array_n_318),
        .\g_row[2].g_tap[1].taps_reg[2][1][4]_0 (u_mac_array_n_323),
        .\g_row[2].g_tap[1].taps_reg[2][1][5] (u_mac_array_n_319),
        .\g_row[2].g_tap[1].taps_reg[2][1][5]_0 (u_mac_array_n_324),
        .\g_row[2].g_tap[1].taps_reg[2][1][7] (u_mac_array_n_314),
        .\g_row[2].taps_reg[2][2][2] (u_mac_array_n_336),
        .\g_row[2].taps_reg[2][2][2]_0 (u_mac_array_n_341),
        .\g_row[2].taps_reg[2][2][3] (u_mac_array_n_337),
        .\g_row[2].taps_reg[2][2][3]_0 (u_mac_array_n_342),
        .\g_row[2].taps_reg[2][2][4] (u_mac_array_n_338),
        .\g_row[2].taps_reg[2][2][4]_0 (u_mac_array_n_343),
        .\g_row[2].taps_reg[2][2][5] (u_mac_array_n_339),
        .\g_row[2].taps_reg[2][2][5]_0 (u_mac_array_n_344),
        .\g_row[2].taps_reg[2][2][7] (u_mac_array_n_334),
        .kl_addr(kl_addr),
        .kl_bank(kl_bank),
        .kl_coef(kl_coef),
        .kl_valid(kl_valid),
        .rst_n(rst_n),
        .rst_n_0(u_mac_array_n_0),
        .rst_n_1(u_line_window_n_16),
        .rst_n_2(u_adder_tree_n_0),
        .\win[0][0] (\win[0][0] ),
        .\win[0][1] (\win[0][1] ),
        .\win[0][2] (\win[0][2] ),
        .\win[1][0] (\win[1][0] ),
        .\win[1][1] (\win[1][1] ),
        .\win[1][2] (\win[1][2] ),
        .\win[2][0] (\win[2][0] ),
        .\win[2][1] (\win[2][1] ),
        .\win[2][2] (\win[2][2] ));
  line_window u_line_window
       (.Q(\win[2][0] ),
        .S({u_line_window_n_17,u_line_window_n_18,u_line_window_n_19}),
        .advance(advance),
        .clk(clk),
        .\coef[0] (\coef[0] ),
        .\coef[1] (\coef[1] ),
        .\coef[2] (\coef[2] ),
        .\coef[3] (\coef[3] ),
        .\coef[4] (\coef[4] ),
        .\coef[5] (\coef[5] ),
        .\coef[6] (\coef[6] ),
        .\coef[7] (\coef[7] ),
        .\coef[8] (\coef[8] ),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10] ({u_line_window_n_28,u_line_window_n_29,u_line_window_n_30}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ({u_line_window_n_31,u_line_window_n_32}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[16] (\win[0][0] ),
        .\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ({u_line_window_n_33,u_line_window_n_34,u_line_window_n_35}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10] ({u_line_window_n_47,u_line_window_n_48,u_line_window_n_49}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ({u_line_window_n_50,u_line_window_n_51}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[16] ({u_line_window_n_52,u_line_window_n_53,u_line_window_n_54}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[2] ({u_line_window_n_36,u_line_window_n_37,u_line_window_n_38}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10] ({u_line_window_n_66,u_line_window_n_67,u_line_window_n_68}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ({u_line_window_n_69,u_line_window_n_70}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[16] ({u_line_window_n_71,u_line_window_n_72,u_line_window_n_73}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[2] ({u_line_window_n_55,u_line_window_n_56,u_line_window_n_57}),
        .\g_row[0].g_tap[0].taps_reg[0][0][3]_0 (u_mac_array_n_175),
        .\g_row[0].g_tap[0].taps_reg[0][0][3]_1 (u_mac_array_n_180),
        .\g_row[0].g_tap[0].taps_reg[0][0][7]_0 (\win[0][1] ),
        .\g_row[0].g_tap[1].taps_reg[0][1][3]_0 (u_mac_array_n_195),
        .\g_row[0].g_tap[1].taps_reg[0][1][3]_1 (u_mac_array_n_200),
        .\g_row[0].g_tap[1].taps_reg[0][1][7]_0 (\win[0][2] ),
        .\g_row[0].taps_reg[0][2][3]_0 (u_mac_array_n_215),
        .\g_row[0].taps_reg[0][2][3]_1 (u_mac_array_n_220),
        .\g_row[0].taps_reg[0][2][7]_0 (\win[1][0] ),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10] ({u_line_window_n_77,u_line_window_n_78,u_line_window_n_79}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ({u_line_window_n_80,u_line_window_n_81}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[16] ({u_line_window_n_82,u_line_window_n_83,u_line_window_n_84}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[2] ({u_line_window_n_74,u_line_window_n_75,u_line_window_n_76}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10] ({u_line_window_n_96,u_line_window_n_97,u_line_window_n_98}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ({u_line_window_n_99,u_line_window_n_100}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[16] ({u_line_window_n_101,u_line_window_n_102,u_line_window_n_103}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[2] ({u_line_window_n_85,u_line_window_n_86,u_line_window_n_87}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10] ({u_line_window_n_115,u_line_window_n_116,u_line_window_n_117}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ({u_line_window_n_118,u_line_window_n_119}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[16] ({u_line_window_n_120,u_line_window_n_121,u_line_window_n_122}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[2] ({u_line_window_n_104,u_line_window_n_105,u_line_window_n_106}),
        .\g_row[1].g_tap[0].taps_reg[1][0][3]_0 (u_mac_array_n_235),
        .\g_row[1].g_tap[0].taps_reg[1][0][3]_1 (u_mac_array_n_240),
        .\g_row[1].g_tap[0].taps_reg[1][0][7]_0 (\win[1][1] ),
        .\g_row[1].g_tap[1].taps_reg[1][1][3]_0 (u_mac_array_n_255),
        .\g_row[1].g_tap[1].taps_reg[1][1][3]_1 (u_mac_array_n_260),
        .\g_row[1].g_tap[1].taps_reg[1][1][7]_0 (\win[1][2] ),
        .\g_row[1].taps_reg[1][2][3]_0 (u_mac_array_n_275),
        .\g_row[1].taps_reg[1][2][3]_1 (u_mac_array_n_280),
        .\g_row[1].taps_reg[1][2][7]_0 (u_line_window_n_16),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10] ({u_line_window_n_126,u_line_window_n_127,u_line_window_n_128}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ({u_line_window_n_129,u_line_window_n_130}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[16] ({u_line_window_n_131,u_line_window_n_132,u_line_window_n_133}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[2] ({u_line_window_n_123,u_line_window_n_124,u_line_window_n_125}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10] ({u_line_window_n_145,u_line_window_n_146,u_line_window_n_147}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ({u_line_window_n_148,u_line_window_n_149}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[16] ({u_line_window_n_150,u_line_window_n_151,u_line_window_n_152}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[2] ({u_line_window_n_134,u_line_window_n_135,u_line_window_n_136}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10] ({u_line_window_n_164,u_line_window_n_165,u_line_window_n_166}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ({u_line_window_n_167,u_line_window_n_168}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[16] ({u_line_window_n_169,u_line_window_n_170,u_line_window_n_171}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[2] ({u_line_window_n_153,u_line_window_n_154,u_line_window_n_155}),
        .\g_row[2].g_tap[0].taps_reg[2][0][3]_0 (u_mac_array_n_295),
        .\g_row[2].g_tap[0].taps_reg[2][0][3]_1 (u_mac_array_n_300),
        .\g_row[2].g_tap[0].taps_reg[2][0][7]_0 (\win[2][1] ),
        .\g_row[2].g_tap[1].taps_reg[2][1][3]_0 (u_mac_array_n_315),
        .\g_row[2].g_tap[1].taps_reg[2][1][3]_1 (u_mac_array_n_320),
        .\g_row[2].g_tap[1].taps_reg[2][1][7]_0 (\win[2][2] ),
        .\g_row[2].taps_reg[2][2][3]_0 (u_mac_array_n_335),
        .\g_row[2].taps_reg[2][2][3]_1 (u_mac_array_n_340),
        .px_data(px_data),
        .rst_n(rst_n),
        .rst_n_0(u_adder_tree_n_0));
  mac_array u_mac_array
       (.CO(u_mac_array_n_173),
        .DI({u_mac_array_n_165,u_mac_array_n_166,u_mac_array_n_167,u_mac_array_n_168}),
        .E(shift_en),
        .O(u_mac_array_n_4),
        .Q(\prod[6] ),
        .S({u_line_window_n_17,u_line_window_n_18,u_kernel_regfile_n_2,u_line_window_n_19}),
        .clk(clk),
        .\coef[0] (\coef[0] ),
        .\coef[1] (\coef[1] ),
        .\coef[2] (\coef[2] ),
        .\coef[3] (\coef[3] ),
        .\coef[4] (\coef[4] ),
        .\coef[5] (\coef[5] ),
        .\coef[6] (\coef[6] ),
        .\coef[7] (\coef[7] ),
        .\coef[8] (\coef[8] ),
        .\coef_reg[0][0] (u_kernel_regfile_n_15),
        .\coef_reg[0][1] ({u_kernel_regfile_n_11,u_kernel_regfile_n_12,u_kernel_regfile_n_13,u_kernel_regfile_n_14}),
        .\coef_reg[0][3] (u_kernel_regfile_n_21),
        .\coef_reg[0][4] ({u_kernel_regfile_n_17,u_kernel_regfile_n_18,u_kernel_regfile_n_19,u_kernel_regfile_n_20}),
        .\coef_reg[0][5] (u_kernel_regfile_n_30),
        .\coef_reg[0][5]_0 (u_kernel_regfile_n_31),
        .\coef_reg[0][6] ({u_kernel_regfile_n_29,u_line_window_n_33,u_line_window_n_34,u_line_window_n_35}),
        .\coef_reg[0][7] ({u_kernel_regfile_n_22,u_kernel_regfile_n_23,u_kernel_regfile_n_24}),
        .\coef_reg[0][7]_0 ({u_kernel_regfile_n_25,u_kernel_regfile_n_26,u_kernel_regfile_n_27,u_kernel_regfile_n_28}),
        .\coef_reg[1][0] (u_kernel_regfile_n_45),
        .\coef_reg[1][1] ({u_kernel_regfile_n_41,u_kernel_regfile_n_42,u_kernel_regfile_n_43,u_kernel_regfile_n_44}),
        .\coef_reg[1][3] (u_kernel_regfile_n_51),
        .\coef_reg[1][4] ({u_kernel_regfile_n_47,u_kernel_regfile_n_48,u_kernel_regfile_n_49,u_kernel_regfile_n_50}),
        .\coef_reg[1][5] (u_kernel_regfile_n_60),
        .\coef_reg[1][5]_0 (u_kernel_regfile_n_61),
        .\coef_reg[1][6] ({u_kernel_regfile_n_59,u_line_window_n_52,u_line_window_n_53,u_line_window_n_54}),
        .\coef_reg[1][7] ({u_kernel_regfile_n_52,u_kernel_regfile_n_53,u_kernel_regfile_n_54}),
        .\coef_reg[1][7]_0 ({u_kernel_regfile_n_55,u_kernel_regfile_n_56,u_kernel_regfile_n_57,u_kernel_regfile_n_58}),
        .\coef_reg[2][0] (u_kernel_regfile_n_75),
        .\coef_reg[2][1] ({u_kernel_regfile_n_71,u_kernel_regfile_n_72,u_kernel_regfile_n_73,u_kernel_regfile_n_74}),
        .\coef_reg[2][3] (u_kernel_regfile_n_81),
        .\coef_reg[2][4] ({u_kernel_regfile_n_77,u_kernel_regfile_n_78,u_kernel_regfile_n_79,u_kernel_regfile_n_80}),
        .\coef_reg[2][5] (u_kernel_regfile_n_90),
        .\coef_reg[2][5]_0 (u_kernel_regfile_n_91),
        .\coef_reg[2][6] ({u_kernel_regfile_n_89,u_line_window_n_71,u_line_window_n_72,u_line_window_n_73}),
        .\coef_reg[2][7] ({u_kernel_regfile_n_82,u_kernel_regfile_n_83,u_kernel_regfile_n_84}),
        .\coef_reg[2][7]_0 ({u_kernel_regfile_n_85,u_kernel_regfile_n_86,u_kernel_regfile_n_87,u_kernel_regfile_n_88}),
        .\coef_reg[3][0] (u_kernel_regfile_n_105),
        .\coef_reg[3][1] ({u_kernel_regfile_n_101,u_kernel_regfile_n_102,u_kernel_regfile_n_103,u_kernel_regfile_n_104}),
        .\coef_reg[3][3] (u_kernel_regfile_n_111),
        .\coef_reg[3][4] ({u_kernel_regfile_n_107,u_kernel_regfile_n_108,u_kernel_regfile_n_109,u_kernel_regfile_n_110}),
        .\coef_reg[3][5] (u_kernel_regfile_n_120),
        .\coef_reg[3][5]_0 (u_kernel_regfile_n_121),
        .\coef_reg[3][6] ({u_kernel_regfile_n_119,u_line_window_n_82,u_line_window_n_83,u_line_window_n_84}),
        .\coef_reg[3][7] ({u_kernel_regfile_n_112,u_kernel_regfile_n_113,u_kernel_regfile_n_114}),
        .\coef_reg[3][7]_0 ({u_kernel_regfile_n_115,u_kernel_regfile_n_116,u_kernel_regfile_n_117,u_kernel_regfile_n_118}),
        .\coef_reg[4][0] (u_kernel_regfile_n_135),
        .\coef_reg[4][1] ({u_kernel_regfile_n_131,u_kernel_regfile_n_132,u_kernel_regfile_n_133,u_kernel_regfile_n_134}),
        .\coef_reg[4][3] (u_kernel_regfile_n_141),
        .\coef_reg[4][4] ({u_kernel_regfile_n_137,u_kernel_regfile_n_138,u_kernel_regfile_n_139,u_kernel_regfile_n_140}),
        .\coef_reg[4][5] (u_kernel_regfile_n_150),
        .\coef_reg[4][5]_0 (u_kernel_regfile_n_151),
        .\coef_reg[4][6] ({u_kernel_regfile_n_149,u_line_window_n_101,u_line_window_n_102,u_line_window_n_103}),
        .\coef_reg[4][7] ({u_kernel_regfile_n_142,u_kernel_regfile_n_143,u_kernel_regfile_n_144}),
        .\coef_reg[4][7]_0 ({u_kernel_regfile_n_145,u_kernel_regfile_n_146,u_kernel_regfile_n_147,u_kernel_regfile_n_148}),
        .\coef_reg[5][0] (u_kernel_regfile_n_165),
        .\coef_reg[5][1] ({u_kernel_regfile_n_161,u_kernel_regfile_n_162,u_kernel_regfile_n_163,u_kernel_regfile_n_164}),
        .\coef_reg[5][3] (u_kernel_regfile_n_171),
        .\coef_reg[5][4] ({u_kernel_regfile_n_167,u_kernel_regfile_n_168,u_kernel_regfile_n_169,u_kernel_regfile_n_170}),
        .\coef_reg[5][5] (u_kernel_regfile_n_180),
        .\coef_reg[5][5]_0 (u_kernel_regfile_n_181),
        .\coef_reg[5][6] ({u_kernel_regfile_n_179,u_line_window_n_120,u_line_window_n_121,u_line_window_n_122}),
        .\coef_reg[5][7] ({u_kernel_regfile_n_172,u_kernel_regfile_n_173,u_kernel_regfile_n_174}),
        .\coef_reg[5][7]_0 ({u_kernel_regfile_n_175,u_kernel_regfile_n_176,u_kernel_regfile_n_177,u_kernel_regfile_n_178}),
        .\coef_reg[6][0] (u_kernel_regfile_n_195),
        .\coef_reg[6][1] ({u_kernel_regfile_n_191,u_kernel_regfile_n_192,u_kernel_regfile_n_193,u_kernel_regfile_n_194}),
        .\coef_reg[6][3] (u_kernel_regfile_n_201),
        .\coef_reg[6][4] ({u_kernel_regfile_n_197,u_kernel_regfile_n_198,u_kernel_regfile_n_199,u_kernel_regfile_n_200}),
        .\coef_reg[6][5] (u_kernel_regfile_n_210),
        .\coef_reg[6][5]_0 (u_kernel_regfile_n_211),
        .\coef_reg[6][6] ({u_kernel_regfile_n_209,u_line_window_n_131,u_line_window_n_132,u_line_window_n_133}),
        .\coef_reg[6][7] ({u_kernel_regfile_n_202,u_kernel_regfile_n_203,u_kernel_regfile_n_204}),
        .\coef_reg[6][7]_0 ({u_kernel_regfile_n_205,u_kernel_regfile_n_206,u_kernel_regfile_n_207,u_kernel_regfile_n_208}),
        .\coef_reg[7][0] (u_kernel_regfile_n_225),
        .\coef_reg[7][1] ({u_kernel_regfile_n_221,u_kernel_regfile_n_222,u_kernel_regfile_n_223,u_kernel_regfile_n_224}),
        .\coef_reg[7][3] (u_kernel_regfile_n_231),
        .\coef_reg[7][4] ({u_kernel_regfile_n_227,u_kernel_regfile_n_228,u_kernel_regfile_n_229,u_kernel_regfile_n_230}),
        .\coef_reg[7][5] (u_kernel_regfile_n_240),
        .\coef_reg[7][5]_0 (u_kernel_regfile_n_241),
        .\coef_reg[7][6] ({u_kernel_regfile_n_239,u_line_window_n_150,u_line_window_n_151,u_line_window_n_152}),
        .\coef_reg[7][7] ({u_kernel_regfile_n_232,u_kernel_regfile_n_233,u_kernel_regfile_n_234}),
        .\coef_reg[7][7]_0 ({u_kernel_regfile_n_235,u_kernel_regfile_n_236,u_kernel_regfile_n_237,u_kernel_regfile_n_238}),
        .\coef_reg[8][0] (u_kernel_regfile_n_255),
        .\coef_reg[8][1] ({u_kernel_regfile_n_251,u_kernel_regfile_n_252,u_kernel_regfile_n_253,u_kernel_regfile_n_254}),
        .\coef_reg[8][3] (u_kernel_regfile_n_261),
        .\coef_reg[8][4] ({u_kernel_regfile_n_257,u_kernel_regfile_n_258,u_kernel_regfile_n_259,u_kernel_regfile_n_260}),
        .\coef_reg[8][5] (u_kernel_regfile_n_270),
        .\coef_reg[8][5]_0 (u_kernel_regfile_n_271),
        .\coef_reg[8][6] ({u_kernel_regfile_n_269,u_line_window_n_169,u_line_window_n_170,u_line_window_n_171}),
        .\coef_reg[8][7] ({u_kernel_regfile_n_262,u_kernel_regfile_n_263,u_kernel_regfile_n_264}),
        .\coef_reg[8][7]_0 ({u_kernel_regfile_n_265,u_kernel_regfile_n_266,u_kernel_regfile_n_267,u_kernel_regfile_n_268}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ({u_mac_array_n_169,u_mac_array_n_170,u_mac_array_n_171,u_mac_array_n_172}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 (u_mac_array_n_176),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 (u_mac_array_n_177),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_3 (u_mac_array_n_178),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_4 (u_mac_array_n_179),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_5 (u_mac_array_n_180),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_6 (u_mac_array_n_181),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_7 (u_mac_array_n_182),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_8 (u_mac_array_n_183),
        .\g_row[0].g_col[0].g_lut.p_q_reg[10]_9 (u_mac_array_n_184),
        .\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ({u_mac_array_n_2,u_mac_array_n_3}),
        .\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 (u_mac_array_n_174),
        .\g_row[0].g_col[0].g_lut.p_q_reg[2]_0 (u_mac_array_n_175),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ({u_mac_array_n_185,u_mac_array_n_186,u_mac_array_n_187,u_mac_array_n_188}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ({u_mac_array_n_189,u_mac_array_n_190,u_mac_array_n_191,u_mac_array_n_192}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_10 (u_mac_array_n_204),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 (u_mac_array_n_196),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_3 (u_mac_array_n_197),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_4 (u_mac_array_n_198),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_5 (u_mac_array_n_199),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_6 (u_mac_array_n_200),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_7 (u_mac_array_n_201),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_8 (u_mac_array_n_202),
        .\g_row[0].g_col[1].g_lut.p_q_reg[10]_9 (u_mac_array_n_203),
        .\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ({u_mac_array_n_5,u_mac_array_n_6}),
        .\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 (u_mac_array_n_7),
        .\g_row[0].g_col[1].g_lut.p_q_reg[14]_2 (u_mac_array_n_193),
        .\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 (u_mac_array_n_194),
        .\g_row[0].g_col[1].g_lut.p_q_reg[2]_0 (u_mac_array_n_195),
        .\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 (u_mac_array_n_0),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ({u_mac_array_n_205,u_mac_array_n_206,u_mac_array_n_207,u_mac_array_n_208}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ({u_mac_array_n_209,u_mac_array_n_210,u_mac_array_n_211,u_mac_array_n_212}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_10 (u_mac_array_n_224),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 (u_mac_array_n_216),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_3 (u_mac_array_n_217),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_4 (u_mac_array_n_218),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_5 (u_mac_array_n_219),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_6 (u_mac_array_n_220),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_7 (u_mac_array_n_221),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_8 (u_mac_array_n_222),
        .\g_row[0].g_col[2].g_lut.p_q_reg[10]_9 (u_mac_array_n_223),
        .\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ({u_mac_array_n_8,u_mac_array_n_9}),
        .\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 (u_mac_array_n_10),
        .\g_row[0].g_col[2].g_lut.p_q_reg[14]_2 (u_mac_array_n_213),
        .\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 (u_mac_array_n_214),
        .\g_row[0].g_col[2].g_lut.p_q_reg[2]_0 (u_mac_array_n_215),
        .\g_row[0].g_tap[0].taps_reg[0][0][2] ({u_line_window_n_28,u_line_window_n_29,u_kernel_regfile_n_16,u_line_window_n_30}),
        .\g_row[0].g_tap[0].taps_reg[0][0][2]_0 ({u_line_window_n_31,u_line_window_n_32}),
        .\g_row[0].g_tap[0].taps_reg[0][0][7] (\win[0][0] ),
        .\g_row[0].g_tap[1].taps_reg[0][1][2] ({u_line_window_n_36,u_line_window_n_37,u_kernel_regfile_n_32,u_line_window_n_38}),
        .\g_row[0].g_tap[1].taps_reg[0][1][2]_0 ({u_line_window_n_47,u_line_window_n_48,u_kernel_regfile_n_46,u_line_window_n_49}),
        .\g_row[0].g_tap[1].taps_reg[0][1][2]_1 ({u_line_window_n_50,u_line_window_n_51}),
        .\g_row[0].g_tap[1].taps_reg[0][1][7] (\win[0][1] ),
        .\g_row[0].taps_reg[0][2][2] ({u_line_window_n_55,u_line_window_n_56,u_kernel_regfile_n_62,u_line_window_n_57}),
        .\g_row[0].taps_reg[0][2][2]_0 ({u_line_window_n_66,u_line_window_n_67,u_kernel_regfile_n_76,u_line_window_n_68}),
        .\g_row[0].taps_reg[0][2][2]_1 ({u_line_window_n_69,u_line_window_n_70}),
        .\g_row[0].taps_reg[0][2][7] (\win[0][2] ),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ({u_mac_array_n_225,u_mac_array_n_226,u_mac_array_n_227,u_mac_array_n_228}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ({u_mac_array_n_229,u_mac_array_n_230,u_mac_array_n_231,u_mac_array_n_232}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_10 (u_mac_array_n_244),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 (u_mac_array_n_236),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_3 (u_mac_array_n_237),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_4 (u_mac_array_n_238),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_5 (u_mac_array_n_239),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_6 (u_mac_array_n_240),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_7 (u_mac_array_n_241),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_8 (u_mac_array_n_242),
        .\g_row[1].g_col[0].g_lut.p_q_reg[10]_9 (u_mac_array_n_243),
        .\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ({u_mac_array_n_11,u_mac_array_n_12}),
        .\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 (u_mac_array_n_13),
        .\g_row[1].g_col[0].g_lut.p_q_reg[14]_2 (u_mac_array_n_233),
        .\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 (u_mac_array_n_234),
        .\g_row[1].g_col[0].g_lut.p_q_reg[2]_0 (u_mac_array_n_235),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ({u_mac_array_n_245,u_mac_array_n_246,u_mac_array_n_247,u_mac_array_n_248}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ({u_mac_array_n_249,u_mac_array_n_250,u_mac_array_n_251,u_mac_array_n_252}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_10 (u_mac_array_n_264),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 (u_mac_array_n_256),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_3 (u_mac_array_n_257),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_4 (u_mac_array_n_258),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_5 (u_mac_array_n_259),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_6 (u_mac_array_n_260),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_7 (u_mac_array_n_261),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_8 (u_mac_array_n_262),
        .\g_row[1].g_col[1].g_lut.p_q_reg[10]_9 (u_mac_array_n_263),
        .\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ({u_mac_array_n_14,u_mac_array_n_15}),
        .\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 (u_mac_array_n_16),
        .\g_row[1].g_col[1].g_lut.p_q_reg[14]_2 (u_mac_array_n_253),
        .\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 (u_mac_array_n_254),
        .\g_row[1].g_col[1].g_lut.p_q_reg[2]_0 (u_mac_array_n_255),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ({u_mac_array_n_265,u_mac_array_n_266,u_mac_array_n_267,u_mac_array_n_268}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ({u_mac_array_n_269,u_mac_array_n_270,u_mac_array_n_271,u_mac_array_n_272}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_10 (u_mac_array_n_284),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 (u_mac_array_n_276),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_3 (u_mac_array_n_277),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_4 (u_mac_array_n_278),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_5 (u_mac_array_n_279),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_6 (u_mac_array_n_280),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_7 (u_mac_array_n_281),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_8 (u_mac_array_n_282),
        .\g_row[1].g_col[2].g_lut.p_q_reg[10]_9 (u_mac_array_n_283),
        .\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ({u_mac_array_n_17,u_mac_array_n_18}),
        .\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 (u_mac_array_n_19),
        .\g_row[1].g_col[2].g_lut.p_q_reg[14]_2 (u_mac_array_n_273),
        .\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 (u_mac_array_n_274),
        .\g_row[1].g_col[2].g_lut.p_q_reg[2]_0 (u_mac_array_n_275),
        .\g_row[1].g_tap[0].taps_reg[1][0][2] ({u_line_window_n_74,u_line_window_n_75,u_kernel_regfile_n_92,u_line_window_n_76}),
        .\g_row[1].g_tap[0].taps_reg[1][0][2]_0 ({u_line_window_n_77,u_line_window_n_78,u_kernel_regfile_n_106,u_line_window_n_79}),
        .\g_row[1].g_tap[0].taps_reg[1][0][2]_1 ({u_line_window_n_80,u_line_window_n_81}),
        .\g_row[1].g_tap[0].taps_reg[1][0][7] (\win[1][0] ),
        .\g_row[1].g_tap[1].taps_reg[1][1][2] ({u_line_window_n_85,u_line_window_n_86,u_kernel_regfile_n_122,u_line_window_n_87}),
        .\g_row[1].g_tap[1].taps_reg[1][1][2]_0 ({u_line_window_n_96,u_line_window_n_97,u_kernel_regfile_n_136,u_line_window_n_98}),
        .\g_row[1].g_tap[1].taps_reg[1][1][2]_1 ({u_line_window_n_99,u_line_window_n_100}),
        .\g_row[1].g_tap[1].taps_reg[1][1][7] (\win[1][1] ),
        .\g_row[1].taps_reg[1][2][2] ({u_line_window_n_104,u_line_window_n_105,u_kernel_regfile_n_152,u_line_window_n_106}),
        .\g_row[1].taps_reg[1][2][2]_0 ({u_line_window_n_115,u_line_window_n_116,u_kernel_regfile_n_166,u_line_window_n_117}),
        .\g_row[1].taps_reg[1][2][2]_1 ({u_line_window_n_118,u_line_window_n_119}),
        .\g_row[1].taps_reg[1][2][7] (\win[1][2] ),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ({u_mac_array_n_285,u_mac_array_n_286,u_mac_array_n_287,u_mac_array_n_288}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ({u_mac_array_n_289,u_mac_array_n_290,u_mac_array_n_291,u_mac_array_n_292}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_10 (u_mac_array_n_304),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 (u_mac_array_n_296),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_3 (u_mac_array_n_297),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_4 (u_mac_array_n_298),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_5 (u_mac_array_n_299),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_6 (u_mac_array_n_300),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_7 (u_mac_array_n_301),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_8 (u_mac_array_n_302),
        .\g_row[2].g_col[0].g_lut.p_q_reg[10]_9 (u_mac_array_n_303),
        .\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ({u_mac_array_n_20,u_mac_array_n_21}),
        .\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 (u_mac_array_n_22),
        .\g_row[2].g_col[0].g_lut.p_q_reg[14]_2 (u_mac_array_n_293),
        .\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 (u_mac_array_n_294),
        .\g_row[2].g_col[0].g_lut.p_q_reg[2]_0 (u_mac_array_n_295),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ({u_mac_array_n_305,u_mac_array_n_306,u_mac_array_n_307,u_mac_array_n_308}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ({u_mac_array_n_309,u_mac_array_n_310,u_mac_array_n_311,u_mac_array_n_312}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_10 (u_mac_array_n_324),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 (u_mac_array_n_316),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_3 (u_mac_array_n_317),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_4 (u_mac_array_n_318),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_5 (u_mac_array_n_319),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_6 (u_mac_array_n_320),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_7 (u_mac_array_n_321),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_8 (u_mac_array_n_322),
        .\g_row[2].g_col[1].g_lut.p_q_reg[10]_9 (u_mac_array_n_323),
        .\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ({u_mac_array_n_23,u_mac_array_n_24}),
        .\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 (u_mac_array_n_25),
        .\g_row[2].g_col[1].g_lut.p_q_reg[14]_2 (u_mac_array_n_313),
        .\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 (u_mac_array_n_314),
        .\g_row[2].g_col[1].g_lut.p_q_reg[2]_0 (u_mac_array_n_315),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ({u_mac_array_n_325,u_mac_array_n_326,u_mac_array_n_327,u_mac_array_n_328}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ({u_mac_array_n_329,u_mac_array_n_330,u_mac_array_n_331,u_mac_array_n_332}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_10 (u_mac_array_n_344),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 (u_mac_array_n_336),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_3 (u_mac_array_n_337),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_4 (u_mac_array_n_338),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_5 (u_mac_array_n_339),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_6 (u_mac_array_n_340),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_7 (u_mac_array_n_341),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_8 (u_mac_array_n_342),
        .\g_row[2].g_col[2].g_lut.p_q_reg[10]_9 (u_mac_array_n_343),
        .\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 (u_mac_array_n_1),
        .\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ({u_mac_array_n_26,u_mac_array_n_27}),
        .\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 (u_mac_array_n_28),
        .\g_row[2].g_col[2].g_lut.p_q_reg[14]_2 (u_mac_array_n_333),
        .\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 (u_mac_array_n_334),
        .\g_row[2].g_col[2].g_lut.p_q_reg[2]_0 (u_mac_array_n_335),
        .\g_row[2].g_tap[0].taps_reg[2][0][2] ({u_line_window_n_123,u_line_window_n_124,u_kernel_regfile_n_182,u_line_window_n_125}),
        .\g_row[2].g_tap[0].taps_reg[2][0][2]_0 ({u_line_window_n_126,u_line_window_n_127,u_kernel_regfile_n_196,u_line_window_n_128}),
        .\g_row[2].g_tap[0].taps_reg[2][0][2]_1 ({u_line_window_n_129,u_line_window_n_130}),
        .\g_row[2].g_tap[0].taps_reg[2][0][7] (\win[2][0] ),
        .\g_row[2].g_tap[1].taps_reg[2][1][2] ({u_line_window_n_134,u_line_window_n_135,u_kernel_regfile_n_212,u_line_window_n_136}),
        .\g_row[2].g_tap[1].taps_reg[2][1][2]_0 ({u_line_window_n_145,u_line_window_n_146,u_kernel_regfile_n_226,u_line_window_n_147}),
        .\g_row[2].g_tap[1].taps_reg[2][1][2]_1 ({u_line_window_n_148,u_line_window_n_149}),
        .\g_row[2].g_tap[1].taps_reg[2][1][7] (\win[2][1] ),
        .\g_row[2].taps_reg[2][2][2] ({u_line_window_n_153,u_line_window_n_154,u_kernel_regfile_n_242,u_line_window_n_155}),
        .\g_row[2].taps_reg[2][2][2]_0 ({u_line_window_n_164,u_line_window_n_165,u_kernel_regfile_n_256,u_line_window_n_166}),
        .\g_row[2].taps_reg[2][2][2]_1 ({u_line_window_n_167,u_line_window_n_168}),
        .\g_row[2].taps_reg[2][2][7] (\win[2][2] ),
        .\p8_a1_reg[16] (\prod[8] ),
        .rst_n(rst_n),
        .rst_n_0(u_adder_tree_n_0),
        .\s1_reg[0][15] (\prod[1] ),
        .\s1_reg[0][17] (u_mac_array_n_131),
        .\s1_reg[0][17]_0 (\prod[0] ),
        .\s1_reg[1][15] (\prod[3] ),
        .\s1_reg[1][17] (u_mac_array_n_97),
        .\s1_reg[1][17]_0 (\prod[2] ),
        .\s1_reg[2][15] (\prod[5] ),
        .\s1_reg[2][17] (u_mac_array_n_63),
        .\s1_reg[2][17]_0 (\prod[4] ),
        .\s1_reg[3][15] (\prod[7] ),
        .\s1_reg[3][17] (u_mac_array_n_29));
  normalize u_normalize
       (.D({rounded_q1,rounded_d}),
        .clk(clk),
        .out_data(out_data),
        .relu_en(relu_en),
        .rst_n(rst_n),
        .sat_flag(sat_flag),
        .sat_flag_reg_0(u_normalize_n_1),
        .shift_en(shift_en));
endmodule

module ctrl_fsm
   (relu_en,
    shift_en,
    done,
    out_bank,
    advance,
    Q,
    busy,
    out_valid,
    out_last,
    S,
    \rounded_q_reg[6] ,
    D,
    cfg_relu_en,
    clk,
    rst_n,
    px_valid,
    rst_n_0,
    rst_n_1,
    cfg_out_shift,
    cfg_start,
    px_last,
    cfg_num_kernels,
    \acc_reg[6] ,
    O,
    rounded_q1);
  output relu_en;
  output shift_en;
  output done;
  output [1:0]out_bank;
  output advance;
  output [1:0]Q;
  output busy;
  output out_valid;
  output out_last;
  output [3:0]S;
  output [2:0]\rounded_q_reg[6] ;
  output [18:0]D;
  input cfg_relu_en;
  input clk;
  input rst_n;
  input px_valid;
  input rst_n_0;
  input rst_n_1;
  input [2:0]cfg_out_shift;
  input cfg_start;
  input px_last;
  input [2:0]cfg_num_kernels;
  input [6:0]\acc_reg[6] ;
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
  wire [3:0]S;
  wire [6:0]\acc_reg[6] ;
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
  wire \col_cnt[4]_i_4_n_0 ;
  wire \col_cnt[4]_i_5_n_0 ;
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
  wire \meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_1_n_0 ;
  wire \meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_1_n_0 ;
  wire \meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ;
  wire \meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ;
  wire meta_bank_reg_gate__0_n_0;
  wire meta_bank_reg_gate_n_0;
  wire \meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ;
  wire \meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3_n_0 ;
  wire meta_last_reg_gate_n_0;
  wire \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_3_n_0 ;
  wire \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ;
  wire \meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3_n_0 ;
  wire meta_valid_reg_c_0_n_0;
  wire meta_valid_reg_c_1_n_0;
  wire meta_valid_reg_c_2_n_0;
  wire meta_valid_reg_c_3_n_0;
  wire meta_valid_reg_c_n_0;
  wire meta_valid_reg_gate_n_0;
  wire [1:0]out_bank;
  wire out_last;
  wire [2:0]out_shift;
  wire out_valid;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire [1:0]pending_bank;
  wire \pending_bank[0]_i_1_n_0 ;
  wire \pending_bank[1]_i_1_n_0 ;
  wire pending_last;
  wire pending_valid;
  wire pending_valid_reg_c_n_0;
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
  wire [2:0]\rounded_q_reg[6] ;
  wire \row_cnt[0]_i_1_n_0 ;
  wire \row_cnt[1]_i_1_n_0 ;
  wire \row_cnt[2]_i_1_n_0 ;
  wire \row_cnt[3]_i_1_n_0 ;
  wire \row_cnt[4]_i_1_n_0 ;
  wire \row_cnt[4]_i_2_n_0 ;
  wire \row_cnt[4]_i_3_n_0 ;
  wire \row_cnt_reg_n_0_[0] ;
  wire \row_cnt_reg_n_0_[1] ;
  wire \row_cnt_reg_n_0_[2] ;
  wire \row_cnt_reg_n_0_[3] ;
  wire \row_cnt_reg_n_0_[4] ;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
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
        .I2(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_3_n_0 ),
        .I3(state[0]),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(px_valid),
        .I1(state[1]),
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
    .INIT(64'h0000FEFFFEFF0000)) 
    \bank_sel[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(cfg_start),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(\bank_sel[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \bank_sel_reg[0] 
       (.C(clk),
        .CE(kernel_cnt),
        .CLR(rst_n_0),
        .D(\bank_sel[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_sel_reg[1] 
       (.C(clk),
        .CE(kernel_cnt),
        .CLR(rst_n_0),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \col_cnt[0]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(col_cnt[0]),
        .O(\col_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \col_cnt[1]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(col_cnt[0]),
        .I2(col_cnt[1]),
        .O(\col_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \col_cnt[2]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(col_cnt[1]),
        .I2(col_cnt[0]),
        .I3(col_cnt[2]),
        .O(\col_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \col_cnt[3]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(col_cnt[2]),
        .I2(col_cnt[0]),
        .I3(col_cnt[1]),
        .I4(col_cnt[3]),
        .O(\col_cnt[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h40FF)) 
    \col_cnt[4]_i_1 
       (.I0(state[2]),
        .I1(px_valid),
        .I2(state[1]),
        .I3(\col_cnt[4]_i_4_n_0 ),
        .O(\col_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \col_cnt[4]_i_2 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(col_cnt[3]),
        .I2(col_cnt[1]),
        .I3(col_cnt[0]),
        .I4(col_cnt[2]),
        .I5(col_cnt[4]),
        .O(\col_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFD1DDDDDD)) 
    \col_cnt[4]_i_4 
       (.I0(cfg_start),
        .I1(state[0]),
        .I2(\flush_cnt_reg_n_0_[0] ),
        .I3(\flush_cnt_reg_n_0_[1] ),
        .I4(\flush_cnt_reg_n_0_[2] ),
        .I5(\col_cnt[4]_i_5_n_0 ),
        .O(\col_cnt[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \col_cnt[4]_i_5 
       (.I0(state[1]),
        .I1(state[2]),
        .O(\col_cnt[4]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[0] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\col_cnt[0]_i_1_n_0 ),
        .Q(col_cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[1] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\col_cnt[1]_i_1_n_0 ),
        .Q(col_cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[2] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\col_cnt[2]_i_1_n_0 ),
        .Q(col_cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[3] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
        .D(\col_cnt[3]_i_1_n_0 ),
        .Q(col_cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \col_cnt_reg[4] 
       (.C(clk),
        .CE(\col_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_1),
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
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].taps[2][2][7]_i_1 
       (.I0(shift_en),
        .I1(px_valid),
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
  (* srl_name = "\u_ctrl_fsm/meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_bank[0]),
        .Q(\meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_1_n_0 ));
  (* srl_bus_name = "\u_ctrl_fsm/meta_bank_reg[3] " *) 
  (* srl_name = "\u_ctrl_fsm/meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_1 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_1 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_bank[1]),
        .Q(\meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_2 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_bank_reg[3][0]_srl4_u_ctrl_fsm_meta_valid_reg_c_1_n_0 ),
        .Q(\meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_2 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_bank_reg[3][1]_srl4_u_ctrl_fsm_meta_valid_reg_c_1_n_0 ),
        .Q(\meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ),
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
       (.I0(\meta_bank_reg[4][1]_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ),
        .I1(meta_valid_reg_c_2_n_0),
        .O(meta_bank_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    meta_bank_reg_gate__0
       (.I0(\meta_bank_reg[4][0]_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ),
        .I1(meta_valid_reg_c_2_n_0),
        .O(meta_bank_reg_gate__0_n_0));
  (* srl_bus_name = "\u_ctrl_fsm/meta_last_reg " *) 
  (* srl_name = "\u_ctrl_fsm/meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_last),
        .Q(\meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_1 
       (.I0(px_valid),
        .I1(state[1]),
        .I2(px_last),
        .O(pending_last));
  FDRE #(
    .INIT(1'b0)) 
    \meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_last_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ),
        .Q(\meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3_n_0 ),
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
       (.I0(\meta_last_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3_n_0 ),
        .I1(meta_valid_reg_c_3_n_0),
        .O(meta_last_reg_gate_n_0));
  (* srl_bus_name = "\u_ctrl_fsm/meta_valid_reg " *) 
  (* srl_name = "\u_ctrl_fsm/meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b0),
        .CE(shift_en),
        .CLK(clk),
        .D(pending_valid),
        .Q(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA800000000)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_1 
       (.I0(accepted),
        .I1(col_cnt[2]),
        .I2(col_cnt[1]),
        .I3(col_cnt[4]),
        .I4(col_cnt[3]),
        .I5(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_3_n_0 ),
        .O(pending_valid));
  LUT3 #(
    .INIT(8'h08)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_2 
       (.I0(state[1]),
        .I1(px_valid),
        .I2(state[2]),
        .O(accepted));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_3 
       (.I0(\row_cnt_reg_n_0_[2] ),
        .I1(\row_cnt_reg_n_0_[1] ),
        .I2(\row_cnt_reg_n_0_[4] ),
        .I3(\row_cnt_reg_n_0_[3] ),
        .O(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3 
       (.C(clk),
        .CE(shift_en),
        .D(\meta_valid_reg[3]_srl5_u_ctrl_fsm_meta_valid_reg_c_2_n_0 ),
        .Q(\meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3_n_0 ),
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
    meta_valid_reg_c
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(pending_valid_reg_c_n_0),
        .Q(meta_valid_reg_c_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_0
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_n_0),
        .Q(meta_valid_reg_c_0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_1
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_0_n_0),
        .Q(meta_valid_reg_c_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_2
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_1_n_0),
        .Q(meta_valid_reg_c_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    meta_valid_reg_c_3
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(meta_valid_reg_c_2_n_0),
        .Q(meta_valid_reg_c_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    meta_valid_reg_gate
       (.I0(\meta_valid_reg[4]_u_ctrl_fsm_meta_valid_reg_c_3_n_0 ),
        .I1(meta_valid_reg_c_3_n_0),
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
        .Q(out_shift[0]));
  FDCE #(
    .INIT(1'b0)) 
    \out_shift_reg[1] 
       (.C(clk),
        .CE(relu_en0),
        .CLR(rst_n),
        .D(cfg_out_shift[1]),
        .Q(out_shift[1]));
  FDCE #(
    .INIT(1'b0)) 
    \out_shift_reg[2] 
       (.C(clk),
        .CE(relu_en0),
        .CLR(rst_n),
        .D(cfg_out_shift[2]),
        .Q(out_shift[2]));
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
        .I1(state[1]),
        .I2(px_valid),
        .I3(state[2]),
        .I4(pending_bank[0]),
        .O(\pending_bank[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \pending_bank[1]_i_1 
       (.I0(Q[1]),
        .I1(state[1]),
        .I2(px_valid),
        .I3(state[2]),
        .I4(pending_bank[1]),
        .O(\pending_bank[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \pending_bank_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\pending_bank[0]_i_1_n_0 ),
        .Q(pending_bank[0]));
  FDCE #(
    .INIT(1'b0)) 
    \pending_bank_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\pending_bank[1]_i_1_n_0 ),
        .Q(pending_bank[1]));
  FDCE #(
    .INIT(1'b0)) 
    pending_valid_reg_c
       (.C(clk),
        .CE(shift_en),
        .CLR(rst_n),
        .D(1'b1),
        .Q(pending_valid_reg_c_n_0));
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
    .INIT(64'h00FF0000002A002A)) 
    \res[15]_i_1 
       (.I0(state[0]),
        .I1(\flush_cnt_reg_n_0_[1] ),
        .I2(\flush_cnt_reg_n_0_[2] ),
        .I3(state[2]),
        .I4(px_valid),
        .I5(state[1]),
        .O(shift_en));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[0]_i_1 
       (.I0(\rounded_q[1]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[0]_i_2 
       (.I0(rounded_q1[6]),
        .I1(rounded_q1[2]),
        .I2(out_shift[1]),
        .I3(rounded_q1[4]),
        .I4(out_shift[2]),
        .I5(rounded_q1[0]),
        .O(\rounded_q[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[10]_i_1 
       (.I0(\rounded_q[11]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[10]_i_2_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[10]_i_2 
       (.I0(rounded_q1[16]),
        .I1(rounded_q1[12]),
        .I2(out_shift[1]),
        .I3(rounded_q1[14]),
        .I4(out_shift[2]),
        .I5(rounded_q1[10]),
        .O(\rounded_q[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[11]_i_1 
       (.I0(\rounded_q[12]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[11]_i_2_n_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[11]_i_2 
       (.I0(rounded_q1[17]),
        .I1(rounded_q1[13]),
        .I2(out_shift[1]),
        .I3(rounded_q1[15]),
        .I4(out_shift[2]),
        .I5(rounded_q1[11]),
        .O(\rounded_q[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[12]_i_1 
       (.I0(\rounded_q[13]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[12]_i_2_n_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[12]_i_2 
       (.I0(rounded_q1[18]),
        .I1(rounded_q1[14]),
        .I2(out_shift[1]),
        .I3(rounded_q1[16]),
        .I4(out_shift[2]),
        .I5(rounded_q1[12]),
        .O(\rounded_q[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[13]_i_1 
       (.I0(\rounded_q[14]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[13]_i_2_n_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[13]_i_2 
       (.I0(O),
        .I1(rounded_q1[15]),
        .I2(out_shift[1]),
        .I3(rounded_q1[17]),
        .I4(out_shift[2]),
        .I5(rounded_q1[13]),
        .O(\rounded_q[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[14]_i_1 
       (.I0(\rounded_q[15]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[14]_i_2_n_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[14]_i_2 
       (.I0(O),
        .I1(rounded_q1[16]),
        .I2(out_shift[1]),
        .I3(rounded_q1[18]),
        .I4(out_shift[2]),
        .I5(rounded_q1[14]),
        .O(\rounded_q[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[15]_i_1 
       (.I0(\rounded_q[16]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[15]_i_2_n_0 ),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \rounded_q[15]_i_2 
       (.I0(rounded_q1[17]),
        .I1(out_shift[1]),
        .I2(O),
        .I3(out_shift[2]),
        .I4(rounded_q1[15]),
        .O(\rounded_q[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \rounded_q[16]_i_1 
       (.I0(out_shift[1]),
        .I1(O),
        .I2(out_shift[2]),
        .I3(rounded_q1[17]),
        .I4(out_shift[0]),
        .I5(\rounded_q[16]_i_2_n_0 ),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \rounded_q[16]_i_2 
       (.I0(rounded_q1[18]),
        .I1(out_shift[1]),
        .I2(O),
        .I3(out_shift[2]),
        .I4(rounded_q1[16]),
        .O(\rounded_q[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \rounded_q[17]_i_1 
       (.I0(rounded_q1[18]),
        .I1(out_shift[0]),
        .I2(out_shift[1]),
        .I3(O),
        .I4(out_shift[2]),
        .I5(rounded_q1[17]),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \rounded_q[18]_i_1 
       (.I0(out_shift[0]),
        .I1(out_shift[1]),
        .I2(O),
        .I3(out_shift[2]),
        .I4(rounded_q1[18]),
        .O(D[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[1]_i_1 
       (.I0(\rounded_q[2]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[1]_i_2_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[1]_i_2 
       (.I0(rounded_q1[7]),
        .I1(rounded_q1[3]),
        .I2(out_shift[1]),
        .I3(rounded_q1[5]),
        .I4(out_shift[2]),
        .I5(rounded_q1[1]),
        .O(\rounded_q[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[2]_i_1 
       (.I0(\rounded_q[3]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[2]_i_2_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[2]_i_2 
       (.I0(rounded_q1[8]),
        .I1(rounded_q1[4]),
        .I2(out_shift[1]),
        .I3(rounded_q1[6]),
        .I4(out_shift[2]),
        .I5(rounded_q1[2]),
        .O(\rounded_q[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[3]_i_1 
       (.I0(\rounded_q[4]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[3]_i_2_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[3]_i_2 
       (.I0(rounded_q1[9]),
        .I1(rounded_q1[5]),
        .I2(out_shift[1]),
        .I3(rounded_q1[7]),
        .I4(out_shift[2]),
        .I5(rounded_q1[3]),
        .O(\rounded_q[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \rounded_q[3]_i_4 
       (.I0(\acc_reg[6] [3]),
        .I1(out_shift[0]),
        .I2(out_shift[2]),
        .I3(out_shift[1]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \rounded_q[3]_i_5 
       (.I0(\acc_reg[6] [2]),
        .I1(out_shift[0]),
        .I2(out_shift[1]),
        .I3(out_shift[2]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hAA9A)) 
    \rounded_q[3]_i_6 
       (.I0(\acc_reg[6] [1]),
        .I1(out_shift[0]),
        .I2(out_shift[1]),
        .I3(out_shift[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'hAAA6)) 
    \rounded_q[3]_i_7 
       (.I0(\acc_reg[6] [0]),
        .I1(out_shift[0]),
        .I2(out_shift[2]),
        .I3(out_shift[1]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[4]_i_1 
       (.I0(\rounded_q[5]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[4]_i_2_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[4]_i_2 
       (.I0(rounded_q1[10]),
        .I1(rounded_q1[6]),
        .I2(out_shift[1]),
        .I3(rounded_q1[8]),
        .I4(out_shift[2]),
        .I5(rounded_q1[4]),
        .O(\rounded_q[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[5]_i_1 
       (.I0(\rounded_q[6]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[5]_i_2_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[5]_i_2 
       (.I0(rounded_q1[11]),
        .I1(rounded_q1[7]),
        .I2(out_shift[1]),
        .I3(rounded_q1[9]),
        .I4(out_shift[2]),
        .I5(rounded_q1[5]),
        .O(\rounded_q[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[6]_i_1 
       (.I0(\rounded_q[7]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[6]_i_2_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[6]_i_2 
       (.I0(rounded_q1[12]),
        .I1(rounded_q1[8]),
        .I2(out_shift[1]),
        .I3(rounded_q1[10]),
        .I4(out_shift[2]),
        .I5(rounded_q1[6]),
        .O(\rounded_q[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[7]_i_1 
       (.I0(\rounded_q[8]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[7]_i_2_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[7]_i_2 
       (.I0(rounded_q1[13]),
        .I1(rounded_q1[9]),
        .I2(out_shift[1]),
        .I3(rounded_q1[11]),
        .I4(out_shift[2]),
        .I5(rounded_q1[7]),
        .O(\rounded_q[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rounded_q[7]_i_4 
       (.I0(\acc_reg[6] [6]),
        .I1(out_shift[0]),
        .I2(out_shift[2]),
        .I3(out_shift[1]),
        .O(\rounded_q_reg[6] [2]));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \rounded_q[7]_i_5 
       (.I0(\acc_reg[6] [5]),
        .I1(out_shift[0]),
        .I2(out_shift[2]),
        .I3(out_shift[1]),
        .O(\rounded_q_reg[6] [1]));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \rounded_q[7]_i_6 
       (.I0(\acc_reg[6] [4]),
        .I1(out_shift[0]),
        .I2(out_shift[2]),
        .I3(out_shift[1]),
        .O(\rounded_q_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[8]_i_1 
       (.I0(\rounded_q[9]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[8]_i_2_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[8]_i_2 
       (.I0(rounded_q1[14]),
        .I1(rounded_q1[10]),
        .I2(out_shift[1]),
        .I3(rounded_q1[12]),
        .I4(out_shift[2]),
        .I5(rounded_q1[8]),
        .O(\rounded_q[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rounded_q[9]_i_1 
       (.I0(\rounded_q[10]_i_2_n_0 ),
        .I1(out_shift[0]),
        .I2(\rounded_q[9]_i_2_n_0 ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rounded_q[9]_i_2 
       (.I0(rounded_q1[15]),
        .I1(rounded_q1[11]),
        .I2(out_shift[1]),
        .I3(rounded_q1[13]),
        .I4(out_shift[2]),
        .I5(rounded_q1[9]),
        .O(\rounded_q[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \row_cnt[0]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(\row_cnt_reg_n_0_[0] ),
        .O(\row_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \row_cnt[1]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(\row_cnt_reg_n_0_[0] ),
        .I2(\row_cnt_reg_n_0_[1] ),
        .O(\row_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \row_cnt[2]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(\row_cnt_reg_n_0_[1] ),
        .I2(\row_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[2] ),
        .O(\row_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \row_cnt[3]_i_1 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(\row_cnt_reg_n_0_[2] ),
        .I2(\row_cnt_reg_n_0_[0] ),
        .I3(\row_cnt_reg_n_0_[1] ),
        .I4(\row_cnt_reg_n_0_[3] ),
        .O(\row_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h10000000FFFFFFFF)) 
    \row_cnt[4]_i_1 
       (.I0(\row_cnt[4]_i_3_n_0 ),
        .I1(state[2]),
        .I2(px_valid),
        .I3(state[1]),
        .I4(col_cnt[4]),
        .I5(\col_cnt[4]_i_4_n_0 ),
        .O(\row_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \row_cnt[4]_i_2 
       (.I0(\col_cnt[4]_i_4_n_0 ),
        .I1(\row_cnt_reg_n_0_[3] ),
        .I2(\row_cnt_reg_n_0_[1] ),
        .I3(\row_cnt_reg_n_0_[0] ),
        .I4(\row_cnt_reg_n_0_[2] ),
        .I5(\row_cnt_reg_n_0_[4] ),
        .O(\row_cnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \row_cnt[4]_i_3 
       (.I0(col_cnt[2]),
        .I1(col_cnt[0]),
        .I2(col_cnt[1]),
        .I3(col_cnt[3]),
        .O(\row_cnt[4]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[0] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\row_cnt[0]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[1] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\row_cnt[1]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[2] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\row_cnt[2]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[3] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\row_cnt[3]_i_1_n_0 ),
        .Q(\row_cnt_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \row_cnt_reg[4] 
       (.C(clk),
        .CE(\row_cnt[4]_i_1_n_0 ),
        .CLR(rst_n_0),
        .D(\row_cnt[4]_i_2_n_0 ),
        .Q(\row_cnt_reg_n_0_[4] ));
endmodule

module kernel_regfile
   (\bank_reg[0][7][0]_0 ,
    \bank_reg[0][2][0]_0 ,
    S,
    \coef[0] ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10] ,
    \g_row[0].g_col[0].g_lut.p_q_reg[14] ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[16] ,
    \g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[14]_1 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[16]_1 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[2] ,
    \coef[1] ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10] ,
    \g_row[0].g_col[1].g_lut.p_q_reg[14] ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[16] ,
    \g_row[0].g_col[1].g_lut.p_q_reg[16]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[16]_1 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[2] ,
    \coef[2] ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10] ,
    \g_row[0].g_col[2].g_lut.p_q_reg[14] ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[16] ,
    \g_row[0].g_col[2].g_lut.p_q_reg[16]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[16]_1 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[2] ,
    \coef[3] ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10] ,
    \g_row[1].g_col[0].g_lut.p_q_reg[14] ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[16] ,
    \g_row[1].g_col[0].g_lut.p_q_reg[16]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[16]_1 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[2] ,
    \coef[4] ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10] ,
    \g_row[1].g_col[1].g_lut.p_q_reg[14] ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[16] ,
    \g_row[1].g_col[1].g_lut.p_q_reg[16]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[16]_1 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[2] ,
    \coef[5] ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10] ,
    \g_row[1].g_col[2].g_lut.p_q_reg[14] ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[16] ,
    \g_row[1].g_col[2].g_lut.p_q_reg[16]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[16]_1 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[2] ,
    \coef[6] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[14] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[16] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[16]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[16]_1 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[2] ,
    \coef[7] ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10] ,
    \g_row[2].g_col[1].g_lut.p_q_reg[14] ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[16] ,
    \g_row[2].g_col[1].g_lut.p_q_reg[16]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[16]_1 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[2] ,
    \coef[8] ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10] ,
    \g_row[2].g_col[2].g_lut.p_q_reg[14] ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[16] ,
    \g_row[2].g_col[2].g_lut.p_q_reg[16]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[16]_1 ,
    rst_n,
    \win[0][0] ,
    DI,
    \g_row[0].g_tap[0].taps_reg[0][0][2] ,
    \g_row[0].g_tap[0].taps_reg[0][0][3] ,
    \g_row[0].g_tap[0].taps_reg[0][0][4] ,
    \g_row[0].g_tap[0].taps_reg[0][0][5] ,
    \coef_reg[0][5]_0 ,
    \g_row[0].g_tap[0].taps_reg[0][0][2]_0 ,
    \g_row[0].g_tap[0].taps_reg[0][0][3]_0 ,
    \g_row[0].g_tap[0].taps_reg[0][0][4]_0 ,
    \g_row[0].g_tap[0].taps_reg[0][0][5]_0 ,
    O,
    \coef_reg[0][7]_0 ,
    CO,
    \g_row[0].g_tap[0].taps_reg[0][0][7] ,
    \win[0][1] ,
    \coef_reg[1][2]_0 ,
    \g_row[0].g_tap[1].taps_reg[0][1][2] ,
    \g_row[0].g_tap[1].taps_reg[0][1][3] ,
    \g_row[0].g_tap[1].taps_reg[0][1][4] ,
    \g_row[0].g_tap[1].taps_reg[0][1][5] ,
    \coef_reg[1][5]_0 ,
    \g_row[0].g_tap[1].taps_reg[0][1][2]_0 ,
    \g_row[0].g_tap[1].taps_reg[0][1][3]_0 ,
    \g_row[0].g_tap[1].taps_reg[0][1][4]_0 ,
    \g_row[0].g_tap[1].taps_reg[0][1][5]_0 ,
    \coef_reg[1][5]_1 ,
    \coef_reg[1][7]_0 ,
    \coef_reg[1][5]_2 ,
    \g_row[0].g_tap[1].taps_reg[0][1][7] ,
    \win[0][2] ,
    \coef_reg[2][2]_0 ,
    \g_row[0].taps_reg[0][2][2] ,
    \g_row[0].taps_reg[0][2][3] ,
    \g_row[0].taps_reg[0][2][4] ,
    \g_row[0].taps_reg[0][2][5] ,
    \coef_reg[2][5]_0 ,
    \g_row[0].taps_reg[0][2][2]_0 ,
    \g_row[0].taps_reg[0][2][3]_0 ,
    \g_row[0].taps_reg[0][2][4]_0 ,
    \g_row[0].taps_reg[0][2][5]_0 ,
    \coef_reg[2][5]_1 ,
    \coef_reg[2][7]_0 ,
    \coef_reg[2][5]_2 ,
    \g_row[0].taps_reg[0][2][7] ,
    \win[1][0] ,
    \coef_reg[3][2]_0 ,
    \g_row[1].g_tap[0].taps_reg[1][0][2] ,
    \g_row[1].g_tap[0].taps_reg[1][0][3] ,
    \g_row[1].g_tap[0].taps_reg[1][0][4] ,
    \g_row[1].g_tap[0].taps_reg[1][0][5] ,
    \coef_reg[3][5]_0 ,
    \g_row[1].g_tap[0].taps_reg[1][0][2]_0 ,
    \g_row[1].g_tap[0].taps_reg[1][0][3]_0 ,
    \g_row[1].g_tap[0].taps_reg[1][0][4]_0 ,
    \g_row[1].g_tap[0].taps_reg[1][0][5]_0 ,
    \coef_reg[3][5]_1 ,
    \coef_reg[3][7]_0 ,
    \coef_reg[3][5]_2 ,
    \g_row[1].g_tap[0].taps_reg[1][0][7] ,
    \win[1][1] ,
    \coef_reg[4][2]_0 ,
    \g_row[1].g_tap[1].taps_reg[1][1][2] ,
    \g_row[1].g_tap[1].taps_reg[1][1][3] ,
    \g_row[1].g_tap[1].taps_reg[1][1][4] ,
    \g_row[1].g_tap[1].taps_reg[1][1][5] ,
    \coef_reg[4][5]_0 ,
    \g_row[1].g_tap[1].taps_reg[1][1][2]_0 ,
    \g_row[1].g_tap[1].taps_reg[1][1][3]_0 ,
    \g_row[1].g_tap[1].taps_reg[1][1][4]_0 ,
    \g_row[1].g_tap[1].taps_reg[1][1][5]_0 ,
    \coef_reg[4][5]_1 ,
    \coef_reg[4][7]_0 ,
    \coef_reg[4][5]_2 ,
    \g_row[1].g_tap[1].taps_reg[1][1][7] ,
    \win[1][2] ,
    \coef_reg[5][2]_0 ,
    \g_row[1].taps_reg[1][2][2] ,
    \g_row[1].taps_reg[1][2][3] ,
    \g_row[1].taps_reg[1][2][4] ,
    \g_row[1].taps_reg[1][2][5] ,
    \coef_reg[5][5]_0 ,
    \g_row[1].taps_reg[1][2][2]_0 ,
    \g_row[1].taps_reg[1][2][3]_0 ,
    \g_row[1].taps_reg[1][2][4]_0 ,
    \g_row[1].taps_reg[1][2][5]_0 ,
    \coef_reg[5][5]_1 ,
    \coef_reg[5][7]_0 ,
    \coef_reg[5][5]_2 ,
    \g_row[1].taps_reg[1][2][7] ,
    \win[2][0] ,
    \coef_reg[6][2]_0 ,
    \g_row[2].g_tap[0].taps_reg[2][0][2] ,
    \g_row[2].g_tap[0].taps_reg[2][0][3] ,
    \g_row[2].g_tap[0].taps_reg[2][0][4] ,
    \g_row[2].g_tap[0].taps_reg[2][0][5] ,
    \coef_reg[6][5]_0 ,
    \g_row[2].g_tap[0].taps_reg[2][0][2]_0 ,
    \g_row[2].g_tap[0].taps_reg[2][0][3]_0 ,
    \g_row[2].g_tap[0].taps_reg[2][0][4]_0 ,
    \g_row[2].g_tap[0].taps_reg[2][0][5]_0 ,
    \coef_reg[6][5]_1 ,
    \coef_reg[6][7]_0 ,
    \coef_reg[6][5]_2 ,
    \g_row[2].g_tap[0].taps_reg[2][0][7] ,
    \win[2][1] ,
    \coef_reg[7][2]_0 ,
    \g_row[2].g_tap[1].taps_reg[2][1][2] ,
    \g_row[2].g_tap[1].taps_reg[2][1][3] ,
    \g_row[2].g_tap[1].taps_reg[2][1][4] ,
    \g_row[2].g_tap[1].taps_reg[2][1][5] ,
    \coef_reg[7][5]_0 ,
    \g_row[2].g_tap[1].taps_reg[2][1][2]_0 ,
    \g_row[2].g_tap[1].taps_reg[2][1][3]_0 ,
    \g_row[2].g_tap[1].taps_reg[2][1][4]_0 ,
    \g_row[2].g_tap[1].taps_reg[2][1][5]_0 ,
    \coef_reg[7][5]_1 ,
    \coef_reg[7][7]_0 ,
    \coef_reg[7][5]_2 ,
    \g_row[2].g_tap[1].taps_reg[2][1][7] ,
    \win[2][2] ,
    \coef_reg[8][2]_0 ,
    \g_row[2].taps_reg[2][2][2] ,
    \g_row[2].taps_reg[2][2][3] ,
    \g_row[2].taps_reg[2][2][4] ,
    \g_row[2].taps_reg[2][2][5] ,
    \coef_reg[8][5]_0 ,
    \g_row[2].taps_reg[2][2][2]_0 ,
    \g_row[2].taps_reg[2][2][3]_0 ,
    \g_row[2].taps_reg[2][2][4]_0 ,
    \g_row[2].taps_reg[2][2][5]_0 ,
    \coef_reg[8][5]_1 ,
    \coef_reg[8][7]_0 ,
    \coef_reg[8][5]_2 ,
    \g_row[2].taps_reg[2][2][7] ,
    kl_coef,
    clk,
    rst_n_0,
    rst_n_1,
    rst_n_2,
    Q,
    kl_addr,
    kl_bank,
    kl_valid);
  output \bank_reg[0][7][0]_0 ;
  output \bank_reg[0][2][0]_0 ;
  output [0:0]S;
  output [7:0]\coef[0] ;
  output [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[2] ;
  output [7:0]\coef[1] ;
  output [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[2] ;
  output [7:0]\coef[2] ;
  output [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[2] ;
  output [7:0]\coef[3] ;
  output [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[2] ;
  output [7:0]\coef[4] ;
  output [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[2] ;
  output [7:0]\coef[5] ;
  output [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[2] ;
  output [7:0]\coef[6] ;
  output [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[2] ;
  output [7:0]\coef[7] ;
  output [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[16]_1 ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[2] ;
  output [7:0]\coef[8] ;
  output [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10] ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14] ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ;
  output [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ;
  output [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[16] ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[16]_1 ;
  input rst_n;
  input [7:0]\win[0][0] ;
  input [3:0]DI;
  input \g_row[0].g_tap[0].taps_reg[0][0][2] ;
  input \g_row[0].g_tap[0].taps_reg[0][0][3] ;
  input \g_row[0].g_tap[0].taps_reg[0][0][4] ;
  input \g_row[0].g_tap[0].taps_reg[0][0][5] ;
  input [3:0]\coef_reg[0][5]_0 ;
  input \g_row[0].g_tap[0].taps_reg[0][0][2]_0 ;
  input \g_row[0].g_tap[0].taps_reg[0][0][3]_0 ;
  input \g_row[0].g_tap[0].taps_reg[0][0][4]_0 ;
  input \g_row[0].g_tap[0].taps_reg[0][0][5]_0 ;
  input [0:0]O;
  input [1:0]\coef_reg[0][7]_0 ;
  input [0:0]CO;
  input [0:0]\g_row[0].g_tap[0].taps_reg[0][0][7] ;
  input [7:0]\win[0][1] ;
  input [3:0]\coef_reg[1][2]_0 ;
  input \g_row[0].g_tap[1].taps_reg[0][1][2] ;
  input \g_row[0].g_tap[1].taps_reg[0][1][3] ;
  input \g_row[0].g_tap[1].taps_reg[0][1][4] ;
  input \g_row[0].g_tap[1].taps_reg[0][1][5] ;
  input [3:0]\coef_reg[1][5]_0 ;
  input \g_row[0].g_tap[1].taps_reg[0][1][2]_0 ;
  input \g_row[0].g_tap[1].taps_reg[0][1][3]_0 ;
  input \g_row[0].g_tap[1].taps_reg[0][1][4]_0 ;
  input \g_row[0].g_tap[1].taps_reg[0][1][5]_0 ;
  input [0:0]\coef_reg[1][5]_1 ;
  input [1:0]\coef_reg[1][7]_0 ;
  input [0:0]\coef_reg[1][5]_2 ;
  input [0:0]\g_row[0].g_tap[1].taps_reg[0][1][7] ;
  input [7:0]\win[0][2] ;
  input [3:0]\coef_reg[2][2]_0 ;
  input \g_row[0].taps_reg[0][2][2] ;
  input \g_row[0].taps_reg[0][2][3] ;
  input \g_row[0].taps_reg[0][2][4] ;
  input \g_row[0].taps_reg[0][2][5] ;
  input [3:0]\coef_reg[2][5]_0 ;
  input \g_row[0].taps_reg[0][2][2]_0 ;
  input \g_row[0].taps_reg[0][2][3]_0 ;
  input \g_row[0].taps_reg[0][2][4]_0 ;
  input \g_row[0].taps_reg[0][2][5]_0 ;
  input [0:0]\coef_reg[2][5]_1 ;
  input [1:0]\coef_reg[2][7]_0 ;
  input [0:0]\coef_reg[2][5]_2 ;
  input [0:0]\g_row[0].taps_reg[0][2][7] ;
  input [7:0]\win[1][0] ;
  input [3:0]\coef_reg[3][2]_0 ;
  input \g_row[1].g_tap[0].taps_reg[1][0][2] ;
  input \g_row[1].g_tap[0].taps_reg[1][0][3] ;
  input \g_row[1].g_tap[0].taps_reg[1][0][4] ;
  input \g_row[1].g_tap[0].taps_reg[1][0][5] ;
  input [3:0]\coef_reg[3][5]_0 ;
  input \g_row[1].g_tap[0].taps_reg[1][0][2]_0 ;
  input \g_row[1].g_tap[0].taps_reg[1][0][3]_0 ;
  input \g_row[1].g_tap[0].taps_reg[1][0][4]_0 ;
  input \g_row[1].g_tap[0].taps_reg[1][0][5]_0 ;
  input [0:0]\coef_reg[3][5]_1 ;
  input [1:0]\coef_reg[3][7]_0 ;
  input [0:0]\coef_reg[3][5]_2 ;
  input [0:0]\g_row[1].g_tap[0].taps_reg[1][0][7] ;
  input [7:0]\win[1][1] ;
  input [3:0]\coef_reg[4][2]_0 ;
  input \g_row[1].g_tap[1].taps_reg[1][1][2] ;
  input \g_row[1].g_tap[1].taps_reg[1][1][3] ;
  input \g_row[1].g_tap[1].taps_reg[1][1][4] ;
  input \g_row[1].g_tap[1].taps_reg[1][1][5] ;
  input [3:0]\coef_reg[4][5]_0 ;
  input \g_row[1].g_tap[1].taps_reg[1][1][2]_0 ;
  input \g_row[1].g_tap[1].taps_reg[1][1][3]_0 ;
  input \g_row[1].g_tap[1].taps_reg[1][1][4]_0 ;
  input \g_row[1].g_tap[1].taps_reg[1][1][5]_0 ;
  input [0:0]\coef_reg[4][5]_1 ;
  input [1:0]\coef_reg[4][7]_0 ;
  input [0:0]\coef_reg[4][5]_2 ;
  input [0:0]\g_row[1].g_tap[1].taps_reg[1][1][7] ;
  input [7:0]\win[1][2] ;
  input [3:0]\coef_reg[5][2]_0 ;
  input \g_row[1].taps_reg[1][2][2] ;
  input \g_row[1].taps_reg[1][2][3] ;
  input \g_row[1].taps_reg[1][2][4] ;
  input \g_row[1].taps_reg[1][2][5] ;
  input [3:0]\coef_reg[5][5]_0 ;
  input \g_row[1].taps_reg[1][2][2]_0 ;
  input \g_row[1].taps_reg[1][2][3]_0 ;
  input \g_row[1].taps_reg[1][2][4]_0 ;
  input \g_row[1].taps_reg[1][2][5]_0 ;
  input [0:0]\coef_reg[5][5]_1 ;
  input [1:0]\coef_reg[5][7]_0 ;
  input [0:0]\coef_reg[5][5]_2 ;
  input [0:0]\g_row[1].taps_reg[1][2][7] ;
  input [7:0]\win[2][0] ;
  input [3:0]\coef_reg[6][2]_0 ;
  input \g_row[2].g_tap[0].taps_reg[2][0][2] ;
  input \g_row[2].g_tap[0].taps_reg[2][0][3] ;
  input \g_row[2].g_tap[0].taps_reg[2][0][4] ;
  input \g_row[2].g_tap[0].taps_reg[2][0][5] ;
  input [3:0]\coef_reg[6][5]_0 ;
  input \g_row[2].g_tap[0].taps_reg[2][0][2]_0 ;
  input \g_row[2].g_tap[0].taps_reg[2][0][3]_0 ;
  input \g_row[2].g_tap[0].taps_reg[2][0][4]_0 ;
  input \g_row[2].g_tap[0].taps_reg[2][0][5]_0 ;
  input [0:0]\coef_reg[6][5]_1 ;
  input [1:0]\coef_reg[6][7]_0 ;
  input [0:0]\coef_reg[6][5]_2 ;
  input [0:0]\g_row[2].g_tap[0].taps_reg[2][0][7] ;
  input [7:0]\win[2][1] ;
  input [3:0]\coef_reg[7][2]_0 ;
  input \g_row[2].g_tap[1].taps_reg[2][1][2] ;
  input \g_row[2].g_tap[1].taps_reg[2][1][3] ;
  input \g_row[2].g_tap[1].taps_reg[2][1][4] ;
  input \g_row[2].g_tap[1].taps_reg[2][1][5] ;
  input [3:0]\coef_reg[7][5]_0 ;
  input \g_row[2].g_tap[1].taps_reg[2][1][2]_0 ;
  input \g_row[2].g_tap[1].taps_reg[2][1][3]_0 ;
  input \g_row[2].g_tap[1].taps_reg[2][1][4]_0 ;
  input \g_row[2].g_tap[1].taps_reg[2][1][5]_0 ;
  input [0:0]\coef_reg[7][5]_1 ;
  input [1:0]\coef_reg[7][7]_0 ;
  input [0:0]\coef_reg[7][5]_2 ;
  input [0:0]\g_row[2].g_tap[1].taps_reg[2][1][7] ;
  input [7:0]\win[2][2] ;
  input [3:0]\coef_reg[8][2]_0 ;
  input \g_row[2].taps_reg[2][2][2] ;
  input \g_row[2].taps_reg[2][2][3] ;
  input \g_row[2].taps_reg[2][2][4] ;
  input \g_row[2].taps_reg[2][2][5] ;
  input [3:0]\coef_reg[8][5]_0 ;
  input \g_row[2].taps_reg[2][2][2]_0 ;
  input \g_row[2].taps_reg[2][2][3]_0 ;
  input \g_row[2].taps_reg[2][2][4]_0 ;
  input \g_row[2].taps_reg[2][2][5]_0 ;
  input [0:0]\coef_reg[8][5]_1 ;
  input [1:0]\coef_reg[8][7]_0 ;
  input [0:0]\coef_reg[8][5]_2 ;
  input [0:0]\g_row[2].taps_reg[2][2][7] ;
  input [7:0]kl_coef;
  input clk;
  input rst_n_0;
  input rst_n_1;
  input rst_n_2;
  input [1:0]Q;
  input [3:0]kl_addr;
  input [1:0]kl_bank;
  input kl_valid;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]O;
  wire [1:0]Q;
  wire [0:0]S;
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
  wire \bank[3][0][7]_i_3_n_0 ;
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
  wire \bank_reg[0][2][0]_0 ;
  wire [7:0]\bank_reg[0][2]_11 ;
  wire [7:0]\bank_reg[0][3]_15 ;
  wire [7:0]\bank_reg[0][4]_19 ;
  wire [7:0]\bank_reg[0][5]_23 ;
  wire [7:0]\bank_reg[0][6]_27 ;
  wire \bank_reg[0][7][0]_0 ;
  wire [7:0]\bank_reg[0][7]_31 ;
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
  wire [7:0]\coef[0] ;
  wire [7:0]\coef[1] ;
  wire \coef[1][0]_i_1_n_0 ;
  wire \coef[1][1]_i_1_n_0 ;
  wire \coef[1][2]_i_1_n_0 ;
  wire \coef[1][3]_i_1_n_0 ;
  wire \coef[1][4]_i_1_n_0 ;
  wire \coef[1][5]_i_1_n_0 ;
  wire \coef[1][6]_i_1_n_0 ;
  wire \coef[1][7]_i_1_n_0 ;
  wire [7:0]\coef[2] ;
  wire \coef[2][0]_i_1_n_0 ;
  wire \coef[2][1]_i_1_n_0 ;
  wire \coef[2][2]_i_1_n_0 ;
  wire \coef[2][3]_i_1_n_0 ;
  wire \coef[2][4]_i_1_n_0 ;
  wire \coef[2][5]_i_1_n_0 ;
  wire \coef[2][6]_i_1_n_0 ;
  wire \coef[2][7]_i_1_n_0 ;
  wire [7:0]\coef[3] ;
  wire \coef[3][0]_i_1_n_0 ;
  wire \coef[3][1]_i_1_n_0 ;
  wire \coef[3][2]_i_1_n_0 ;
  wire \coef[3][3]_i_1_n_0 ;
  wire \coef[3][4]_i_1_n_0 ;
  wire \coef[3][5]_i_1_n_0 ;
  wire \coef[3][6]_i_1_n_0 ;
  wire \coef[3][7]_i_1_n_0 ;
  wire [7:0]\coef[4] ;
  wire \coef[4][0]_i_1_n_0 ;
  wire \coef[4][1]_i_1_n_0 ;
  wire \coef[4][2]_i_1_n_0 ;
  wire \coef[4][3]_i_1_n_0 ;
  wire \coef[4][4]_i_1_n_0 ;
  wire \coef[4][5]_i_1_n_0 ;
  wire \coef[4][6]_i_1_n_0 ;
  wire \coef[4][7]_i_1_n_0 ;
  wire [7:0]\coef[5] ;
  wire \coef[5][0]_i_1_n_0 ;
  wire \coef[5][1]_i_1_n_0 ;
  wire \coef[5][2]_i_1_n_0 ;
  wire \coef[5][3]_i_1_n_0 ;
  wire \coef[5][4]_i_1_n_0 ;
  wire \coef[5][5]_i_1_n_0 ;
  wire \coef[5][6]_i_1_n_0 ;
  wire \coef[5][7]_i_1_n_0 ;
  wire [7:0]\coef[6] ;
  wire \coef[6][0]_i_1_n_0 ;
  wire \coef[6][1]_i_1_n_0 ;
  wire \coef[6][2]_i_1_n_0 ;
  wire \coef[6][3]_i_1_n_0 ;
  wire \coef[6][4]_i_1_n_0 ;
  wire \coef[6][5]_i_1_n_0 ;
  wire \coef[6][6]_i_1_n_0 ;
  wire \coef[6][7]_i_1_n_0 ;
  wire [7:0]\coef[7] ;
  wire \coef[7][0]_i_1_n_0 ;
  wire \coef[7][1]_i_1_n_0 ;
  wire \coef[7][2]_i_1_n_0 ;
  wire \coef[7][3]_i_1_n_0 ;
  wire \coef[7][4]_i_1_n_0 ;
  wire \coef[7][5]_i_1_n_0 ;
  wire \coef[7][6]_i_1_n_0 ;
  wire \coef[7][7]_i_1_n_0 ;
  wire [7:0]\coef[8] ;
  wire \coef[8][0]_i_1_n_0 ;
  wire \coef[8][1]_i_1_n_0 ;
  wire \coef[8][2]_i_1_n_0 ;
  wire \coef[8][3]_i_1_n_0 ;
  wire \coef[8][4]_i_1_n_0 ;
  wire \coef[8][5]_i_1_n_0 ;
  wire \coef[8][6]_i_1_n_0 ;
  wire \coef[8][7]_i_1_n_0 ;
  wire [3:0]\coef_reg[0][5]_0 ;
  wire [1:0]\coef_reg[0][7]_0 ;
  wire [3:0]\coef_reg[1][2]_0 ;
  wire [3:0]\coef_reg[1][5]_0 ;
  wire [0:0]\coef_reg[1][5]_1 ;
  wire [0:0]\coef_reg[1][5]_2 ;
  wire [1:0]\coef_reg[1][7]_0 ;
  wire [3:0]\coef_reg[2][2]_0 ;
  wire [3:0]\coef_reg[2][5]_0 ;
  wire [0:0]\coef_reg[2][5]_1 ;
  wire [0:0]\coef_reg[2][5]_2 ;
  wire [1:0]\coef_reg[2][7]_0 ;
  wire [3:0]\coef_reg[3][2]_0 ;
  wire [3:0]\coef_reg[3][5]_0 ;
  wire [0:0]\coef_reg[3][5]_1 ;
  wire [0:0]\coef_reg[3][5]_2 ;
  wire [1:0]\coef_reg[3][7]_0 ;
  wire [3:0]\coef_reg[4][2]_0 ;
  wire [3:0]\coef_reg[4][5]_0 ;
  wire [0:0]\coef_reg[4][5]_1 ;
  wire [0:0]\coef_reg[4][5]_2 ;
  wire [1:0]\coef_reg[4][7]_0 ;
  wire [3:0]\coef_reg[5][2]_0 ;
  wire [3:0]\coef_reg[5][5]_0 ;
  wire [0:0]\coef_reg[5][5]_1 ;
  wire [0:0]\coef_reg[5][5]_2 ;
  wire [1:0]\coef_reg[5][7]_0 ;
  wire [3:0]\coef_reg[6][2]_0 ;
  wire [3:0]\coef_reg[6][5]_0 ;
  wire [0:0]\coef_reg[6][5]_1 ;
  wire [0:0]\coef_reg[6][5]_2 ;
  wire [1:0]\coef_reg[6][7]_0 ;
  wire [3:0]\coef_reg[7][2]_0 ;
  wire [3:0]\coef_reg[7][5]_0 ;
  wire [0:0]\coef_reg[7][5]_1 ;
  wire [0:0]\coef_reg[7][5]_2 ;
  wire [1:0]\coef_reg[7][7]_0 ;
  wire [3:0]\coef_reg[8][2]_0 ;
  wire [3:0]\coef_reg[8][5]_0 ;
  wire [0:0]\coef_reg[8][5]_1 ;
  wire [0:0]\coef_reg[8][5]_2 ;
  wire [1:0]\coef_reg[8][7]_0 ;
  wire [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_1 ;
  wire [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[2] ;
  wire [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[2] ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][2] ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][2]_0 ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][3] ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][3]_0 ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][4] ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][4]_0 ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][5] ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][5]_0 ;
  wire [0:0]\g_row[0].g_tap[0].taps_reg[0][0][7] ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][2] ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][2]_0 ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][3] ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][3]_0 ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][4] ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][4]_0 ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][5] ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][5]_0 ;
  wire [0:0]\g_row[0].g_tap[1].taps_reg[0][1][7] ;
  wire \g_row[0].taps_reg[0][2][2] ;
  wire \g_row[0].taps_reg[0][2][2]_0 ;
  wire \g_row[0].taps_reg[0][2][3] ;
  wire \g_row[0].taps_reg[0][2][3]_0 ;
  wire \g_row[0].taps_reg[0][2][4] ;
  wire \g_row[0].taps_reg[0][2][4]_0 ;
  wire \g_row[0].taps_reg[0][2][5] ;
  wire \g_row[0].taps_reg[0][2][5]_0 ;
  wire [0:0]\g_row[0].taps_reg[0][2][7] ;
  wire [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[2] ;
  wire [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[2] ;
  wire [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[2] ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][2] ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][2]_0 ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][3] ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][3]_0 ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][4] ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][4]_0 ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][5] ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][5]_0 ;
  wire [0:0]\g_row[1].g_tap[0].taps_reg[1][0][7] ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][2] ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][2]_0 ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][3] ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][3]_0 ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][4] ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][4]_0 ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][5] ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][5]_0 ;
  wire [0:0]\g_row[1].g_tap[1].taps_reg[1][1][7] ;
  wire \g_row[1].taps_reg[1][2][2] ;
  wire \g_row[1].taps_reg[1][2][2]_0 ;
  wire \g_row[1].taps_reg[1][2][3] ;
  wire \g_row[1].taps_reg[1][2][3]_0 ;
  wire \g_row[1].taps_reg[1][2][4] ;
  wire \g_row[1].taps_reg[1][2][4]_0 ;
  wire \g_row[1].taps_reg[1][2][5] ;
  wire \g_row[1].taps_reg[1][2][5]_0 ;
  wire [0:0]\g_row[1].taps_reg[1][2][7] ;
  wire [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[2] ;
  wire [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[2] ;
  wire [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10] ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ;
  wire [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14] ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ;
  wire [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[16] ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[16]_1 ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[2] ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][2] ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][2]_0 ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][3] ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][3]_0 ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][4] ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][4]_0 ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][5] ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][5]_0 ;
  wire [0:0]\g_row[2].g_tap[0].taps_reg[2][0][7] ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][2] ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][2]_0 ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][3] ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][3]_0 ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][4] ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][4]_0 ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][5] ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][5]_0 ;
  wire [0:0]\g_row[2].g_tap[1].taps_reg[2][1][7] ;
  wire \g_row[2].taps_reg[2][2][2] ;
  wire \g_row[2].taps_reg[2][2][2]_0 ;
  wire \g_row[2].taps_reg[2][2][3] ;
  wire \g_row[2].taps_reg[2][2][3]_0 ;
  wire \g_row[2].taps_reg[2][2][4] ;
  wire \g_row[2].taps_reg[2][2][4]_0 ;
  wire \g_row[2].taps_reg[2][2][5] ;
  wire \g_row[2].taps_reg[2][2][5]_0 ;
  wire [0:0]\g_row[2].taps_reg[2][2][7] ;
  wire [3:0]kl_addr;
  wire [1:0]kl_bank;
  wire [7:0]kl_coef;
  wire kl_valid;
  wire [7:0]p_0_in;
  wire rst_n;
  wire rst_n_0;
  wire rst_n_1;
  wire rst_n_2;
  wire [7:0]\win[0][0] ;
  wire [7:0]\win[0][1] ;
  wire [7:0]\win[0][2] ;
  wire [7:0]\win[1][0] ;
  wire [7:0]\win[1][1] ;
  wire [7:0]\win[1][2] ;
  wire [7:0]\win[2][0] ;
  wire [7:0]\win[2][1] ;
  wire [7:0]\win[2][2] ;

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
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[1][0][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[1][1][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[1][1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \bank[1][2][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[1]),
        .I3(kl_addr[0]),
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[1][2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \bank[1][3][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[1][3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \bank[1][4][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[1][4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bank[1][5][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[1][5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \bank[1][6][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
        .I1(kl_addr[2]),
        .I2(kl_bank[1]),
        .I3(kl_addr[0]),
        .I4(kl_addr[1]),
        .O(\bank[1][6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \bank[1][7][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
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
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[3][0][7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \bank[3][0][7]_i_2 
       (.I0(rst_n),
        .O(\bank[3][0][7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \bank[3][0][7]_i_3 
       (.I0(kl_addr[3]),
        .I1(kl_valid),
        .I2(kl_bank[0]),
        .O(\bank[3][0][7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[3][1][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[3][1][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00200000)) 
    \bank[3][2][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[1]),
        .I3(kl_addr[0]),
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[3][2][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \bank[3][3][7]_i_1 
       (.I0(kl_bank[1]),
        .I1(kl_addr[2]),
        .I2(kl_addr[0]),
        .I3(kl_addr[1]),
        .I4(\bank[3][0][7]_i_3_n_0 ),
        .O(\bank[3][3][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000080)) 
    \bank[3][4][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[3][4][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bank[3][5][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[1]),
        .I4(kl_addr[0]),
        .O(\bank[3][5][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \bank[3][6][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
        .I1(kl_bank[1]),
        .I2(kl_addr[2]),
        .I3(kl_addr[0]),
        .I4(kl_addr[1]),
        .O(\bank[3][6][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \bank[3][7][7]_i_1 
       (.I0(\bank[3][0][7]_i_3_n_0 ),
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
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][0]_3 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][1] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][0]_3 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][2] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][0]_3 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][3] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][0]_3 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][4] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][0]_3 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][5] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][0]_3 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][6] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][0]_3 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][0][7] 
       (.C(clk),
        .CE(bank),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][0]_3 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][0] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][1]_7 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][1] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][1]_7 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][2] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][1]_7 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][3] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][1]_7 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][4] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][1]_7 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][5] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][1]_7 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][6] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][1]_7 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][1][7] 
       (.C(clk),
        .CE(\bank[0][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][1]_7 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][0] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][2]_11 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][1] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][2]_11 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][2] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][2]_11 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][3] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][2]_11 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][4] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][2]_11 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][5] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][2]_11 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][6] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][2]_11 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][2][7] 
       (.C(clk),
        .CE(\bank[0][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][2]_11 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][0] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][3]_15 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][1] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][3]_15 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][2] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][3]_15 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][3] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][3]_15 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][4] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][3]_15 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][5] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][3]_15 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][6] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][3]_15 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][3][7] 
       (.C(clk),
        .CE(\bank[0][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][3]_15 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][0] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][4]_19 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][1] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][4]_19 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][2] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][4]_19 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][3] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][4]_19 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][4] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][4]_19 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][5] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][4]_19 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][6] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][4]_19 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][4][7] 
       (.C(clk),
        .CE(\bank[0][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][4]_19 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][0] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][5]_23 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][1] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][5]_23 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][2] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][5]_23 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][3] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][5]_23 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][4] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][5]_23 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][5] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][5]_23 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][6] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][5]_23 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][5][7] 
       (.C(clk),
        .CE(\bank[0][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][5]_23 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][0] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][6]_27 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][1] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][6]_27 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][2] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][6]_27 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][3] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][6]_27 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][4] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][6]_27 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][5] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][6]_27 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][6] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][6]_27 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][6][7] 
       (.C(clk),
        .CE(\bank[0][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][6]_27 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][0] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][7]_31 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][1] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][7]_31 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][2] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][7]_31 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][3] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][7]_31 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][4] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][7]_31 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][5] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][7]_31 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][6] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][7]_31 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][7][7] 
       (.C(clk),
        .CE(\bank[0][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][7]_31 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][0] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[0][8]_35 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][1] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[0][8]_35 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][2] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[0][8]_35 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][3] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[0][8]_35 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][4] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[0][8]_35 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][5] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[0][8]_35 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][6] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[0][8]_35 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[0][8][7] 
       (.C(clk),
        .CE(\bank[0][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[0][8]_35 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][0] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][0]_2 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][1] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][0]_2 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][2] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][0]_2 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][3] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][0]_2 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][4] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][0]_2 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][5] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][0]_2 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][6] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][0]_2 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][0][7] 
       (.C(clk),
        .CE(\bank[1][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][0]_2 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][0] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][1]_6 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][1] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][1]_6 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][2] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][1]_6 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][3] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][1]_6 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][4] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][1]_6 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][5] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][1]_6 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][6] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][1]_6 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][1][7] 
       (.C(clk),
        .CE(\bank[1][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][1]_6 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][0] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][2]_10 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][1] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][2]_10 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][2] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][2]_10 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][3] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][2]_10 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][4] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][2]_10 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][5] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][2]_10 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][6] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][2]_10 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][2][7] 
       (.C(clk),
        .CE(\bank[1][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][2]_10 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][0] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][3]_14 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][1] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][3]_14 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][2] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][3]_14 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][3] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][3]_14 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][4] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][3]_14 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][5] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][3]_14 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][6] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][3]_14 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][3][7] 
       (.C(clk),
        .CE(\bank[1][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][3]_14 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][0] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][4]_18 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][1] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][4]_18 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][2] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][4]_18 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][3] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][4]_18 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][4] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][4]_18 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][5] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][4]_18 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][6] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][4]_18 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][4][7] 
       (.C(clk),
        .CE(\bank[1][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][4]_18 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][0] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][5]_22 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][1] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][5]_22 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][2] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][5]_22 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][3] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][5]_22 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][4] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][5]_22 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][5] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][5]_22 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][6] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][5]_22 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][5][7] 
       (.C(clk),
        .CE(\bank[1][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][5]_22 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][0] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][6]_26 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][1] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][6]_26 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][2] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][6]_26 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][3] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][6]_26 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][4] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][6]_26 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][5] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][6]_26 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][6] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][6]_26 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][6][7] 
       (.C(clk),
        .CE(\bank[1][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][6]_26 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][0] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][7]_30 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][1] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][7]_30 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][2] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][7]_30 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][3] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][7]_30 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][4] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][7]_30 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][5] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][7]_30 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][6] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][7]_30 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][7][7] 
       (.C(clk),
        .CE(\bank[1][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][7]_30 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][0] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[1][8]_34 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][1] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[1][8]_34 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][2] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[1][8]_34 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][3] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[1][8]_34 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][4] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[1][8]_34 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][5] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[1][8]_34 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][6] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[1][8]_34 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[1][8][7] 
       (.C(clk),
        .CE(\bank[1][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[1][8]_34 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][0] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][0]_1 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][1] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][0]_1 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][2] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][0]_1 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][3] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][0]_1 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][4] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][0]_1 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][5] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][0]_1 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][6] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][0]_1 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][0][7] 
       (.C(clk),
        .CE(\bank[2][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][0]_1 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][0] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][1]_5 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][1] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][1]_5 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][2] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][1]_5 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][3] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][1]_5 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][4] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][1]_5 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][5] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][1]_5 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][6] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][1]_5 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][1][7] 
       (.C(clk),
        .CE(\bank[2][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][1]_5 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][0] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][2]_9 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][1] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][2]_9 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][2] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][2]_9 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][3] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][2]_9 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][4] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][2]_9 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][5] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][2]_9 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][6] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][2]_9 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][2][7] 
       (.C(clk),
        .CE(\bank[2][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][2]_9 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][0] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][3]_13 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][1] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][3]_13 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][2] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][3]_13 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][3] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][3]_13 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][4] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][3]_13 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][5] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][3]_13 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][6] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][3]_13 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][3][7] 
       (.C(clk),
        .CE(\bank[2][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][3]_13 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][0] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][4]_17 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][1] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][4]_17 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][2] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][4]_17 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][3] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][4]_17 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][4] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][4]_17 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][5] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][4]_17 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][6] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][4]_17 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][4][7] 
       (.C(clk),
        .CE(\bank[2][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][4]_17 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][0] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][5]_21 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][1] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][5]_21 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][2] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][5]_21 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][3] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][5]_21 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][4] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][5]_21 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][5] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][5]_21 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][6] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][5]_21 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][5][7] 
       (.C(clk),
        .CE(\bank[2][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][5]_21 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][0] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][6]_25 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][1] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][6]_25 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][2] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][6]_25 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][3] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][6]_25 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][4] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][6]_25 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][5] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][6]_25 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][6] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][6]_25 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][6][7] 
       (.C(clk),
        .CE(\bank[2][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][6]_25 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][0] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][7]_29 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][1] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][7]_29 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][2] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][7]_29 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][3] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][7]_29 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][4] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][7]_29 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][5] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][7]_29 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][6] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][7]_29 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][7][7] 
       (.C(clk),
        .CE(\bank[2][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][7]_29 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][0] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[2][8]_33 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][1] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[2][8]_33 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][2] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[2][8]_33 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][3] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[2][8]_33 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][4] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[2][8]_33 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][5] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[2][8]_33 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][6] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[2][8]_33 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[2][8][7] 
       (.C(clk),
        .CE(\bank[2][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[2][8]_33 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][0] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][0]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][1] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][0]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][2] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][0]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][3] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][0]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][4] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][0]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][5] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][0]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][6] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][0]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][0][7] 
       (.C(clk),
        .CE(\bank[3][0][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][0]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][0] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][1]_4 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][1] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][1]_4 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][2] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][1]_4 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][3] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][1]_4 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][4] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][1]_4 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][5] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][1]_4 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][6] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][1]_4 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][1][7] 
       (.C(clk),
        .CE(\bank[3][1][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][1]_4 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][0] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][2]_8 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][1] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][2]_8 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][2] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][2]_8 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][3] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][2]_8 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][4] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][2]_8 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][5] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][2]_8 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][6] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][2]_8 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][2][7] 
       (.C(clk),
        .CE(\bank[3][2][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][2]_8 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][0] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][3]_12 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][1] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank[3][0][7]_i_2_n_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][3]_12 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][2] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][3]_12 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][3] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][3]_12 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][4] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][3]_12 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][5] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][3]_12 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][6] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][3]_12 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][3][7] 
       (.C(clk),
        .CE(\bank[3][3][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][3]_12 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][0] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][4]_16 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][1] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][4]_16 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][2] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][4]_16 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][3] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][4]_16 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][4] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][4]_16 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][5] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][4]_16 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][6] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][4]_16 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][4][7] 
       (.C(clk),
        .CE(\bank[3][4][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][4]_16 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][0] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][5]_20 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][1] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][5]_20 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][2] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][5]_20 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][3] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][5]_20 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][4] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][5]_20 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][5] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][5]_20 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][6] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][5]_20 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][5][7] 
       (.C(clk),
        .CE(\bank[3][5][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][5]_20 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][0] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][6]_24 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][1] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][6]_24 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][2] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][6]_24 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][3] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][6]_24 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][4] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][6]_24 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][5] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][6]_24 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][6] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][6]_24 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][6][7] 
       (.C(clk),
        .CE(\bank[3][6][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][6]_24 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][0] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][7]_28 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][1] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][7]_28 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][2] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][7]_28 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][3] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][7]_28 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][4] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][7]_28 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][5] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][7]_28 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][6] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][7]_28 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][7][7] 
       (.C(clk),
        .CE(\bank[3][7][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][7][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][7]_28 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][0] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[0]),
        .Q(\bank_reg[3][8]_32 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][1] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[1]),
        .Q(\bank_reg[3][8]_32 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][2] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[2]),
        .Q(\bank_reg[3][8]_32 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][3] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[3]),
        .Q(\bank_reg[3][8]_32 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][4] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[4]),
        .Q(\bank_reg[3][8]_32 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][5] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[5]),
        .Q(\bank_reg[3][8]_32 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][6] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[6]),
        .Q(\bank_reg[3][8]_32 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \bank_reg[3][8][7] 
       (.C(clk),
        .CE(\bank[3][8][7]_i_1_n_0 ),
        .CLR(\bank_reg[0][2][0]_0 ),
        .D(kl_coef[7]),
        .Q(\bank_reg[3][8]_32 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    busy_i_2
       (.I0(rst_n),
        .O(\bank_reg[0][7][0]_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][0]_i_1 
       (.I0(\bank_reg[1][0]_2 [0]),
        .I1(\bank_reg[0][0]_3 [0]),
        .I2(\bank_reg[3][0]_0 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][1]_i_1 
       (.I0(\bank_reg[1][0]_2 [1]),
        .I1(\bank_reg[0][0]_3 [1]),
        .I2(\bank_reg[3][0]_0 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][2]_i_1 
       (.I0(\bank_reg[1][0]_2 [2]),
        .I1(\bank_reg[0][0]_3 [2]),
        .I2(\bank_reg[3][0]_0 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][3]_i_1 
       (.I0(\bank_reg[1][0]_2 [3]),
        .I1(\bank_reg[0][0]_3 [3]),
        .I2(\bank_reg[3][0]_0 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][4]_i_1 
       (.I0(\bank_reg[1][0]_2 [4]),
        .I1(\bank_reg[0][0]_3 [4]),
        .I2(\bank_reg[3][0]_0 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][5]_i_1 
       (.I0(\bank_reg[1][0]_2 [5]),
        .I1(\bank_reg[0][0]_3 [5]),
        .I2(\bank_reg[3][0]_0 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][6]_i_1 
       (.I0(\bank_reg[1][0]_2 [6]),
        .I1(\bank_reg[0][0]_3 [6]),
        .I2(\bank_reg[3][0]_0 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[0][7]_i_1 
       (.I0(\bank_reg[1][0]_2 [7]),
        .I1(\bank_reg[0][0]_3 [7]),
        .I2(\bank_reg[3][0]_0 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][0]_1 [7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][0]_i_1 
       (.I0(\bank_reg[1][1]_6 [0]),
        .I1(\bank_reg[0][1]_7 [0]),
        .I2(\bank_reg[3][1]_4 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [0]),
        .O(\coef[1][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][1]_i_1 
       (.I0(\bank_reg[1][1]_6 [1]),
        .I1(\bank_reg[0][1]_7 [1]),
        .I2(\bank_reg[3][1]_4 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [1]),
        .O(\coef[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][2]_i_1 
       (.I0(\bank_reg[1][1]_6 [2]),
        .I1(\bank_reg[0][1]_7 [2]),
        .I2(\bank_reg[3][1]_4 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [2]),
        .O(\coef[1][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][3]_i_1 
       (.I0(\bank_reg[1][1]_6 [3]),
        .I1(\bank_reg[0][1]_7 [3]),
        .I2(\bank_reg[3][1]_4 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [3]),
        .O(\coef[1][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][4]_i_1 
       (.I0(\bank_reg[1][1]_6 [4]),
        .I1(\bank_reg[0][1]_7 [4]),
        .I2(\bank_reg[3][1]_4 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [4]),
        .O(\coef[1][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][5]_i_1 
       (.I0(\bank_reg[1][1]_6 [5]),
        .I1(\bank_reg[0][1]_7 [5]),
        .I2(\bank_reg[3][1]_4 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [5]),
        .O(\coef[1][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][6]_i_1 
       (.I0(\bank_reg[1][1]_6 [6]),
        .I1(\bank_reg[0][1]_7 [6]),
        .I2(\bank_reg[3][1]_4 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [6]),
        .O(\coef[1][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[1][7]_i_1 
       (.I0(\bank_reg[1][1]_6 [7]),
        .I1(\bank_reg[0][1]_7 [7]),
        .I2(\bank_reg[3][1]_4 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][1]_5 [7]),
        .O(\coef[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][0]_i_1 
       (.I0(\bank_reg[1][2]_10 [0]),
        .I1(\bank_reg[0][2]_11 [0]),
        .I2(\bank_reg[3][2]_8 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [0]),
        .O(\coef[2][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][1]_i_1 
       (.I0(\bank_reg[1][2]_10 [1]),
        .I1(\bank_reg[0][2]_11 [1]),
        .I2(\bank_reg[3][2]_8 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [1]),
        .O(\coef[2][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][2]_i_1 
       (.I0(\bank_reg[1][2]_10 [2]),
        .I1(\bank_reg[0][2]_11 [2]),
        .I2(\bank_reg[3][2]_8 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [2]),
        .O(\coef[2][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][3]_i_1 
       (.I0(\bank_reg[1][2]_10 [3]),
        .I1(\bank_reg[0][2]_11 [3]),
        .I2(\bank_reg[3][2]_8 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [3]),
        .O(\coef[2][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][4]_i_1 
       (.I0(\bank_reg[1][2]_10 [4]),
        .I1(\bank_reg[0][2]_11 [4]),
        .I2(\bank_reg[3][2]_8 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [4]),
        .O(\coef[2][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][5]_i_1 
       (.I0(\bank_reg[1][2]_10 [5]),
        .I1(\bank_reg[0][2]_11 [5]),
        .I2(\bank_reg[3][2]_8 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [5]),
        .O(\coef[2][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][6]_i_1 
       (.I0(\bank_reg[1][2]_10 [6]),
        .I1(\bank_reg[0][2]_11 [6]),
        .I2(\bank_reg[3][2]_8 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [6]),
        .O(\coef[2][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[2][7]_i_1 
       (.I0(\bank_reg[1][2]_10 [7]),
        .I1(\bank_reg[0][2]_11 [7]),
        .I2(\bank_reg[3][2]_8 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][2]_9 [7]),
        .O(\coef[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][0]_i_1 
       (.I0(\bank_reg[1][3]_14 [0]),
        .I1(\bank_reg[0][3]_15 [0]),
        .I2(\bank_reg[3][3]_12 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [0]),
        .O(\coef[3][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][1]_i_1 
       (.I0(\bank_reg[1][3]_14 [1]),
        .I1(\bank_reg[0][3]_15 [1]),
        .I2(\bank_reg[3][3]_12 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [1]),
        .O(\coef[3][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][2]_i_1 
       (.I0(\bank_reg[1][3]_14 [2]),
        .I1(\bank_reg[0][3]_15 [2]),
        .I2(\bank_reg[3][3]_12 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [2]),
        .O(\coef[3][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][3]_i_1 
       (.I0(\bank_reg[1][3]_14 [3]),
        .I1(\bank_reg[0][3]_15 [3]),
        .I2(\bank_reg[3][3]_12 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [3]),
        .O(\coef[3][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][4]_i_1 
       (.I0(\bank_reg[1][3]_14 [4]),
        .I1(\bank_reg[0][3]_15 [4]),
        .I2(\bank_reg[3][3]_12 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [4]),
        .O(\coef[3][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][5]_i_1 
       (.I0(\bank_reg[1][3]_14 [5]),
        .I1(\bank_reg[0][3]_15 [5]),
        .I2(\bank_reg[3][3]_12 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [5]),
        .O(\coef[3][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][6]_i_1 
       (.I0(\bank_reg[1][3]_14 [6]),
        .I1(\bank_reg[0][3]_15 [6]),
        .I2(\bank_reg[3][3]_12 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [6]),
        .O(\coef[3][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[3][7]_i_1 
       (.I0(\bank_reg[1][3]_14 [7]),
        .I1(\bank_reg[0][3]_15 [7]),
        .I2(\bank_reg[3][3]_12 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][3]_13 [7]),
        .O(\coef[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][0]_i_1 
       (.I0(\bank_reg[1][4]_18 [0]),
        .I1(\bank_reg[0][4]_19 [0]),
        .I2(\bank_reg[3][4]_16 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [0]),
        .O(\coef[4][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][1]_i_1 
       (.I0(\bank_reg[1][4]_18 [1]),
        .I1(\bank_reg[0][4]_19 [1]),
        .I2(\bank_reg[3][4]_16 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [1]),
        .O(\coef[4][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][2]_i_1 
       (.I0(\bank_reg[1][4]_18 [2]),
        .I1(\bank_reg[0][4]_19 [2]),
        .I2(\bank_reg[3][4]_16 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [2]),
        .O(\coef[4][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][3]_i_1 
       (.I0(\bank_reg[1][4]_18 [3]),
        .I1(\bank_reg[0][4]_19 [3]),
        .I2(\bank_reg[3][4]_16 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [3]),
        .O(\coef[4][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][4]_i_1 
       (.I0(\bank_reg[1][4]_18 [4]),
        .I1(\bank_reg[0][4]_19 [4]),
        .I2(\bank_reg[3][4]_16 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [4]),
        .O(\coef[4][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][5]_i_1 
       (.I0(\bank_reg[1][4]_18 [5]),
        .I1(\bank_reg[0][4]_19 [5]),
        .I2(\bank_reg[3][4]_16 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [5]),
        .O(\coef[4][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][6]_i_1 
       (.I0(\bank_reg[1][4]_18 [6]),
        .I1(\bank_reg[0][4]_19 [6]),
        .I2(\bank_reg[3][4]_16 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [6]),
        .O(\coef[4][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[4][7]_i_1 
       (.I0(\bank_reg[1][4]_18 [7]),
        .I1(\bank_reg[0][4]_19 [7]),
        .I2(\bank_reg[3][4]_16 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][4]_17 [7]),
        .O(\coef[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][0]_i_1 
       (.I0(\bank_reg[1][5]_22 [0]),
        .I1(\bank_reg[0][5]_23 [0]),
        .I2(\bank_reg[3][5]_20 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [0]),
        .O(\coef[5][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][1]_i_1 
       (.I0(\bank_reg[1][5]_22 [1]),
        .I1(\bank_reg[0][5]_23 [1]),
        .I2(\bank_reg[3][5]_20 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [1]),
        .O(\coef[5][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][2]_i_1 
       (.I0(\bank_reg[1][5]_22 [2]),
        .I1(\bank_reg[0][5]_23 [2]),
        .I2(\bank_reg[3][5]_20 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [2]),
        .O(\coef[5][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][3]_i_1 
       (.I0(\bank_reg[1][5]_22 [3]),
        .I1(\bank_reg[0][5]_23 [3]),
        .I2(\bank_reg[3][5]_20 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [3]),
        .O(\coef[5][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][4]_i_1 
       (.I0(\bank_reg[1][5]_22 [4]),
        .I1(\bank_reg[0][5]_23 [4]),
        .I2(\bank_reg[3][5]_20 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [4]),
        .O(\coef[5][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][5]_i_1 
       (.I0(\bank_reg[1][5]_22 [5]),
        .I1(\bank_reg[0][5]_23 [5]),
        .I2(\bank_reg[3][5]_20 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [5]),
        .O(\coef[5][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][6]_i_1 
       (.I0(\bank_reg[1][5]_22 [6]),
        .I1(\bank_reg[0][5]_23 [6]),
        .I2(\bank_reg[3][5]_20 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [6]),
        .O(\coef[5][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[5][7]_i_1 
       (.I0(\bank_reg[1][5]_22 [7]),
        .I1(\bank_reg[0][5]_23 [7]),
        .I2(\bank_reg[3][5]_20 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][5]_21 [7]),
        .O(\coef[5][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][0]_i_1 
       (.I0(\bank_reg[1][6]_26 [0]),
        .I1(\bank_reg[0][6]_27 [0]),
        .I2(\bank_reg[3][6]_24 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [0]),
        .O(\coef[6][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][1]_i_1 
       (.I0(\bank_reg[1][6]_26 [1]),
        .I1(\bank_reg[0][6]_27 [1]),
        .I2(\bank_reg[3][6]_24 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [1]),
        .O(\coef[6][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][2]_i_1 
       (.I0(\bank_reg[1][6]_26 [2]),
        .I1(\bank_reg[0][6]_27 [2]),
        .I2(\bank_reg[3][6]_24 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [2]),
        .O(\coef[6][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][3]_i_1 
       (.I0(\bank_reg[1][6]_26 [3]),
        .I1(\bank_reg[0][6]_27 [3]),
        .I2(\bank_reg[3][6]_24 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [3]),
        .O(\coef[6][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][4]_i_1 
       (.I0(\bank_reg[1][6]_26 [4]),
        .I1(\bank_reg[0][6]_27 [4]),
        .I2(\bank_reg[3][6]_24 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [4]),
        .O(\coef[6][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][5]_i_1 
       (.I0(\bank_reg[1][6]_26 [5]),
        .I1(\bank_reg[0][6]_27 [5]),
        .I2(\bank_reg[3][6]_24 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [5]),
        .O(\coef[6][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][6]_i_1 
       (.I0(\bank_reg[1][6]_26 [6]),
        .I1(\bank_reg[0][6]_27 [6]),
        .I2(\bank_reg[3][6]_24 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [6]),
        .O(\coef[6][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[6][7]_i_1 
       (.I0(\bank_reg[1][6]_26 [7]),
        .I1(\bank_reg[0][6]_27 [7]),
        .I2(\bank_reg[3][6]_24 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][6]_25 [7]),
        .O(\coef[6][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][0]_i_1 
       (.I0(\bank_reg[1][7]_30 [0]),
        .I1(\bank_reg[0][7]_31 [0]),
        .I2(\bank_reg[3][7]_28 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [0]),
        .O(\coef[7][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][1]_i_1 
       (.I0(\bank_reg[1][7]_30 [1]),
        .I1(\bank_reg[0][7]_31 [1]),
        .I2(\bank_reg[3][7]_28 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [1]),
        .O(\coef[7][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][2]_i_1 
       (.I0(\bank_reg[1][7]_30 [2]),
        .I1(\bank_reg[0][7]_31 [2]),
        .I2(\bank_reg[3][7]_28 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [2]),
        .O(\coef[7][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][3]_i_1 
       (.I0(\bank_reg[1][7]_30 [3]),
        .I1(\bank_reg[0][7]_31 [3]),
        .I2(\bank_reg[3][7]_28 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [3]),
        .O(\coef[7][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][4]_i_1 
       (.I0(\bank_reg[1][7]_30 [4]),
        .I1(\bank_reg[0][7]_31 [4]),
        .I2(\bank_reg[3][7]_28 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [4]),
        .O(\coef[7][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][5]_i_1 
       (.I0(\bank_reg[1][7]_30 [5]),
        .I1(\bank_reg[0][7]_31 [5]),
        .I2(\bank_reg[3][7]_28 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [5]),
        .O(\coef[7][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][6]_i_1 
       (.I0(\bank_reg[1][7]_30 [6]),
        .I1(\bank_reg[0][7]_31 [6]),
        .I2(\bank_reg[3][7]_28 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [6]),
        .O(\coef[7][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[7][7]_i_1 
       (.I0(\bank_reg[1][7]_30 [7]),
        .I1(\bank_reg[0][7]_31 [7]),
        .I2(\bank_reg[3][7]_28 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][7]_29 [7]),
        .O(\coef[7][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][0]_i_1 
       (.I0(\bank_reg[1][8]_34 [0]),
        .I1(\bank_reg[0][8]_35 [0]),
        .I2(\bank_reg[3][8]_32 [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [0]),
        .O(\coef[8][0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][1]_i_1 
       (.I0(\bank_reg[1][8]_34 [1]),
        .I1(\bank_reg[0][8]_35 [1]),
        .I2(\bank_reg[3][8]_32 [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [1]),
        .O(\coef[8][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][2]_i_1 
       (.I0(\bank_reg[1][8]_34 [2]),
        .I1(\bank_reg[0][8]_35 [2]),
        .I2(\bank_reg[3][8]_32 [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [2]),
        .O(\coef[8][2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][3]_i_1 
       (.I0(\bank_reg[1][8]_34 [3]),
        .I1(\bank_reg[0][8]_35 [3]),
        .I2(\bank_reg[3][8]_32 [3]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [3]),
        .O(\coef[8][3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][4]_i_1 
       (.I0(\bank_reg[1][8]_34 [4]),
        .I1(\bank_reg[0][8]_35 [4]),
        .I2(\bank_reg[3][8]_32 [4]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [4]),
        .O(\coef[8][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][5]_i_1 
       (.I0(\bank_reg[1][8]_34 [5]),
        .I1(\bank_reg[0][8]_35 [5]),
        .I2(\bank_reg[3][8]_32 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [5]),
        .O(\coef[8][5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][6]_i_1 
       (.I0(\bank_reg[1][8]_34 [6]),
        .I1(\bank_reg[0][8]_35 [6]),
        .I2(\bank_reg[3][8]_32 [6]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [6]),
        .O(\coef[8][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \coef[8][7]_i_1 
       (.I0(\bank_reg[1][8]_34 [7]),
        .I1(\bank_reg[0][8]_35 [7]),
        .I2(\bank_reg[3][8]_32 [7]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\bank_reg[2][8]_33 [7]),
        .O(\coef[8][7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[0]),
        .Q(\coef[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[1]),
        .Q(\coef[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[2]),
        .Q(\coef[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[3]),
        .Q(\coef[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[4]),
        .Q(\coef[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[5]),
        .Q(\coef[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[6]),
        .Q(\coef[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[0][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(p_0_in[7]),
        .Q(\coef[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][0]_i_1_n_0 ),
        .Q(\coef[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][1]_i_1_n_0 ),
        .Q(\coef[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][2]_i_1_n_0 ),
        .Q(\coef[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][3]_i_1_n_0 ),
        .Q(\coef[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][4]_i_1_n_0 ),
        .Q(\coef[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][5]_i_1_n_0 ),
        .Q(\coef[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][6]_i_1_n_0 ),
        .Q(\coef[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[1][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[1][7]_i_1_n_0 ),
        .Q(\coef[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][0]_i_1_n_0 ),
        .Q(\coef[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][1]_i_1_n_0 ),
        .Q(\coef[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][2]_i_1_n_0 ),
        .Q(\coef[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][3]_i_1_n_0 ),
        .Q(\coef[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][4]_i_1_n_0 ),
        .Q(\coef[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][5]_i_1_n_0 ),
        .Q(\coef[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][6]_i_1_n_0 ),
        .Q(\coef[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[2][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[2][7]_i_1_n_0 ),
        .Q(\coef[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][0]_i_1_n_0 ),
        .Q(\coef[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][1]_i_1_n_0 ),
        .Q(\coef[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][2]_i_1_n_0 ),
        .Q(\coef[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][3]_i_1_n_0 ),
        .Q(\coef[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][4]_i_1_n_0 ),
        .Q(\coef[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][5]_i_1_n_0 ),
        .Q(\coef[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][6]_i_1_n_0 ),
        .Q(\coef[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[3][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[3][7]_i_1_n_0 ),
        .Q(\coef[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][0]_i_1_n_0 ),
        .Q(\coef[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][1]_i_1_n_0 ),
        .Q(\coef[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][2]_i_1_n_0 ),
        .Q(\coef[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][3]_i_1_n_0 ),
        .Q(\coef[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][4]_i_1_n_0 ),
        .Q(\coef[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][5]_i_1_n_0 ),
        .Q(\coef[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][6]_i_1_n_0 ),
        .Q(\coef[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[4][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[4][7]_i_1_n_0 ),
        .Q(\coef[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][0]_i_1_n_0 ),
        .Q(\coef[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][1]_i_1_n_0 ),
        .Q(\coef[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][2]_i_1_n_0 ),
        .Q(\coef[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][3]_i_1_n_0 ),
        .Q(\coef[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][4]_i_1_n_0 ),
        .Q(\coef[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][5]_i_1_n_0 ),
        .Q(\coef[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][6]_i_1_n_0 ),
        .Q(\coef[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[5][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_1),
        .D(\coef[5][7]_i_1_n_0 ),
        .Q(\coef[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][0]_i_1_n_0 ),
        .Q(\coef[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][1]_i_1_n_0 ),
        .Q(\coef[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][2]_i_1_n_0 ),
        .Q(\coef[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][3]_i_1_n_0 ),
        .Q(\coef[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][4]_i_1_n_0 ),
        .Q(\coef[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][5]_i_1_n_0 ),
        .Q(\coef[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][6]_i_1_n_0 ),
        .Q(\coef[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[6][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[6][7]_i_1_n_0 ),
        .Q(\coef[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][0]_i_1_n_0 ),
        .Q(\coef[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][1]_i_1_n_0 ),
        .Q(\coef[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][2]_i_1_n_0 ),
        .Q(\coef[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][3]_i_1_n_0 ),
        .Q(\coef[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][4]_i_1_n_0 ),
        .Q(\coef[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][5]_i_1_n_0 ),
        .Q(\coef[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][6]_i_1_n_0 ),
        .Q(\coef[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[7][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[7][7]_i_1_n_0 ),
        .Q(\coef[7] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][0]_i_1_n_0 ),
        .Q(\coef[8] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][1]_i_1_n_0 ),
        .Q(\coef[8] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][2]_i_1_n_0 ),
        .Q(\coef[8] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][3]_i_1_n_0 ),
        .Q(\coef[8] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][4]_i_1_n_0 ),
        .Q(\coef[8] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][5]_i_1_n_0 ),
        .Q(\coef[8] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][6]_i_1_n_0 ),
        .Q(\coef[8] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \coef_reg[8][7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_n_2),
        .D(\coef[8][7]_i_1_n_0 ),
        .Q(\coef[8] [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \col_cnt[4]_i_3 
       (.I0(rst_n),
        .O(\bank_reg[0][2][0]_0 ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_16 
       (.I0(DI[3]),
        .I1(\coef[0] [1]),
        .I2(\win[0][0] [6]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][5] ),
        .I4(\win[0][0] [7]),
        .I5(\coef[0] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_17 
       (.I0(DI[2]),
        .I1(\coef[0] [1]),
        .I2(\win[0][0] [5]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][4] ),
        .I4(\win[0][0] [6]),
        .I5(\coef[0] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_18 
       (.I0(DI[1]),
        .I1(\coef[0] [1]),
        .I2(\win[0][0] [4]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][3] ),
        .I4(\win[0][0] [5]),
        .I5(\coef[0] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_19 
       (.I0(DI[0]),
        .I1(\coef[0] [1]),
        .I2(\win[0][0] [3]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][2] ),
        .I4(\win[0][0] [4]),
        .I5(\coef[0] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_25 
       (.I0(\coef[0] [3]),
        .I1(\win[0][0] [1]),
        .I2(\coef[0] [4]),
        .I3(\win[0][0] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_18 
       (.I0(\coef[0] [0]),
        .I1(\win[0][0] [5]),
        .I2(\win[0][0] [6]),
        .I3(\coef[0] [2]),
        .I4(\win[0][0] [7]),
        .I5(\coef[0] [1]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_19 
       (.I0(\coef[0] [7]),
        .I1(\win[0][0] [2]),
        .I2(\coef[0] [6]),
        .I3(\win[0][0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_20 
       (.I0(\coef[0] [7]),
        .I1(\win[0][0] [1]),
        .I2(\coef[0] [6]),
        .I3(\win[0][0] [2]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_21 
       (.I0(\coef[0] [7]),
        .I1(\win[0][0] [0]),
        .I2(\coef[0] [6]),
        .I3(\win[0][0] [1]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[0][5]_0 [3]),
        .I1(\coef[0] [4]),
        .I2(\win[0][0] [6]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][5]_0 ),
        .I4(\win[0][0] [7]),
        .I5(\coef[0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[0][5]_0 [2]),
        .I1(\coef[0] [4]),
        .I2(\win[0][0] [5]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][4]_0 ),
        .I4(\win[0][0] [6]),
        .I5(\coef[0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[0][5]_0 [1]),
        .I1(\coef[0] [4]),
        .I2(\win[0][0] [4]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][3]_0 ),
        .I4(\win[0][0] [5]),
        .I5(\coef[0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[0][5]_0 [0]),
        .I1(\coef[0] [4]),
        .I2(\win[0][0] [3]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][2]_0 ),
        .I4(\win[0][0] [4]),
        .I5(\coef[0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_6 
       (.I0(O),
        .I1(\coef_reg[0][7]_0 [0]),
        .I2(\coef_reg[0][7]_0 [1]),
        .I3(CO),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_10 
       (.I0(\coef[0] [7]),
        .I1(\win[0][0] [3]),
        .I2(\coef[0] [6]),
        .I3(\win[0][0] [4]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_11 
       (.I0(\coef[0] [6]),
        .I1(\win[0][0] [6]),
        .I2(\coef[0] [7]),
        .I3(\win[0][0] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_20 
       (.I0(\coef[0] [3]),
        .I1(\win[0][0] [5]),
        .I2(\win[0][0] [6]),
        .I3(\coef[0] [5]),
        .I4(\win[0][0] [7]),
        .I5(\coef[0] [4]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_3 
       (.I0(CO),
        .I1(\coef_reg[0][7]_0 [1]),
        .I2(\g_row[0].g_tap[0].taps_reg[0][0][7] ),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_7 
       (.I0(\coef[0] [7]),
        .I1(\win[0][0] [6]),
        .I2(\coef[0] [6]),
        .I3(\win[0][0] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_8 
       (.I0(\coef[0] [7]),
        .I1(\win[0][0] [5]),
        .I2(\coef[0] [6]),
        .I3(\win[0][0] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_9 
       (.I0(\coef[0] [7]),
        .I1(\win[0][0] [4]),
        .I2(\coef[0] [6]),
        .I3(\win[0][0] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_7 
       (.I0(\coef[0] [0]),
        .I1(\win[0][0] [1]),
        .I2(\coef[0] [1]),
        .I3(\win[0][0] [0]),
        .O(S));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[1][2]_0 [3]),
        .I1(\coef[1] [1]),
        .I2(\win[0][1] [6]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][5] ),
        .I4(\win[0][1] [7]),
        .I5(\coef[1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[1][2]_0 [2]),
        .I1(\coef[1] [1]),
        .I2(\win[0][1] [5]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][4] ),
        .I4(\win[0][1] [6]),
        .I5(\coef[1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[1][2]_0 [1]),
        .I1(\coef[1] [1]),
        .I2(\win[0][1] [4]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][3] ),
        .I4(\win[0][1] [5]),
        .I5(\coef[1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[1][2]_0 [0]),
        .I1(\coef[1] [1]),
        .I2(\win[0][1] [3]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][2] ),
        .I4(\win[0][1] [4]),
        .I5(\coef[1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_25 
       (.I0(\coef[1] [3]),
        .I1(\win[0][1] [1]),
        .I2(\coef[1] [4]),
        .I3(\win[0][1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_18 
       (.I0(\coef[1] [0]),
        .I1(\win[0][1] [5]),
        .I2(\win[0][1] [6]),
        .I3(\coef[1] [2]),
        .I4(\win[0][1] [7]),
        .I5(\coef[1] [1]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_19 
       (.I0(\coef[1] [7]),
        .I1(\win[0][1] [2]),
        .I2(\coef[1] [6]),
        .I3(\win[0][1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_20 
       (.I0(\coef[1] [7]),
        .I1(\win[0][1] [1]),
        .I2(\coef[1] [6]),
        .I3(\win[0][1] [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_21 
       (.I0(\coef[1] [7]),
        .I1(\win[0][1] [0]),
        .I2(\coef[1] [6]),
        .I3(\win[0][1] [1]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[1][5]_0 [3]),
        .I1(\coef[1] [4]),
        .I2(\win[0][1] [6]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][5]_0 ),
        .I4(\win[0][1] [7]),
        .I5(\coef[1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[1][5]_0 [2]),
        .I1(\coef[1] [4]),
        .I2(\win[0][1] [5]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][4]_0 ),
        .I4(\win[0][1] [6]),
        .I5(\coef[1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[1][5]_0 [1]),
        .I1(\coef[1] [4]),
        .I2(\win[0][1] [4]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][3]_0 ),
        .I4(\win[0][1] [5]),
        .I5(\coef[1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[1][5]_0 [0]),
        .I1(\coef[1] [4]),
        .I2(\win[0][1] [3]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][2]_0 ),
        .I4(\win[0][1] [4]),
        .I5(\coef[1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[1][5]_1 ),
        .I1(\coef_reg[1][7]_0 [0]),
        .I2(\coef_reg[1][7]_0 [1]),
        .I3(\coef_reg[1][5]_2 ),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_10 
       (.I0(\coef[1] [7]),
        .I1(\win[0][1] [3]),
        .I2(\coef[1] [6]),
        .I3(\win[0][1] [4]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_11 
       (.I0(\coef[1] [6]),
        .I1(\win[0][1] [6]),
        .I2(\coef[1] [7]),
        .I3(\win[0][1] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_20 
       (.I0(\coef[1] [3]),
        .I1(\win[0][1] [5]),
        .I2(\win[0][1] [6]),
        .I3(\coef[1] [5]),
        .I4(\win[0][1] [7]),
        .I5(\coef[1] [4]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_3 
       (.I0(\coef_reg[1][5]_2 ),
        .I1(\coef_reg[1][7]_0 [1]),
        .I2(\g_row[0].g_tap[1].taps_reg[0][1][7] ),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_7 
       (.I0(\coef[1] [7]),
        .I1(\win[0][1] [6]),
        .I2(\coef[1] [6]),
        .I3(\win[0][1] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_8 
       (.I0(\coef[1] [7]),
        .I1(\win[0][1] [5]),
        .I2(\coef[1] [6]),
        .I3(\win[0][1] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_9 
       (.I0(\coef[1] [7]),
        .I1(\win[0][1] [4]),
        .I2(\coef[1] [6]),
        .I3(\win[0][1] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_7 
       (.I0(\coef[1] [0]),
        .I1(\win[0][1] [1]),
        .I2(\coef[1] [1]),
        .I3(\win[0][1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[2] ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[2][2]_0 [3]),
        .I1(\coef[2] [1]),
        .I2(\win[0][2] [6]),
        .I3(\g_row[0].taps_reg[0][2][5] ),
        .I4(\win[0][2] [7]),
        .I5(\coef[2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[2][2]_0 [2]),
        .I1(\coef[2] [1]),
        .I2(\win[0][2] [5]),
        .I3(\g_row[0].taps_reg[0][2][4] ),
        .I4(\win[0][2] [6]),
        .I5(\coef[2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[2][2]_0 [1]),
        .I1(\coef[2] [1]),
        .I2(\win[0][2] [4]),
        .I3(\g_row[0].taps_reg[0][2][3] ),
        .I4(\win[0][2] [5]),
        .I5(\coef[2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[2][2]_0 [0]),
        .I1(\coef[2] [1]),
        .I2(\win[0][2] [3]),
        .I3(\g_row[0].taps_reg[0][2][2] ),
        .I4(\win[0][2] [4]),
        .I5(\coef[2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_25 
       (.I0(\coef[2] [3]),
        .I1(\win[0][2] [1]),
        .I2(\coef[2] [4]),
        .I3(\win[0][2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_18 
       (.I0(\coef[2] [0]),
        .I1(\win[0][2] [5]),
        .I2(\win[0][2] [6]),
        .I3(\coef[2] [2]),
        .I4(\win[0][2] [7]),
        .I5(\coef[2] [1]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_19 
       (.I0(\coef[2] [7]),
        .I1(\win[0][2] [2]),
        .I2(\coef[2] [6]),
        .I3(\win[0][2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_20 
       (.I0(\coef[2] [7]),
        .I1(\win[0][2] [1]),
        .I2(\coef[2] [6]),
        .I3(\win[0][2] [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_21 
       (.I0(\coef[2] [7]),
        .I1(\win[0][2] [0]),
        .I2(\coef[2] [6]),
        .I3(\win[0][2] [1]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[2][5]_0 [3]),
        .I1(\coef[2] [4]),
        .I2(\win[0][2] [6]),
        .I3(\g_row[0].taps_reg[0][2][5]_0 ),
        .I4(\win[0][2] [7]),
        .I5(\coef[2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[2][5]_0 [2]),
        .I1(\coef[2] [4]),
        .I2(\win[0][2] [5]),
        .I3(\g_row[0].taps_reg[0][2][4]_0 ),
        .I4(\win[0][2] [6]),
        .I5(\coef[2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[2][5]_0 [1]),
        .I1(\coef[2] [4]),
        .I2(\win[0][2] [4]),
        .I3(\g_row[0].taps_reg[0][2][3]_0 ),
        .I4(\win[0][2] [5]),
        .I5(\coef[2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[2][5]_0 [0]),
        .I1(\coef[2] [4]),
        .I2(\win[0][2] [3]),
        .I3(\g_row[0].taps_reg[0][2][2]_0 ),
        .I4(\win[0][2] [4]),
        .I5(\coef[2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[2][5]_1 ),
        .I1(\coef_reg[2][7]_0 [0]),
        .I2(\coef_reg[2][7]_0 [1]),
        .I3(\coef_reg[2][5]_2 ),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_10 
       (.I0(\coef[2] [7]),
        .I1(\win[0][2] [3]),
        .I2(\coef[2] [6]),
        .I3(\win[0][2] [4]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_11 
       (.I0(\coef[2] [6]),
        .I1(\win[0][2] [6]),
        .I2(\coef[2] [7]),
        .I3(\win[0][2] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_20 
       (.I0(\coef[2] [3]),
        .I1(\win[0][2] [5]),
        .I2(\win[0][2] [6]),
        .I3(\coef[2] [5]),
        .I4(\win[0][2] [7]),
        .I5(\coef[2] [4]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_3 
       (.I0(\coef_reg[2][5]_2 ),
        .I1(\coef_reg[2][7]_0 [1]),
        .I2(\g_row[0].taps_reg[0][2][7] ),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_7 
       (.I0(\coef[2] [7]),
        .I1(\win[0][2] [6]),
        .I2(\coef[2] [6]),
        .I3(\win[0][2] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_8 
       (.I0(\coef[2] [7]),
        .I1(\win[0][2] [5]),
        .I2(\coef[2] [6]),
        .I3(\win[0][2] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_9 
       (.I0(\coef[2] [7]),
        .I1(\win[0][2] [4]),
        .I2(\coef[2] [6]),
        .I3(\win[0][2] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_7 
       (.I0(\coef[2] [0]),
        .I1(\win[0][2] [1]),
        .I2(\coef[2] [1]),
        .I3(\win[0][2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[2] ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[3][2]_0 [3]),
        .I1(\coef[3] [1]),
        .I2(\win[1][0] [6]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][5] ),
        .I4(\win[1][0] [7]),
        .I5(\coef[3] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[3][2]_0 [2]),
        .I1(\coef[3] [1]),
        .I2(\win[1][0] [5]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][4] ),
        .I4(\win[1][0] [6]),
        .I5(\coef[3] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[3][2]_0 [1]),
        .I1(\coef[3] [1]),
        .I2(\win[1][0] [4]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][3] ),
        .I4(\win[1][0] [5]),
        .I5(\coef[3] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[3][2]_0 [0]),
        .I1(\coef[3] [1]),
        .I2(\win[1][0] [3]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][2] ),
        .I4(\win[1][0] [4]),
        .I5(\coef[3] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_25 
       (.I0(\coef[3] [3]),
        .I1(\win[1][0] [1]),
        .I2(\coef[3] [4]),
        .I3(\win[1][0] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_18 
       (.I0(\coef[3] [0]),
        .I1(\win[1][0] [5]),
        .I2(\win[1][0] [6]),
        .I3(\coef[3] [2]),
        .I4(\win[1][0] [7]),
        .I5(\coef[3] [1]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_19 
       (.I0(\coef[3] [7]),
        .I1(\win[1][0] [2]),
        .I2(\coef[3] [6]),
        .I3(\win[1][0] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_20 
       (.I0(\coef[3] [7]),
        .I1(\win[1][0] [1]),
        .I2(\coef[3] [6]),
        .I3(\win[1][0] [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_21 
       (.I0(\coef[3] [7]),
        .I1(\win[1][0] [0]),
        .I2(\coef[3] [6]),
        .I3(\win[1][0] [1]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[3][5]_0 [3]),
        .I1(\coef[3] [4]),
        .I2(\win[1][0] [6]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][5]_0 ),
        .I4(\win[1][0] [7]),
        .I5(\coef[3] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[3][5]_0 [2]),
        .I1(\coef[3] [4]),
        .I2(\win[1][0] [5]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][4]_0 ),
        .I4(\win[1][0] [6]),
        .I5(\coef[3] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[3][5]_0 [1]),
        .I1(\coef[3] [4]),
        .I2(\win[1][0] [4]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][3]_0 ),
        .I4(\win[1][0] [5]),
        .I5(\coef[3] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[3][5]_0 [0]),
        .I1(\coef[3] [4]),
        .I2(\win[1][0] [3]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][2]_0 ),
        .I4(\win[1][0] [4]),
        .I5(\coef[3] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[3][5]_1 ),
        .I1(\coef_reg[3][7]_0 [0]),
        .I2(\coef_reg[3][7]_0 [1]),
        .I3(\coef_reg[3][5]_2 ),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_10 
       (.I0(\coef[3] [7]),
        .I1(\win[1][0] [3]),
        .I2(\coef[3] [6]),
        .I3(\win[1][0] [4]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_11 
       (.I0(\coef[3] [6]),
        .I1(\win[1][0] [6]),
        .I2(\coef[3] [7]),
        .I3(\win[1][0] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_20 
       (.I0(\coef[3] [3]),
        .I1(\win[1][0] [5]),
        .I2(\win[1][0] [6]),
        .I3(\coef[3] [5]),
        .I4(\win[1][0] [7]),
        .I5(\coef[3] [4]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_3 
       (.I0(\coef_reg[3][5]_2 ),
        .I1(\coef_reg[3][7]_0 [1]),
        .I2(\g_row[1].g_tap[0].taps_reg[1][0][7] ),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_7 
       (.I0(\coef[3] [7]),
        .I1(\win[1][0] [6]),
        .I2(\coef[3] [6]),
        .I3(\win[1][0] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_8 
       (.I0(\coef[3] [7]),
        .I1(\win[1][0] [5]),
        .I2(\coef[3] [6]),
        .I3(\win[1][0] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_9 
       (.I0(\coef[3] [7]),
        .I1(\win[1][0] [4]),
        .I2(\coef[3] [6]),
        .I3(\win[1][0] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_7 
       (.I0(\coef[3] [0]),
        .I1(\win[1][0] [1]),
        .I2(\coef[3] [1]),
        .I3(\win[1][0] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[2] ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[4][2]_0 [3]),
        .I1(\coef[4] [1]),
        .I2(\win[1][1] [6]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][5] ),
        .I4(\win[1][1] [7]),
        .I5(\coef[4] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[4][2]_0 [2]),
        .I1(\coef[4] [1]),
        .I2(\win[1][1] [5]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][4] ),
        .I4(\win[1][1] [6]),
        .I5(\coef[4] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[4][2]_0 [1]),
        .I1(\coef[4] [1]),
        .I2(\win[1][1] [4]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][3] ),
        .I4(\win[1][1] [5]),
        .I5(\coef[4] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[4][2]_0 [0]),
        .I1(\coef[4] [1]),
        .I2(\win[1][1] [3]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][2] ),
        .I4(\win[1][1] [4]),
        .I5(\coef[4] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_25 
       (.I0(\coef[4] [3]),
        .I1(\win[1][1] [1]),
        .I2(\coef[4] [4]),
        .I3(\win[1][1] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_18 
       (.I0(\coef[4] [0]),
        .I1(\win[1][1] [5]),
        .I2(\win[1][1] [6]),
        .I3(\coef[4] [2]),
        .I4(\win[1][1] [7]),
        .I5(\coef[4] [1]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_19 
       (.I0(\coef[4] [7]),
        .I1(\win[1][1] [2]),
        .I2(\coef[4] [6]),
        .I3(\win[1][1] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_20 
       (.I0(\coef[4] [7]),
        .I1(\win[1][1] [1]),
        .I2(\coef[4] [6]),
        .I3(\win[1][1] [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_21 
       (.I0(\coef[4] [7]),
        .I1(\win[1][1] [0]),
        .I2(\coef[4] [6]),
        .I3(\win[1][1] [1]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[4][5]_0 [3]),
        .I1(\coef[4] [4]),
        .I2(\win[1][1] [6]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][5]_0 ),
        .I4(\win[1][1] [7]),
        .I5(\coef[4] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[4][5]_0 [2]),
        .I1(\coef[4] [4]),
        .I2(\win[1][1] [5]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][4]_0 ),
        .I4(\win[1][1] [6]),
        .I5(\coef[4] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[4][5]_0 [1]),
        .I1(\coef[4] [4]),
        .I2(\win[1][1] [4]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][3]_0 ),
        .I4(\win[1][1] [5]),
        .I5(\coef[4] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[4][5]_0 [0]),
        .I1(\coef[4] [4]),
        .I2(\win[1][1] [3]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][2]_0 ),
        .I4(\win[1][1] [4]),
        .I5(\coef[4] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[4][5]_1 ),
        .I1(\coef_reg[4][7]_0 [0]),
        .I2(\coef_reg[4][7]_0 [1]),
        .I3(\coef_reg[4][5]_2 ),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_10 
       (.I0(\coef[4] [7]),
        .I1(\win[1][1] [4]),
        .I2(\coef[4] [6]),
        .I3(\win[1][1] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_11 
       (.I0(\coef[4] [7]),
        .I1(\win[1][1] [3]),
        .I2(\coef[4] [6]),
        .I3(\win[1][1] [4]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_12 
       (.I0(\coef[4] [6]),
        .I1(\win[1][1] [6]),
        .I2(\coef[4] [7]),
        .I3(\win[1][1] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_21 
       (.I0(\coef[4] [3]),
        .I1(\win[1][1] [5]),
        .I2(\win[1][1] [6]),
        .I3(\coef[4] [5]),
        .I4(\win[1][1] [7]),
        .I5(\coef[4] [4]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_4 
       (.I0(\coef_reg[4][5]_2 ),
        .I1(\coef_reg[4][7]_0 [1]),
        .I2(\g_row[1].g_tap[1].taps_reg[1][1][7] ),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_8 
       (.I0(\coef[4] [7]),
        .I1(\win[1][1] [6]),
        .I2(\coef[4] [6]),
        .I3(\win[1][1] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_9 
       (.I0(\coef[4] [7]),
        .I1(\win[1][1] [5]),
        .I2(\coef[4] [6]),
        .I3(\win[1][1] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_7 
       (.I0(\coef[4] [0]),
        .I1(\win[1][1] [1]),
        .I2(\coef[4] [1]),
        .I3(\win[1][1] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[2] ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[5][2]_0 [3]),
        .I1(\coef[5] [1]),
        .I2(\win[1][2] [6]),
        .I3(\g_row[1].taps_reg[1][2][5] ),
        .I4(\win[1][2] [7]),
        .I5(\coef[5] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[5][2]_0 [2]),
        .I1(\coef[5] [1]),
        .I2(\win[1][2] [5]),
        .I3(\g_row[1].taps_reg[1][2][4] ),
        .I4(\win[1][2] [6]),
        .I5(\coef[5] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[5][2]_0 [1]),
        .I1(\coef[5] [1]),
        .I2(\win[1][2] [4]),
        .I3(\g_row[1].taps_reg[1][2][3] ),
        .I4(\win[1][2] [5]),
        .I5(\coef[5] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[5][2]_0 [0]),
        .I1(\coef[5] [1]),
        .I2(\win[1][2] [3]),
        .I3(\g_row[1].taps_reg[1][2][2] ),
        .I4(\win[1][2] [4]),
        .I5(\coef[5] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_25 
       (.I0(\coef[5] [3]),
        .I1(\win[1][2] [1]),
        .I2(\coef[5] [4]),
        .I3(\win[1][2] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_18 
       (.I0(\coef[5] [0]),
        .I1(\win[1][2] [5]),
        .I2(\win[1][2] [6]),
        .I3(\coef[5] [2]),
        .I4(\win[1][2] [7]),
        .I5(\coef[5] [1]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_19 
       (.I0(\coef[5] [7]),
        .I1(\win[1][2] [2]),
        .I2(\coef[5] [6]),
        .I3(\win[1][2] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_20 
       (.I0(\coef[5] [7]),
        .I1(\win[1][2] [1]),
        .I2(\coef[5] [6]),
        .I3(\win[1][2] [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_21 
       (.I0(\coef[5] [7]),
        .I1(\win[1][2] [0]),
        .I2(\coef[5] [6]),
        .I3(\win[1][2] [1]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[5][5]_0 [3]),
        .I1(\coef[5] [4]),
        .I2(\win[1][2] [6]),
        .I3(\g_row[1].taps_reg[1][2][5]_0 ),
        .I4(\win[1][2] [7]),
        .I5(\coef[5] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[5][5]_0 [2]),
        .I1(\coef[5] [4]),
        .I2(\win[1][2] [5]),
        .I3(\g_row[1].taps_reg[1][2][4]_0 ),
        .I4(\win[1][2] [6]),
        .I5(\coef[5] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[5][5]_0 [1]),
        .I1(\coef[5] [4]),
        .I2(\win[1][2] [4]),
        .I3(\g_row[1].taps_reg[1][2][3]_0 ),
        .I4(\win[1][2] [5]),
        .I5(\coef[5] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[5][5]_0 [0]),
        .I1(\coef[5] [4]),
        .I2(\win[1][2] [3]),
        .I3(\g_row[1].taps_reg[1][2][2]_0 ),
        .I4(\win[1][2] [4]),
        .I5(\coef[5] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[5][5]_1 ),
        .I1(\coef_reg[5][7]_0 [0]),
        .I2(\coef_reg[5][7]_0 [1]),
        .I3(\coef_reg[5][5]_2 ),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_10 
       (.I0(\coef[5] [7]),
        .I1(\win[1][2] [3]),
        .I2(\coef[5] [6]),
        .I3(\win[1][2] [4]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_11 
       (.I0(\coef[5] [6]),
        .I1(\win[1][2] [6]),
        .I2(\coef[5] [7]),
        .I3(\win[1][2] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_20 
       (.I0(\coef[5] [3]),
        .I1(\win[1][2] [5]),
        .I2(\win[1][2] [6]),
        .I3(\coef[5] [5]),
        .I4(\win[1][2] [7]),
        .I5(\coef[5] [4]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_3 
       (.I0(\coef_reg[5][5]_2 ),
        .I1(\coef_reg[5][7]_0 [1]),
        .I2(\g_row[1].taps_reg[1][2][7] ),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_7 
       (.I0(\coef[5] [7]),
        .I1(\win[1][2] [6]),
        .I2(\coef[5] [6]),
        .I3(\win[1][2] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_8 
       (.I0(\coef[5] [7]),
        .I1(\win[1][2] [5]),
        .I2(\coef[5] [6]),
        .I3(\win[1][2] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_9 
       (.I0(\coef[5] [7]),
        .I1(\win[1][2] [4]),
        .I2(\coef[5] [6]),
        .I3(\win[1][2] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_7 
       (.I0(\coef[5] [0]),
        .I1(\win[1][2] [1]),
        .I2(\coef[5] [1]),
        .I3(\win[1][2] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[2] ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[6][2]_0 [3]),
        .I1(\coef[6] [1]),
        .I2(\win[2][0] [6]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][5] ),
        .I4(\win[2][0] [7]),
        .I5(\coef[6] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[6][2]_0 [2]),
        .I1(\coef[6] [1]),
        .I2(\win[2][0] [5]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][4] ),
        .I4(\win[2][0] [6]),
        .I5(\coef[6] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[6][2]_0 [1]),
        .I1(\coef[6] [1]),
        .I2(\win[2][0] [4]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][3] ),
        .I4(\win[2][0] [5]),
        .I5(\coef[6] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[6][2]_0 [0]),
        .I1(\coef[6] [1]),
        .I2(\win[2][0] [3]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][2] ),
        .I4(\win[2][0] [4]),
        .I5(\coef[6] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_25 
       (.I0(\coef[6] [3]),
        .I1(\win[2][0] [1]),
        .I2(\coef[6] [4]),
        .I3(\win[2][0] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_18 
       (.I0(\coef[6] [0]),
        .I1(\win[2][0] [5]),
        .I2(\win[2][0] [6]),
        .I3(\coef[6] [2]),
        .I4(\win[2][0] [7]),
        .I5(\coef[6] [1]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_19 
       (.I0(\coef[6] [7]),
        .I1(\win[2][0] [2]),
        .I2(\coef[6] [6]),
        .I3(\win[2][0] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_20 
       (.I0(\coef[6] [7]),
        .I1(\win[2][0] [1]),
        .I2(\coef[6] [6]),
        .I3(\win[2][0] [2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_21 
       (.I0(\coef[6] [7]),
        .I1(\win[2][0] [0]),
        .I2(\coef[6] [6]),
        .I3(\win[2][0] [1]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[6][5]_0 [3]),
        .I1(\coef[6] [4]),
        .I2(\win[2][0] [6]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][5]_0 ),
        .I4(\win[2][0] [7]),
        .I5(\coef[6] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[6][5]_0 [2]),
        .I1(\coef[6] [4]),
        .I2(\win[2][0] [5]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][4]_0 ),
        .I4(\win[2][0] [6]),
        .I5(\coef[6] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[6][5]_0 [1]),
        .I1(\coef[6] [4]),
        .I2(\win[2][0] [4]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][3]_0 ),
        .I4(\win[2][0] [5]),
        .I5(\coef[6] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[6][5]_0 [0]),
        .I1(\coef[6] [4]),
        .I2(\win[2][0] [3]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][2]_0 ),
        .I4(\win[2][0] [4]),
        .I5(\coef[6] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[6][5]_1 ),
        .I1(\coef_reg[6][7]_0 [0]),
        .I2(\coef_reg[6][7]_0 [1]),
        .I3(\coef_reg[6][5]_2 ),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_10 
       (.I0(\coef[6] [7]),
        .I1(\win[2][0] [3]),
        .I2(\coef[6] [6]),
        .I3(\win[2][0] [4]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_11 
       (.I0(\coef[6] [6]),
        .I1(\win[2][0] [6]),
        .I2(\coef[6] [7]),
        .I3(\win[2][0] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_20 
       (.I0(\coef[6] [3]),
        .I1(\win[2][0] [5]),
        .I2(\win[2][0] [6]),
        .I3(\coef[6] [5]),
        .I4(\win[2][0] [7]),
        .I5(\coef[6] [4]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_3 
       (.I0(\coef_reg[6][5]_2 ),
        .I1(\coef_reg[6][7]_0 [1]),
        .I2(\g_row[2].g_tap[0].taps_reg[2][0][7] ),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_7 
       (.I0(\coef[6] [7]),
        .I1(\win[2][0] [6]),
        .I2(\coef[6] [6]),
        .I3(\win[2][0] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_8 
       (.I0(\coef[6] [7]),
        .I1(\win[2][0] [5]),
        .I2(\coef[6] [6]),
        .I3(\win[2][0] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_9 
       (.I0(\coef[6] [7]),
        .I1(\win[2][0] [4]),
        .I2(\coef[6] [6]),
        .I3(\win[2][0] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_7 
       (.I0(\coef[6] [0]),
        .I1(\win[2][0] [1]),
        .I2(\coef[6] [1]),
        .I3(\win[2][0] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[2] ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[7][2]_0 [3]),
        .I1(\coef[7] [1]),
        .I2(\win[2][1] [6]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][5] ),
        .I4(\win[2][1] [7]),
        .I5(\coef[7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[7][2]_0 [2]),
        .I1(\coef[7] [1]),
        .I2(\win[2][1] [5]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][4] ),
        .I4(\win[2][1] [6]),
        .I5(\coef[7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[7][2]_0 [1]),
        .I1(\coef[7] [1]),
        .I2(\win[2][1] [4]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][3] ),
        .I4(\win[2][1] [5]),
        .I5(\coef[7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[7][2]_0 [0]),
        .I1(\coef[7] [1]),
        .I2(\win[2][1] [3]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][2] ),
        .I4(\win[2][1] [4]),
        .I5(\coef[7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_25 
       (.I0(\coef[7] [3]),
        .I1(\win[2][1] [1]),
        .I2(\coef[7] [4]),
        .I3(\win[2][1] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_18 
       (.I0(\coef[7] [0]),
        .I1(\win[2][1] [5]),
        .I2(\win[2][1] [6]),
        .I3(\coef[7] [2]),
        .I4(\win[2][1] [7]),
        .I5(\coef[7] [1]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_19 
       (.I0(\coef[7] [7]),
        .I1(\win[2][1] [2]),
        .I2(\coef[7] [6]),
        .I3(\win[2][1] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_20 
       (.I0(\coef[7] [7]),
        .I1(\win[2][1] [1]),
        .I2(\coef[7] [6]),
        .I3(\win[2][1] [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_21 
       (.I0(\coef[7] [7]),
        .I1(\win[2][1] [0]),
        .I2(\coef[7] [6]),
        .I3(\win[2][1] [1]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[7][5]_0 [3]),
        .I1(\coef[7] [4]),
        .I2(\win[2][1] [6]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][5]_0 ),
        .I4(\win[2][1] [7]),
        .I5(\coef[7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[7][5]_0 [2]),
        .I1(\coef[7] [4]),
        .I2(\win[2][1] [5]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][4]_0 ),
        .I4(\win[2][1] [6]),
        .I5(\coef[7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[7][5]_0 [1]),
        .I1(\coef[7] [4]),
        .I2(\win[2][1] [4]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][3]_0 ),
        .I4(\win[2][1] [5]),
        .I5(\coef[7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[7][5]_0 [0]),
        .I1(\coef[7] [4]),
        .I2(\win[2][1] [3]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][2]_0 ),
        .I4(\win[2][1] [4]),
        .I5(\coef[7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[7][5]_1 ),
        .I1(\coef_reg[7][7]_0 [0]),
        .I2(\coef_reg[7][7]_0 [1]),
        .I3(\coef_reg[7][5]_2 ),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_10 
       (.I0(\coef[7] [7]),
        .I1(\win[2][1] [3]),
        .I2(\coef[7] [6]),
        .I3(\win[2][1] [4]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_11 
       (.I0(\coef[7] [6]),
        .I1(\win[2][1] [6]),
        .I2(\coef[7] [7]),
        .I3(\win[2][1] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_20 
       (.I0(\coef[7] [3]),
        .I1(\win[2][1] [5]),
        .I2(\win[2][1] [6]),
        .I3(\coef[7] [5]),
        .I4(\win[2][1] [7]),
        .I5(\coef[7] [4]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_3 
       (.I0(\coef_reg[7][5]_2 ),
        .I1(\coef_reg[7][7]_0 [1]),
        .I2(\g_row[2].g_tap[1].taps_reg[2][1][7] ),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_7 
       (.I0(\coef[7] [7]),
        .I1(\win[2][1] [6]),
        .I2(\coef[7] [6]),
        .I3(\win[2][1] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_8 
       (.I0(\coef[7] [7]),
        .I1(\win[2][1] [5]),
        .I2(\coef[7] [6]),
        .I3(\win[2][1] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_9 
       (.I0(\coef[7] [7]),
        .I1(\win[2][1] [4]),
        .I2(\coef[7] [6]),
        .I3(\win[2][1] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_7 
       (.I0(\coef[7] [0]),
        .I1(\win[2][1] [1]),
        .I2(\coef[7] [1]),
        .I3(\win[2][1] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[2] ));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_16 
       (.I0(\coef_reg[8][2]_0 [3]),
        .I1(\coef[8] [1]),
        .I2(\win[2][2] [6]),
        .I3(\g_row[2].taps_reg[2][2][5] ),
        .I4(\win[2][2] [7]),
        .I5(\coef[8] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10] [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_17 
       (.I0(\coef_reg[8][2]_0 [2]),
        .I1(\coef[8] [1]),
        .I2(\win[2][2] [5]),
        .I3(\g_row[2].taps_reg[2][2][4] ),
        .I4(\win[2][2] [6]),
        .I5(\coef[8] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_18 
       (.I0(\coef_reg[8][2]_0 [1]),
        .I1(\coef[8] [1]),
        .I2(\win[2][2] [4]),
        .I3(\g_row[2].taps_reg[2][2][3] ),
        .I4(\win[2][2] [5]),
        .I5(\coef[8] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10] [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_19 
       (.I0(\coef_reg[8][2]_0 [0]),
        .I1(\coef[8] [1]),
        .I2(\win[2][2] [3]),
        .I3(\g_row[2].taps_reg[2][2][2] ),
        .I4(\win[2][2] [4]),
        .I5(\coef[8] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10] [0]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_25 
       (.I0(\coef[8] [3]),
        .I1(\win[2][2] [1]),
        .I2(\coef[8] [4]),
        .I3(\win[2][2] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_18 
       (.I0(\coef[8] [0]),
        .I1(\win[2][2] [5]),
        .I2(\win[2][2] [6]),
        .I3(\coef[8] [2]),
        .I4(\win[2][2] [7]),
        .I5(\coef[8] [1]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[14] ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_19 
       (.I0(\coef[8] [7]),
        .I1(\win[2][2] [2]),
        .I2(\coef[8] [6]),
        .I3(\win[2][2] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 [2]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_20 
       (.I0(\coef[8] [7]),
        .I1(\win[2][2] [1]),
        .I2(\coef[8] [6]),
        .I3(\win[2][2] [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 [1]));
  LUT4 #(
    .INIT(16'hF777)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_21 
       (.I0(\coef[8] [7]),
        .I1(\win[2][2] [0]),
        .I2(\coef[8] [6]),
        .I3(\win[2][2] [1]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 [0]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_30 
       (.I0(\coef_reg[8][5]_0 [3]),
        .I1(\coef[8] [4]),
        .I2(\win[2][2] [6]),
        .I3(\g_row[2].taps_reg[2][2][5]_0 ),
        .I4(\win[2][2] [7]),
        .I5(\coef[8] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_31 
       (.I0(\coef_reg[8][5]_0 [2]),
        .I1(\coef[8] [4]),
        .I2(\win[2][2] [5]),
        .I3(\g_row[2].taps_reg[2][2][4]_0 ),
        .I4(\win[2][2] [6]),
        .I5(\coef[8] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_32 
       (.I0(\coef_reg[8][5]_0 [1]),
        .I1(\coef[8] [4]),
        .I2(\win[2][2] [4]),
        .I3(\g_row[2].taps_reg[2][2][3]_0 ),
        .I4(\win[2][2] [5]),
        .I5(\coef[8] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'h956A6A956A956A95)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_33 
       (.I0(\coef_reg[8][5]_0 [0]),
        .I1(\coef[8] [4]),
        .I2(\win[2][2] [3]),
        .I3(\g_row[2].taps_reg[2][2][2]_0 ),
        .I4(\win[2][2] [4]),
        .I5(\coef[8] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [0]));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_6 
       (.I0(\coef_reg[8][5]_1 ),
        .I1(\coef_reg[8][7]_0 [0]),
        .I2(\coef_reg[8][7]_0 [1]),
        .I3(\coef_reg[8][5]_2 ),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_10 
       (.I0(\coef[8] [7]),
        .I1(\win[2][2] [3]),
        .I2(\coef[8] [6]),
        .I3(\win[2][2] [4]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16] [0]));
  LUT4 #(
    .INIT(16'hDA00)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_11 
       (.I0(\coef[8] [6]),
        .I1(\win[2][2] [6]),
        .I2(\coef[8] [7]),
        .I3(\win[2][2] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 ));
  LUT6 #(
    .INIT(64'h18A0CFFF87FF0FFF)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_20 
       (.I0(\coef[8] [3]),
        .I1(\win[2][2] [5]),
        .I2(\win[2][2] [6]),
        .I3(\coef[8] [5]),
        .I4(\win[2][2] [7]),
        .I5(\coef[8] [4]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_3 
       (.I0(\coef_reg[8][5]_2 ),
        .I1(\coef_reg[8][7]_0 [1]),
        .I2(\g_row[2].taps_reg[2][2][7] ),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16]_1 ));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_7 
       (.I0(\coef[8] [7]),
        .I1(\win[2][2] [6]),
        .I2(\coef[8] [6]),
        .I3(\win[2][2] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16] [3]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_8 
       (.I0(\coef[8] [7]),
        .I1(\win[2][2] [5]),
        .I2(\coef[8] [6]),
        .I3(\win[2][2] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16] [2]));
  LUT4 #(
    .INIT(16'h7000)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_9 
       (.I0(\coef[8] [7]),
        .I1(\win[2][2] [4]),
        .I2(\coef[8] [6]),
        .I3(\win[2][2] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16] [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_7 
       (.I0(\coef[8] [0]),
        .I1(\win[2][2] [1]),
        .I2(\coef[8] [1]),
        .I3(\win[2][2] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[2] ));
endmodule

module line_window
   (Q,
    \g_row[0].taps_reg[0][2][7]_0 ,
    \g_row[1].taps_reg[1][2][7]_0 ,
    S,
    \g_row[0].g_col[0].g_lut.p_q_reg[16] ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10] ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[2] ,
    \g_row[0].g_tap[0].taps_reg[0][0][7]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10] ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[16] ,
    \g_row[0].g_col[2].g_lut.p_q_reg[2] ,
    \g_row[0].g_tap[1].taps_reg[0][1][7]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10] ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[16] ,
    \g_row[1].g_col[0].g_lut.p_q_reg[2] ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10] ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[16] ,
    \g_row[1].g_col[1].g_lut.p_q_reg[2] ,
    \g_row[1].g_tap[0].taps_reg[1][0][7]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10] ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[16] ,
    \g_row[1].g_col[2].g_lut.p_q_reg[2] ,
    \g_row[1].g_tap[1].taps_reg[1][1][7]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10] ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[16] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[2] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10] ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[16] ,
    \g_row[2].g_col[1].g_lut.p_q_reg[2] ,
    \g_row[2].g_tap[0].taps_reg[2][0][7]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10] ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[16] ,
    \g_row[2].g_col[2].g_lut.p_q_reg[2] ,
    \g_row[2].g_tap[1].taps_reg[2][1][7]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10] ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[16] ,
    advance,
    clk,
    rst_n,
    \coef[0] ,
    \g_row[0].g_tap[0].taps_reg[0][0][3]_0 ,
    \g_row[0].g_tap[0].taps_reg[0][0][3]_1 ,
    \coef[1] ,
    \g_row[0].g_tap[1].taps_reg[0][1][3]_0 ,
    \g_row[0].g_tap[1].taps_reg[0][1][3]_1 ,
    \coef[2] ,
    \g_row[0].taps_reg[0][2][3]_0 ,
    \g_row[0].taps_reg[0][2][3]_1 ,
    \coef[3] ,
    \g_row[1].g_tap[0].taps_reg[1][0][3]_0 ,
    \g_row[1].g_tap[0].taps_reg[1][0][3]_1 ,
    \coef[4] ,
    \g_row[1].g_tap[1].taps_reg[1][1][3]_0 ,
    \g_row[1].g_tap[1].taps_reg[1][1][3]_1 ,
    \coef[5] ,
    \g_row[1].taps_reg[1][2][3]_0 ,
    \g_row[1].taps_reg[1][2][3]_1 ,
    \coef[6] ,
    \g_row[2].g_tap[0].taps_reg[2][0][3]_0 ,
    \g_row[2].g_tap[0].taps_reg[2][0][3]_1 ,
    \coef[7] ,
    \g_row[2].g_tap[1].taps_reg[2][1][3]_0 ,
    \g_row[2].g_tap[1].taps_reg[2][1][3]_1 ,
    \coef[8] ,
    \g_row[2].taps_reg[2][2][3]_0 ,
    \g_row[2].taps_reg[2][2][3]_1 ,
    px_data,
    rst_n_0);
  output [7:0]Q;
  output [7:0]\g_row[0].taps_reg[0][2][7]_0 ;
  output \g_row[1].taps_reg[1][2][7]_0 ;
  output [2:0]S;
  output [7:0]\g_row[0].g_col[0].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[0].g_col[0].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ;
  output [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[2] ;
  output [7:0]\g_row[0].g_tap[0].taps_reg[0][0][7]_0 ;
  output [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[2] ;
  output [7:0]\g_row[0].g_tap[1].taps_reg[0][1][7]_0 ;
  output [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[2] ;
  output [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[2] ;
  output [7:0]\g_row[1].g_tap[0].taps_reg[1][0][7]_0 ;
  output [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[2] ;
  output [7:0]\g_row[1].g_tap[1].taps_reg[1][1][7]_0 ;
  output [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[2] ;
  output [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[2] ;
  output [7:0]\g_row[2].g_tap[0].taps_reg[2][0][7]_0 ;
  output [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[16] ;
  output [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[2] ;
  output [7:0]\g_row[2].g_tap[1].taps_reg[2][1][7]_0 ;
  output [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[10] ;
  output [1:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[16] ;
  input advance;
  input clk;
  input rst_n;
  input [7:0]\coef[0] ;
  input \g_row[0].g_tap[0].taps_reg[0][0][3]_0 ;
  input \g_row[0].g_tap[0].taps_reg[0][0][3]_1 ;
  input [7:0]\coef[1] ;
  input \g_row[0].g_tap[1].taps_reg[0][1][3]_0 ;
  input \g_row[0].g_tap[1].taps_reg[0][1][3]_1 ;
  input [7:0]\coef[2] ;
  input \g_row[0].taps_reg[0][2][3]_0 ;
  input \g_row[0].taps_reg[0][2][3]_1 ;
  input [7:0]\coef[3] ;
  input \g_row[1].g_tap[0].taps_reg[1][0][3]_0 ;
  input \g_row[1].g_tap[0].taps_reg[1][0][3]_1 ;
  input [7:0]\coef[4] ;
  input \g_row[1].g_tap[1].taps_reg[1][1][3]_0 ;
  input \g_row[1].g_tap[1].taps_reg[1][1][3]_1 ;
  input [7:0]\coef[5] ;
  input \g_row[1].taps_reg[1][2][3]_0 ;
  input \g_row[1].taps_reg[1][2][3]_1 ;
  input [7:0]\coef[6] ;
  input \g_row[2].g_tap[0].taps_reg[2][0][3]_0 ;
  input \g_row[2].g_tap[0].taps_reg[2][0][3]_1 ;
  input [7:0]\coef[7] ;
  input \g_row[2].g_tap[1].taps_reg[2][1][3]_0 ;
  input \g_row[2].g_tap[1].taps_reg[2][1][3]_1 ;
  input [7:0]\coef[8] ;
  input \g_row[2].taps_reg[2][2][3]_0 ;
  input \g_row[2].taps_reg[2][2][3]_1 ;
  input [7:0]px_data;
  input rst_n_0;

  wire [7:0]Q;
  wire [2:0]S;
  wire advance;
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
  wire [7:0]\g_delay[0].srl_reg[28]_1 ;
  wire [7:0]\g_delay[1].srl_reg[28]_0 ;
  wire [2:0]\g_row[0].g_col[0].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [7:0]\g_row[0].g_col[0].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ;
  wire [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[0].g_col[1].g_lut.p_q_reg[2] ;
  wire [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[0].g_col[2].g_lut.p_q_reg[2] ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][3]_0 ;
  wire \g_row[0].g_tap[0].taps_reg[0][0][3]_1 ;
  wire [7:0]\g_row[0].g_tap[0].taps_reg[0][0][7]_0 ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][3]_0 ;
  wire \g_row[0].g_tap[1].taps_reg[0][1][3]_1 ;
  wire [7:0]\g_row[0].g_tap[1].taps_reg[0][1][7]_0 ;
  wire \g_row[0].taps_reg[0][2][3]_0 ;
  wire \g_row[0].taps_reg[0][2][3]_1 ;
  wire [7:0]\g_row[0].taps_reg[0][2][7]_0 ;
  wire [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[1].g_col[0].g_lut.p_q_reg[2] ;
  wire [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[1].g_col[1].g_lut.p_q_reg[2] ;
  wire [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[1].g_col[2].g_lut.p_q_reg[2] ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][3]_0 ;
  wire \g_row[1].g_tap[0].taps_reg[1][0][3]_1 ;
  wire [7:0]\g_row[1].g_tap[0].taps_reg[1][0][7]_0 ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][3]_0 ;
  wire \g_row[1].g_tap[1].taps_reg[1][1][3]_1 ;
  wire [7:0]\g_row[1].g_tap[1].taps_reg[1][1][7]_0 ;
  wire \g_row[1].taps_reg[1][2][3]_0 ;
  wire \g_row[1].taps_reg[1][2][3]_1 ;
  wire \g_row[1].taps_reg[1][2][7]_0 ;
  wire [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[2].g_col[0].g_lut.p_q_reg[2] ;
  wire [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[2].g_col[1].g_lut.p_q_reg[2] ;
  wire [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[10] ;
  wire [1:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[16] ;
  wire [2:0]\g_row[2].g_col[2].g_lut.p_q_reg[2] ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][3]_0 ;
  wire \g_row[2].g_tap[0].taps_reg[2][0][3]_1 ;
  wire [7:0]\g_row[2].g_tap[0].taps_reg[2][0][7]_0 ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][3]_0 ;
  wire \g_row[2].g_tap[1].taps_reg[2][1][3]_1 ;
  wire [7:0]\g_row[2].g_tap[1].taps_reg[2][1][7]_0 ;
  wire \g_row[2].taps_reg[2][2][3]_0 ;
  wire \g_row[2].taps_reg[2][2][3]_1 ;
  wire [7:0]px_data;
  wire rst_n;
  wire rst_n_0;
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

  LUT1 #(
    .INIT(2'h1)) 
    \coef[1][7]_i_2 
       (.I0(rst_n),
        .O(\g_row[1].taps_reg[1][2][7]_0 ));
  (* srl_bus_name = "\u_line_window/g_delay[0].srl_reg[28] " *) 
  (* srl_name = "\u_line_window/g_delay[0].srl_reg[28][0]_srl29 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \g_delay[0].srl_reg[28][0]_srl29 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b0}),
        .CE(advance),
        .CLK(clk),
        .D(\g_row[0].taps_reg[0][2][7]_0 [0]),
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
        .D(\g_row[0].taps_reg[0][2][7]_0 [1]),
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
        .D(\g_row[0].taps_reg[0][2][7]_0 [2]),
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
        .D(\g_row[0].taps_reg[0][2][7]_0 [3]),
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
        .D(\g_row[0].taps_reg[0][2][7]_0 [4]),
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
        .D(\g_row[0].taps_reg[0][2][7]_0 [5]),
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
        .D(\g_row[0].taps_reg[0][2][7]_0 [6]),
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
        .D(\g_row[0].taps_reg[0][2][7]_0 [7]),
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
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_23 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][3]_1 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[16] [1]),
        .I3(\coef[0] [4]),
        .I4(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]),
        .I5(\coef[0] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_24 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]),
        .I1(\coef[0] [5]),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[16] [1]),
        .I3(\coef[0] [4]),
        .I4(\coef[0] [3]),
        .I5(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_26 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]),
        .I1(\coef[0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_22 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16] [3]),
        .I2(\coef[0] [7]),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[16] [4]),
        .I4(\coef[0] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_23 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [1]),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]),
        .I2(\coef[0] [7]),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[16] [3]),
        .I4(\coef[0] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_12 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [5]),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16] [6]),
        .I2(\coef[0] [7]),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[16] [7]),
        .I4(\coef[0] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_13 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [4]),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16] [5]),
        .I2(\coef[0] [7]),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[16] [6]),
        .I4(\coef[0] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_14 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [3]),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16] [4]),
        .I2(\coef[0] [7]),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[16] [5]),
        .I4(\coef[0] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_5 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][3]_0 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[16] [1]),
        .I3(\coef[0] [1]),
        .I4(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]),
        .I5(\coef[0] [2]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_6 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]),
        .I1(\coef[0] [2]),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[16] [1]),
        .I3(\coef[0] [1]),
        .I4(\coef[0] [0]),
        .I5(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_8 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]),
        .I1(\coef[0] [0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_23 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][3]_1 ),
        .I2(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]),
        .I3(\coef[1] [4]),
        .I4(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .I5(\coef[1] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_24 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .I1(\coef[1] [5]),
        .I2(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]),
        .I3(\coef[1] [4]),
        .I4(\coef[1] [3]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_26 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .I1(\coef[1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_22 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [3]),
        .I2(\coef[1] [7]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [4]),
        .I4(\coef[1] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_23 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .I2(\coef[1] [7]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [3]),
        .I4(\coef[1] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_12 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [5]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [6]),
        .I2(\coef[1] [7]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [7]),
        .I4(\coef[1] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_13 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [4]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [5]),
        .I2(\coef[1] [7]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [6]),
        .I4(\coef[1] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_14 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [3]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [4]),
        .I2(\coef[1] [7]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [5]),
        .I4(\coef[1] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_5 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][3]_0 ),
        .I2(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]),
        .I3(\coef[1] [1]),
        .I4(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .I5(\coef[1] [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_6 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .I1(\coef[1] [2]),
        .I2(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]),
        .I3(\coef[1] [1]),
        .I4(\coef[1] [0]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_8 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .I1(\coef[1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[2] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_23 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .I1(\g_row[0].taps_reg[0][2][3]_1 ),
        .I2(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]),
        .I3(\coef[2] [4]),
        .I4(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .I5(\coef[2] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_24 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .I1(\coef[2] [5]),
        .I2(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]),
        .I3(\coef[2] [4]),
        .I4(\coef[2] [3]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_26 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .I1(\coef[2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_22 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [3]),
        .I2(\coef[2] [7]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [4]),
        .I4(\coef[2] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_23 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .I2(\coef[2] [7]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [3]),
        .I4(\coef[2] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_12 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [5]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [6]),
        .I2(\coef[2] [7]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [7]),
        .I4(\coef[2] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_13 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [4]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [5]),
        .I2(\coef[2] [7]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [6]),
        .I4(\coef[2] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_14 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [3]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [4]),
        .I2(\coef[2] [7]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [5]),
        .I4(\coef[2] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_5 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .I1(\g_row[0].taps_reg[0][2][3]_0 ),
        .I2(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]),
        .I3(\coef[2] [1]),
        .I4(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .I5(\coef[2] [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_6 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .I1(\coef[2] [2]),
        .I2(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]),
        .I3(\coef[2] [1]),
        .I4(\coef[2] [0]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_8 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .I1(\coef[2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][0] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][1] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][2] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][3] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [3]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][4] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [4]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][5] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [5]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][6] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [6]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[0].taps_reg[0][0][7] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [7]),
        .Q(\g_row[0].g_col[0].g_lut.p_q_reg[16] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][0] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][1] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][2] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][3] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [3]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][4] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [4]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][5] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [5]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][6] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [6]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_tap[1].taps_reg[0][1][7] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [7]),
        .Q(\g_row[0].g_tap[0].taps_reg[0][0][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][0] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [0]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][1] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [1]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][2] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [2]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][3] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [3]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][4] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [4]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][5] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [5]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][6] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [6]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].taps_reg[0][2][7] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[0].srl_reg[28]_1 [7]),
        .Q(\g_row[0].g_tap[1].taps_reg[0][1][7]_0 [7]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_23 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][3]_1 ),
        .I2(\g_row[0].taps_reg[0][2][7]_0 [1]),
        .I3(\coef[3] [4]),
        .I4(\g_row[0].taps_reg[0][2][7]_0 [0]),
        .I5(\coef[3] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_24 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [0]),
        .I1(\coef[3] [5]),
        .I2(\g_row[0].taps_reg[0][2][7]_0 [1]),
        .I3(\coef[3] [4]),
        .I4(\coef[3] [3]),
        .I5(\g_row[0].taps_reg[0][2][7]_0 [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_26 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [0]),
        .I1(\coef[3] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_22 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [2]),
        .I1(\g_row[0].taps_reg[0][2][7]_0 [3]),
        .I2(\coef[3] [7]),
        .I3(\g_row[0].taps_reg[0][2][7]_0 [4]),
        .I4(\coef[3] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_23 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [1]),
        .I1(\g_row[0].taps_reg[0][2][7]_0 [2]),
        .I2(\coef[3] [7]),
        .I3(\g_row[0].taps_reg[0][2][7]_0 [3]),
        .I4(\coef[3] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_12 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [5]),
        .I1(\g_row[0].taps_reg[0][2][7]_0 [6]),
        .I2(\coef[3] [7]),
        .I3(\g_row[0].taps_reg[0][2][7]_0 [7]),
        .I4(\coef[3] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_13 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [4]),
        .I1(\g_row[0].taps_reg[0][2][7]_0 [5]),
        .I2(\coef[3] [7]),
        .I3(\g_row[0].taps_reg[0][2][7]_0 [6]),
        .I4(\coef[3] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_14 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [3]),
        .I1(\g_row[0].taps_reg[0][2][7]_0 [4]),
        .I2(\coef[3] [7]),
        .I3(\g_row[0].taps_reg[0][2][7]_0 [5]),
        .I4(\coef[3] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_5 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][3]_0 ),
        .I2(\g_row[0].taps_reg[0][2][7]_0 [1]),
        .I3(\coef[3] [1]),
        .I4(\g_row[0].taps_reg[0][2][7]_0 [0]),
        .I5(\coef[3] [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_6 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [0]),
        .I1(\coef[3] [2]),
        .I2(\g_row[0].taps_reg[0][2][7]_0 [1]),
        .I3(\coef[3] [1]),
        .I4(\coef[3] [0]),
        .I5(\g_row[0].taps_reg[0][2][7]_0 [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_8 
       (.I0(\g_row[0].taps_reg[0][2][7]_0 [0]),
        .I1(\coef[3] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[2] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_23 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][3]_1 ),
        .I2(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]),
        .I3(\coef[4] [4]),
        .I4(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .I5(\coef[4] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_24 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .I1(\coef[4] [5]),
        .I2(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]),
        .I3(\coef[4] [4]),
        .I4(\coef[4] [3]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_26 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .I1(\coef[4] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_22 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [3]),
        .I2(\coef[4] [7]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [4]),
        .I4(\coef[4] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_23 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .I2(\coef[4] [7]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [3]),
        .I4(\coef[4] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_13 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [5]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [6]),
        .I2(\coef[4] [7]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [7]),
        .I4(\coef[4] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_14 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [4]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [5]),
        .I2(\coef[4] [7]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [6]),
        .I4(\coef[4] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_15 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [3]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [4]),
        .I2(\coef[4] [7]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [5]),
        .I4(\coef[4] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_5 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][3]_0 ),
        .I2(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]),
        .I3(\coef[4] [1]),
        .I4(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .I5(\coef[4] [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_6 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .I1(\coef[4] [2]),
        .I2(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]),
        .I3(\coef[4] [1]),
        .I4(\coef[4] [0]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_8 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .I1(\coef[4] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[2] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_23 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .I1(\g_row[1].taps_reg[1][2][3]_1 ),
        .I2(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]),
        .I3(\coef[5] [4]),
        .I4(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .I5(\coef[5] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_24 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .I1(\coef[5] [5]),
        .I2(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]),
        .I3(\coef[5] [4]),
        .I4(\coef[5] [3]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_26 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .I1(\coef[5] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_22 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [3]),
        .I2(\coef[5] [7]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [4]),
        .I4(\coef[5] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_23 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .I2(\coef[5] [7]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [3]),
        .I4(\coef[5] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_12 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [5]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [6]),
        .I2(\coef[5] [7]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [7]),
        .I4(\coef[5] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_13 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [4]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [5]),
        .I2(\coef[5] [7]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [6]),
        .I4(\coef[5] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_14 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [3]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [4]),
        .I2(\coef[5] [7]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [5]),
        .I4(\coef[5] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_5 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .I1(\g_row[1].taps_reg[1][2][3]_0 ),
        .I2(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]),
        .I3(\coef[5] [1]),
        .I4(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .I5(\coef[5] [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_6 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .I1(\coef[5] [2]),
        .I2(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]),
        .I3(\coef[5] [1]),
        .I4(\coef[5] [0]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_8 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .I1(\coef[5] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][0] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][1] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][2] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][3] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [3]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][4] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [4]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][5] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [5]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][6] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [6]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[0].taps_reg[1][0][7] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [7]),
        .Q(\g_row[0].taps_reg[0][2][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][0] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][1] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][2] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][3] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [3]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][4] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [4]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][5] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [5]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][6] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [6]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_tap[1].taps_reg[1][1][7] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [7]),
        .Q(\g_row[1].g_tap[0].taps_reg[1][0][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][0] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [0]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][1] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [1]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][2] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [2]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][3] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [3]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][4] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [4]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][5] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [5]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][6] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [6]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].taps_reg[1][2][7] 
       (.C(clk),
        .CE(advance),
        .CLR(\g_row[1].taps_reg[1][2][7]_0 ),
        .D(\g_delay[1].srl_reg[28]_0 [7]),
        .Q(\g_row[1].g_tap[1].taps_reg[1][1][7]_0 [7]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_23 
       (.I0(Q[2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][3]_1 ),
        .I2(Q[1]),
        .I3(\coef[6] [4]),
        .I4(Q[0]),
        .I5(\coef[6] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_24 
       (.I0(Q[0]),
        .I1(\coef[6] [5]),
        .I2(Q[1]),
        .I3(\coef[6] [4]),
        .I4(\coef[6] [3]),
        .I5(Q[2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_26 
       (.I0(Q[0]),
        .I1(\coef[6] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_22 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(\coef[6] [7]),
        .I3(Q[4]),
        .I4(\coef[6] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_23 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\coef[6] [7]),
        .I3(Q[3]),
        .I4(\coef[6] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_12 
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(\coef[6] [7]),
        .I3(Q[7]),
        .I4(\coef[6] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_13 
       (.I0(Q[4]),
        .I1(Q[5]),
        .I2(\coef[6] [7]),
        .I3(Q[6]),
        .I4(\coef[6] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_14 
       (.I0(Q[3]),
        .I1(Q[4]),
        .I2(\coef[6] [7]),
        .I3(Q[5]),
        .I4(\coef[6] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_5 
       (.I0(Q[2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][3]_0 ),
        .I2(Q[1]),
        .I3(\coef[6] [1]),
        .I4(Q[0]),
        .I5(\coef[6] [2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_6 
       (.I0(Q[0]),
        .I1(\coef[6] [2]),
        .I2(Q[1]),
        .I3(\coef[6] [1]),
        .I4(\coef[6] [0]),
        .I5(Q[2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_8 
       (.I0(Q[0]),
        .I1(\coef[6] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[2] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_23 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][3]_1 ),
        .I2(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]),
        .I3(\coef[7] [4]),
        .I4(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .I5(\coef[7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_24 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .I1(\coef[7] [5]),
        .I2(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]),
        .I3(\coef[7] [4]),
        .I4(\coef[7] [3]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_26 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .I1(\coef[7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_22 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [3]),
        .I2(\coef[7] [7]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [4]),
        .I4(\coef[7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_23 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .I2(\coef[7] [7]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [3]),
        .I4(\coef[7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_12 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [5]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [6]),
        .I2(\coef[7] [7]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [7]),
        .I4(\coef[7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_13 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [4]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [5]),
        .I2(\coef[7] [7]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [6]),
        .I4(\coef[7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_14 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [3]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [4]),
        .I2(\coef[7] [7]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [5]),
        .I4(\coef[7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_5 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][3]_0 ),
        .I2(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]),
        .I3(\coef[7] [1]),
        .I4(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .I5(\coef[7] [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_6 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .I1(\coef[7] [2]),
        .I2(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]),
        .I3(\coef[7] [1]),
        .I4(\coef[7] [0]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_8 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .I1(\coef[7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[2] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_23 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .I1(\g_row[2].taps_reg[2][2][3]_1 ),
        .I2(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]),
        .I3(\coef[8] [4]),
        .I4(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .I5(\coef[8] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_24 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .I1(\coef[8] [5]),
        .I2(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]),
        .I3(\coef[8] [4]),
        .I4(\coef[8] [3]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_26 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .I1(\coef[8] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10] [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_22 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [3]),
        .I2(\coef[8] [7]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [4]),
        .I4(\coef[8] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 [1]));
  LUT5 #(
    .INIT(32'h1FE06060)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_23 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .I2(\coef[8] [7]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [3]),
        .I4(\coef[8] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 [0]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_12 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [5]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [6]),
        .I2(\coef[8] [7]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [7]),
        .I4(\coef[8] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16] [2]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_13 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [4]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [5]),
        .I2(\coef[8] [7]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [6]),
        .I4(\coef[8] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16] [1]));
  LUT5 #(
    .INIT(32'h8C733F3F)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_14 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [3]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [4]),
        .I2(\coef[8] [7]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [5]),
        .I4(\coef[8] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[16] [0]));
  LUT6 #(
    .INIT(64'h99C369C399339933)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_5 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .I1(\g_row[2].taps_reg[2][2][3]_0 ),
        .I2(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]),
        .I3(\coef[8] [1]),
        .I4(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .I5(\coef[8] [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[2] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_6 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .I1(\coef[8] [2]),
        .I2(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]),
        .I3(\coef[8] [1]),
        .I4(\coef[8] [0]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[2] [1]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_8 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .I1(\coef[8] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[0].taps_reg[2][0][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [7]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [3]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [4]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [5]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [6]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_tap[1].taps_reg[2][1][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [7]),
        .Q(\g_row[2].g_tap[0].taps_reg[2][0][7]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][0] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[0]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][1] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[1]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][2] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[2]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][3] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[3]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][4] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[4]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][5] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[5]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][6] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[6]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].taps_reg[2][2][7] 
       (.C(clk),
        .CE(advance),
        .CLR(rst_n_0),
        .D(px_data[7]),
        .Q(\g_row[2].g_tap[1].taps_reg[2][1][7]_0 [7]));
endmodule

module mac_array
   (\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ,
    O,
    \g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ,
    \s1_reg[3][17] ,
    Q,
    \s1_reg[3][15] ,
    \s1_reg[2][17] ,
    \s1_reg[2][17]_0 ,
    \s1_reg[2][15] ,
    \s1_reg[1][17] ,
    \s1_reg[1][17]_0 ,
    \s1_reg[1][15] ,
    \s1_reg[0][17] ,
    \s1_reg[0][17]_0 ,
    \s1_reg[0][15] ,
    DI,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ,
    CO,
    \g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[2]_0 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_3 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_4 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_5 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_6 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_7 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_8 ,
    \g_row[0].g_col[0].g_lut.p_q_reg[10]_9 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[14]_2 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[16]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[2]_0 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_3 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_4 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_5 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_6 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_7 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_8 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_9 ,
    \g_row[0].g_col[1].g_lut.p_q_reg[10]_10 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[14]_2 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[16]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[2]_0 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_3 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_4 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_5 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_6 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_7 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_8 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_9 ,
    \g_row[0].g_col[2].g_lut.p_q_reg[10]_10 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[14]_2 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[16]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[2]_0 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_3 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_4 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_5 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_6 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_7 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_8 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_9 ,
    \g_row[1].g_col[0].g_lut.p_q_reg[10]_10 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[14]_2 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[16]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[2]_0 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_3 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_4 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_5 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_6 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_7 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_8 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_9 ,
    \g_row[1].g_col[1].g_lut.p_q_reg[10]_10 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[14]_2 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[16]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[2]_0 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_3 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_4 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_5 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_6 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_7 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_8 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_9 ,
    \g_row[1].g_col[2].g_lut.p_q_reg[10]_10 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[14]_2 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[16]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[2]_0 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_3 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_4 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_5 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_6 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_7 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_8 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_9 ,
    \g_row[2].g_col[0].g_lut.p_q_reg[10]_10 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[14]_2 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[16]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[2]_0 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_3 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_4 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_5 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_6 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_7 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_8 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_9 ,
    \g_row[2].g_col[1].g_lut.p_q_reg[10]_10 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[14]_2 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[16]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[2]_0 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_3 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_4 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_5 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_6 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_7 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_8 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_9 ,
    \g_row[2].g_col[2].g_lut.p_q_reg[10]_10 ,
    \p8_a1_reg[16] ,
    rst_n,
    S,
    \coef_reg[0][1] ,
    \coef_reg[0][0] ,
    \g_row[0].g_tap[0].taps_reg[0][0][2] ,
    \coef_reg[0][4] ,
    \coef_reg[0][3] ,
    \coef_reg[0][7] ,
    \g_row[0].g_tap[0].taps_reg[0][0][2]_0 ,
    \coef_reg[0][7]_0 ,
    \coef_reg[0][6] ,
    \coef_reg[0][5] ,
    \coef_reg[0][5]_0 ,
    \coef[0] ,
    \g_row[0].g_tap[0].taps_reg[0][0][7] ,
    E,
    clk,
    \g_row[0].g_tap[1].taps_reg[0][1][2] ,
    \coef_reg[1][1] ,
    \coef_reg[1][0] ,
    \g_row[0].g_tap[1].taps_reg[0][1][2]_0 ,
    \coef_reg[1][4] ,
    \coef_reg[1][3] ,
    \coef_reg[1][7] ,
    \g_row[0].g_tap[1].taps_reg[0][1][2]_1 ,
    \coef_reg[1][7]_0 ,
    \coef_reg[1][6] ,
    \coef_reg[1][5] ,
    \coef_reg[1][5]_0 ,
    \coef[1] ,
    \g_row[0].g_tap[1].taps_reg[0][1][7] ,
    \g_row[0].taps_reg[0][2][2] ,
    \coef_reg[2][1] ,
    \coef_reg[2][0] ,
    \g_row[0].taps_reg[0][2][2]_0 ,
    \coef_reg[2][4] ,
    \coef_reg[2][3] ,
    \coef_reg[2][7] ,
    \g_row[0].taps_reg[0][2][2]_1 ,
    \coef_reg[2][7]_0 ,
    \coef_reg[2][6] ,
    \coef_reg[2][5] ,
    \coef_reg[2][5]_0 ,
    \coef[2] ,
    \g_row[0].taps_reg[0][2][7] ,
    \g_row[1].g_tap[0].taps_reg[1][0][2] ,
    \coef_reg[3][1] ,
    \coef_reg[3][0] ,
    \g_row[1].g_tap[0].taps_reg[1][0][2]_0 ,
    \coef_reg[3][4] ,
    \coef_reg[3][3] ,
    \coef_reg[3][7] ,
    \g_row[1].g_tap[0].taps_reg[1][0][2]_1 ,
    \coef_reg[3][7]_0 ,
    \coef_reg[3][6] ,
    \coef_reg[3][5] ,
    \coef_reg[3][5]_0 ,
    \coef[3] ,
    \g_row[1].g_tap[0].taps_reg[1][0][7] ,
    \g_row[1].g_tap[1].taps_reg[1][1][2] ,
    \coef_reg[4][1] ,
    \coef_reg[4][0] ,
    \g_row[1].g_tap[1].taps_reg[1][1][2]_0 ,
    \coef_reg[4][4] ,
    \coef_reg[4][3] ,
    \coef_reg[4][7] ,
    \g_row[1].g_tap[1].taps_reg[1][1][2]_1 ,
    \coef_reg[4][7]_0 ,
    \coef_reg[4][6] ,
    \coef_reg[4][5] ,
    \coef_reg[4][5]_0 ,
    \coef[4] ,
    \g_row[1].g_tap[1].taps_reg[1][1][7] ,
    \g_row[1].taps_reg[1][2][2] ,
    \coef_reg[5][1] ,
    \coef_reg[5][0] ,
    \g_row[1].taps_reg[1][2][2]_0 ,
    \coef_reg[5][4] ,
    \coef_reg[5][3] ,
    \coef_reg[5][7] ,
    \g_row[1].taps_reg[1][2][2]_1 ,
    \coef_reg[5][7]_0 ,
    \coef_reg[5][6] ,
    \coef_reg[5][5] ,
    \coef_reg[5][5]_0 ,
    \coef[5] ,
    \g_row[1].taps_reg[1][2][7] ,
    \g_row[2].g_tap[0].taps_reg[2][0][2] ,
    \coef_reg[6][1] ,
    \coef_reg[6][0] ,
    \g_row[2].g_tap[0].taps_reg[2][0][2]_0 ,
    \coef_reg[6][4] ,
    \coef_reg[6][3] ,
    \coef_reg[6][7] ,
    \g_row[2].g_tap[0].taps_reg[2][0][2]_1 ,
    \coef_reg[6][7]_0 ,
    \coef_reg[6][6] ,
    \coef_reg[6][5] ,
    \coef_reg[6][5]_0 ,
    \coef[6] ,
    \g_row[2].g_tap[0].taps_reg[2][0][7] ,
    \g_row[2].g_tap[1].taps_reg[2][1][2] ,
    \coef_reg[7][1] ,
    \coef_reg[7][0] ,
    \g_row[2].g_tap[1].taps_reg[2][1][2]_0 ,
    \coef_reg[7][4] ,
    \coef_reg[7][3] ,
    \coef_reg[7][7] ,
    \g_row[2].g_tap[1].taps_reg[2][1][2]_1 ,
    \coef_reg[7][7]_0 ,
    \coef_reg[7][6] ,
    \coef_reg[7][5] ,
    \coef_reg[7][5]_0 ,
    \coef[7] ,
    \g_row[2].g_tap[1].taps_reg[2][1][7] ,
    \g_row[2].taps_reg[2][2][2] ,
    \coef_reg[8][1] ,
    \coef_reg[8][0] ,
    \g_row[2].taps_reg[2][2][2]_0 ,
    \coef_reg[8][4] ,
    \coef_reg[8][3] ,
    \coef_reg[8][7] ,
    \g_row[2].taps_reg[2][2][2]_1 ,
    \coef_reg[8][7]_0 ,
    \coef_reg[8][6] ,
    \coef_reg[8][5] ,
    \coef_reg[8][5]_0 ,
    \coef[8] ,
    \g_row[2].taps_reg[2][2][7] ,
    rst_n_0);
  output \g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ;
  output [1:0]\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ;
  output [0:0]O;
  output [1:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ;
  output [1:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ;
  output [1:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ;
  output [1:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ;
  output [1:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ;
  output [1:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ;
  output [1:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ;
  output [1:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ;
  output [0:0]\s1_reg[3][17] ;
  output [16:0]Q;
  output [15:0]\s1_reg[3][15] ;
  output [0:0]\s1_reg[2][17] ;
  output [16:0]\s1_reg[2][17]_0 ;
  output [15:0]\s1_reg[2][15] ;
  output [0:0]\s1_reg[1][17] ;
  output [16:0]\s1_reg[1][17]_0 ;
  output [15:0]\s1_reg[1][15] ;
  output [0:0]\s1_reg[0][17] ;
  output [16:0]\s1_reg[0][17]_0 ;
  output [15:0]\s1_reg[0][15] ;
  output [3:0]DI;
  output [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [0:0]CO;
  output [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[2]_0 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_3 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_4 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_5 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_6 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_7 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_8 ;
  output \g_row[0].g_col[0].g_lut.p_q_reg[10]_9 ;
  output [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[2]_0 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_3 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_4 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_5 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_6 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_7 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_8 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_9 ;
  output \g_row[0].g_col[1].g_lut.p_q_reg[10]_10 ;
  output [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[2]_0 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_3 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_4 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_5 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_6 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_7 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_8 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_9 ;
  output \g_row[0].g_col[2].g_lut.p_q_reg[10]_10 ;
  output [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[2]_0 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_3 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_4 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_5 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_6 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_7 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_8 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_9 ;
  output \g_row[1].g_col[0].g_lut.p_q_reg[10]_10 ;
  output [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[2]_0 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_3 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_4 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_5 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_6 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_7 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_8 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_9 ;
  output \g_row[1].g_col[1].g_lut.p_q_reg[10]_10 ;
  output [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[2]_0 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_3 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_4 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_5 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_6 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_7 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_8 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_9 ;
  output \g_row[1].g_col[2].g_lut.p_q_reg[10]_10 ;
  output [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[2]_0 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_3 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_4 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_5 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_6 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_7 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_8 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_9 ;
  output \g_row[2].g_col[0].g_lut.p_q_reg[10]_10 ;
  output [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[2]_0 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_3 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_4 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_5 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_6 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_7 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_8 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_9 ;
  output \g_row[2].g_col[1].g_lut.p_q_reg[10]_10 ;
  output [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ;
  output [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_2 ;
  output [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[2]_0 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_3 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_4 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_5 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_6 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_7 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_8 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_9 ;
  output \g_row[2].g_col[2].g_lut.p_q_reg[10]_10 ;
  output [16:0]\p8_a1_reg[16] ;
  input rst_n;
  input [3:0]S;
  input [3:0]\coef_reg[0][1] ;
  input [0:0]\coef_reg[0][0] ;
  input [3:0]\g_row[0].g_tap[0].taps_reg[0][0][2] ;
  input [3:0]\coef_reg[0][4] ;
  input [0:0]\coef_reg[0][3] ;
  input [2:0]\coef_reg[0][7] ;
  input [1:0]\g_row[0].g_tap[0].taps_reg[0][0][2]_0 ;
  input [3:0]\coef_reg[0][7]_0 ;
  input [3:0]\coef_reg[0][6] ;
  input [0:0]\coef_reg[0][5] ;
  input [0:0]\coef_reg[0][5]_0 ;
  input [7:0]\coef[0] ;
  input [7:0]\g_row[0].g_tap[0].taps_reg[0][0][7] ;
  input [0:0]E;
  input clk;
  input [3:0]\g_row[0].g_tap[1].taps_reg[0][1][2] ;
  input [3:0]\coef_reg[1][1] ;
  input [0:0]\coef_reg[1][0] ;
  input [3:0]\g_row[0].g_tap[1].taps_reg[0][1][2]_0 ;
  input [3:0]\coef_reg[1][4] ;
  input [0:0]\coef_reg[1][3] ;
  input [2:0]\coef_reg[1][7] ;
  input [1:0]\g_row[0].g_tap[1].taps_reg[0][1][2]_1 ;
  input [3:0]\coef_reg[1][7]_0 ;
  input [3:0]\coef_reg[1][6] ;
  input [0:0]\coef_reg[1][5] ;
  input [0:0]\coef_reg[1][5]_0 ;
  input [7:0]\coef[1] ;
  input [7:0]\g_row[0].g_tap[1].taps_reg[0][1][7] ;
  input [3:0]\g_row[0].taps_reg[0][2][2] ;
  input [3:0]\coef_reg[2][1] ;
  input [0:0]\coef_reg[2][0] ;
  input [3:0]\g_row[0].taps_reg[0][2][2]_0 ;
  input [3:0]\coef_reg[2][4] ;
  input [0:0]\coef_reg[2][3] ;
  input [2:0]\coef_reg[2][7] ;
  input [1:0]\g_row[0].taps_reg[0][2][2]_1 ;
  input [3:0]\coef_reg[2][7]_0 ;
  input [3:0]\coef_reg[2][6] ;
  input [0:0]\coef_reg[2][5] ;
  input [0:0]\coef_reg[2][5]_0 ;
  input [7:0]\coef[2] ;
  input [7:0]\g_row[0].taps_reg[0][2][7] ;
  input [3:0]\g_row[1].g_tap[0].taps_reg[1][0][2] ;
  input [3:0]\coef_reg[3][1] ;
  input [0:0]\coef_reg[3][0] ;
  input [3:0]\g_row[1].g_tap[0].taps_reg[1][0][2]_0 ;
  input [3:0]\coef_reg[3][4] ;
  input [0:0]\coef_reg[3][3] ;
  input [2:0]\coef_reg[3][7] ;
  input [1:0]\g_row[1].g_tap[0].taps_reg[1][0][2]_1 ;
  input [3:0]\coef_reg[3][7]_0 ;
  input [3:0]\coef_reg[3][6] ;
  input [0:0]\coef_reg[3][5] ;
  input [0:0]\coef_reg[3][5]_0 ;
  input [7:0]\coef[3] ;
  input [7:0]\g_row[1].g_tap[0].taps_reg[1][0][7] ;
  input [3:0]\g_row[1].g_tap[1].taps_reg[1][1][2] ;
  input [3:0]\coef_reg[4][1] ;
  input [0:0]\coef_reg[4][0] ;
  input [3:0]\g_row[1].g_tap[1].taps_reg[1][1][2]_0 ;
  input [3:0]\coef_reg[4][4] ;
  input [0:0]\coef_reg[4][3] ;
  input [2:0]\coef_reg[4][7] ;
  input [1:0]\g_row[1].g_tap[1].taps_reg[1][1][2]_1 ;
  input [3:0]\coef_reg[4][7]_0 ;
  input [3:0]\coef_reg[4][6] ;
  input [0:0]\coef_reg[4][5] ;
  input [0:0]\coef_reg[4][5]_0 ;
  input [7:0]\coef[4] ;
  input [7:0]\g_row[1].g_tap[1].taps_reg[1][1][7] ;
  input [3:0]\g_row[1].taps_reg[1][2][2] ;
  input [3:0]\coef_reg[5][1] ;
  input [0:0]\coef_reg[5][0] ;
  input [3:0]\g_row[1].taps_reg[1][2][2]_0 ;
  input [3:0]\coef_reg[5][4] ;
  input [0:0]\coef_reg[5][3] ;
  input [2:0]\coef_reg[5][7] ;
  input [1:0]\g_row[1].taps_reg[1][2][2]_1 ;
  input [3:0]\coef_reg[5][7]_0 ;
  input [3:0]\coef_reg[5][6] ;
  input [0:0]\coef_reg[5][5] ;
  input [0:0]\coef_reg[5][5]_0 ;
  input [7:0]\coef[5] ;
  input [7:0]\g_row[1].taps_reg[1][2][7] ;
  input [3:0]\g_row[2].g_tap[0].taps_reg[2][0][2] ;
  input [3:0]\coef_reg[6][1] ;
  input [0:0]\coef_reg[6][0] ;
  input [3:0]\g_row[2].g_tap[0].taps_reg[2][0][2]_0 ;
  input [3:0]\coef_reg[6][4] ;
  input [0:0]\coef_reg[6][3] ;
  input [2:0]\coef_reg[6][7] ;
  input [1:0]\g_row[2].g_tap[0].taps_reg[2][0][2]_1 ;
  input [3:0]\coef_reg[6][7]_0 ;
  input [3:0]\coef_reg[6][6] ;
  input [0:0]\coef_reg[6][5] ;
  input [0:0]\coef_reg[6][5]_0 ;
  input [7:0]\coef[6] ;
  input [7:0]\g_row[2].g_tap[0].taps_reg[2][0][7] ;
  input [3:0]\g_row[2].g_tap[1].taps_reg[2][1][2] ;
  input [3:0]\coef_reg[7][1] ;
  input [0:0]\coef_reg[7][0] ;
  input [3:0]\g_row[2].g_tap[1].taps_reg[2][1][2]_0 ;
  input [3:0]\coef_reg[7][4] ;
  input [0:0]\coef_reg[7][3] ;
  input [2:0]\coef_reg[7][7] ;
  input [1:0]\g_row[2].g_tap[1].taps_reg[2][1][2]_1 ;
  input [3:0]\coef_reg[7][7]_0 ;
  input [3:0]\coef_reg[7][6] ;
  input [0:0]\coef_reg[7][5] ;
  input [0:0]\coef_reg[7][5]_0 ;
  input [7:0]\coef[7] ;
  input [7:0]\g_row[2].g_tap[1].taps_reg[2][1][7] ;
  input [3:0]\g_row[2].taps_reg[2][2][2] ;
  input [3:0]\coef_reg[8][1] ;
  input [0:0]\coef_reg[8][0] ;
  input [3:0]\g_row[2].taps_reg[2][2][2]_0 ;
  input [3:0]\coef_reg[8][4] ;
  input [0:0]\coef_reg[8][3] ;
  input [2:0]\coef_reg[8][7] ;
  input [1:0]\g_row[2].taps_reg[2][2][2]_1 ;
  input [3:0]\coef_reg[8][7]_0 ;
  input [3:0]\coef_reg[8][6] ;
  input [0:0]\coef_reg[8][5] ;
  input [0:0]\coef_reg[8][5]_0 ;
  input [7:0]\coef[8] ;
  input [7:0]\g_row[2].taps_reg[2][2][7] ;
  input rst_n_0;

  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]E;
  wire [0:0]O;
  wire [16:0]Q;
  wire [3:0]S;
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
  wire [0:0]\coef_reg[0][0] ;
  wire [3:0]\coef_reg[0][1] ;
  wire [0:0]\coef_reg[0][3] ;
  wire [3:0]\coef_reg[0][4] ;
  wire [0:0]\coef_reg[0][5] ;
  wire [0:0]\coef_reg[0][5]_0 ;
  wire [3:0]\coef_reg[0][6] ;
  wire [2:0]\coef_reg[0][7] ;
  wire [3:0]\coef_reg[0][7]_0 ;
  wire [0:0]\coef_reg[1][0] ;
  wire [3:0]\coef_reg[1][1] ;
  wire [0:0]\coef_reg[1][3] ;
  wire [3:0]\coef_reg[1][4] ;
  wire [0:0]\coef_reg[1][5] ;
  wire [0:0]\coef_reg[1][5]_0 ;
  wire [3:0]\coef_reg[1][6] ;
  wire [2:0]\coef_reg[1][7] ;
  wire [3:0]\coef_reg[1][7]_0 ;
  wire [0:0]\coef_reg[2][0] ;
  wire [3:0]\coef_reg[2][1] ;
  wire [0:0]\coef_reg[2][3] ;
  wire [3:0]\coef_reg[2][4] ;
  wire [0:0]\coef_reg[2][5] ;
  wire [0:0]\coef_reg[2][5]_0 ;
  wire [3:0]\coef_reg[2][6] ;
  wire [2:0]\coef_reg[2][7] ;
  wire [3:0]\coef_reg[2][7]_0 ;
  wire [0:0]\coef_reg[3][0] ;
  wire [3:0]\coef_reg[3][1] ;
  wire [0:0]\coef_reg[3][3] ;
  wire [3:0]\coef_reg[3][4] ;
  wire [0:0]\coef_reg[3][5] ;
  wire [0:0]\coef_reg[3][5]_0 ;
  wire [3:0]\coef_reg[3][6] ;
  wire [2:0]\coef_reg[3][7] ;
  wire [3:0]\coef_reg[3][7]_0 ;
  wire [0:0]\coef_reg[4][0] ;
  wire [3:0]\coef_reg[4][1] ;
  wire [0:0]\coef_reg[4][3] ;
  wire [3:0]\coef_reg[4][4] ;
  wire [0:0]\coef_reg[4][5] ;
  wire [0:0]\coef_reg[4][5]_0 ;
  wire [3:0]\coef_reg[4][6] ;
  wire [2:0]\coef_reg[4][7] ;
  wire [3:0]\coef_reg[4][7]_0 ;
  wire [0:0]\coef_reg[5][0] ;
  wire [3:0]\coef_reg[5][1] ;
  wire [0:0]\coef_reg[5][3] ;
  wire [3:0]\coef_reg[5][4] ;
  wire [0:0]\coef_reg[5][5] ;
  wire [0:0]\coef_reg[5][5]_0 ;
  wire [3:0]\coef_reg[5][6] ;
  wire [2:0]\coef_reg[5][7] ;
  wire [3:0]\coef_reg[5][7]_0 ;
  wire [0:0]\coef_reg[6][0] ;
  wire [3:0]\coef_reg[6][1] ;
  wire [0:0]\coef_reg[6][3] ;
  wire [3:0]\coef_reg[6][4] ;
  wire [0:0]\coef_reg[6][5] ;
  wire [0:0]\coef_reg[6][5]_0 ;
  wire [3:0]\coef_reg[6][6] ;
  wire [2:0]\coef_reg[6][7] ;
  wire [3:0]\coef_reg[6][7]_0 ;
  wire [0:0]\coef_reg[7][0] ;
  wire [3:0]\coef_reg[7][1] ;
  wire [0:0]\coef_reg[7][3] ;
  wire [3:0]\coef_reg[7][4] ;
  wire [0:0]\coef_reg[7][5] ;
  wire [0:0]\coef_reg[7][5]_0 ;
  wire [3:0]\coef_reg[7][6] ;
  wire [2:0]\coef_reg[7][7] ;
  wire [3:0]\coef_reg[7][7]_0 ;
  wire [0:0]\coef_reg[8][0] ;
  wire [3:0]\coef_reg[8][1] ;
  wire [0:0]\coef_reg[8][3] ;
  wire [3:0]\coef_reg[8][4] ;
  wire [0:0]\coef_reg[8][5] ;
  wire [0:0]\coef_reg[8][5]_0 ;
  wire [3:0]\coef_reg[8][6] ;
  wire [2:0]\coef_reg[8][7] ;
  wire [3:0]\coef_reg[8][7]_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_3 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_4 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_5 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_8 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_9 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire [1:0]\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire [0:0]\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[2]_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[0].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_10 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_3 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_8 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_9 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire [1:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[14]_2 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[2]_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q[6]_i_8_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ;
  wire [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_10 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_3 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_8 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_9 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire [1:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[14]_2 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[2]_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire [3:0]\g_row[0].g_tap[0].taps_reg[0][0][2] ;
  wire [1:0]\g_row[0].g_tap[0].taps_reg[0][0][2]_0 ;
  wire [7:0]\g_row[0].g_tap[0].taps_reg[0][0][7] ;
  wire [3:0]\g_row[0].g_tap[1].taps_reg[0][1][2] ;
  wire [3:0]\g_row[0].g_tap[1].taps_reg[0][1][2]_0 ;
  wire [1:0]\g_row[0].g_tap[1].taps_reg[0][1][2]_1 ;
  wire [7:0]\g_row[0].g_tap[1].taps_reg[0][1][7] ;
  wire [3:0]\g_row[0].taps_reg[0][2][2] ;
  wire [3:0]\g_row[0].taps_reg[0][2][2]_0 ;
  wire [1:0]\g_row[0].taps_reg[0][2][2]_1 ;
  wire [7:0]\g_row[0].taps_reg[0][2][7] ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_10 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_3 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_8 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_9 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire [1:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[14]_2 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[2]_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[16]_i_20_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[16]_i_6_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_10 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_3 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_8 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_9 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire [1:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[14]_2 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[2]_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_10 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_3 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_8 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_9 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire [1:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[14]_2 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[2]_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire [3:0]\g_row[1].g_tap[0].taps_reg[1][0][2] ;
  wire [3:0]\g_row[1].g_tap[0].taps_reg[1][0][2]_0 ;
  wire [1:0]\g_row[1].g_tap[0].taps_reg[1][0][2]_1 ;
  wire [7:0]\g_row[1].g_tap[0].taps_reg[1][0][7] ;
  wire [3:0]\g_row[1].g_tap[1].taps_reg[1][1][2] ;
  wire [3:0]\g_row[1].g_tap[1].taps_reg[1][1][2]_0 ;
  wire [1:0]\g_row[1].g_tap[1].taps_reg[1][1][2]_1 ;
  wire [7:0]\g_row[1].g_tap[1].taps_reg[1][1][7] ;
  wire [3:0]\g_row[1].taps_reg[1][2][2] ;
  wire [3:0]\g_row[1].taps_reg[1][2][2]_0 ;
  wire [1:0]\g_row[1].taps_reg[1][2][2]_1 ;
  wire [7:0]\g_row[1].taps_reg[1][2][7] ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_10 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_3 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_8 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_9 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire [1:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[14]_2 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[2]_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_10 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_3 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_8 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_9 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire [1:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[14]_2 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[2]_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_20_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_21_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_22_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_2_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_3_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_4_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_5_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_6_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_7_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_8_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[10]_i_9_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_13_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_14_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_15_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_16_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_17_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_24_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_25_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_2_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_3_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_4_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_5_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_7_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_8_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[14]_i_9_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[16]_i_15_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[16]_i_16_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[16]_i_17_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[16]_i_18_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[16]_i_19_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[16]_i_5_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[2]_i_2_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[2]_i_3_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[2]_i_4_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[6]_i_2_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[6]_i_3_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[6]_i_4_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[6]_i_5_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[6]_i_6_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[6]_i_7_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q[6]_i_8_n_0 ;
  wire [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ;
  wire [3:0]\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_10 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_3 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_8 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_9 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ;
  wire [1:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[14]_2 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 ;
  wire [0:0]\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[2]_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ;
  wire \g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 ;
  wire [3:0]\g_row[2].g_tap[0].taps_reg[2][0][2] ;
  wire [3:0]\g_row[2].g_tap[0].taps_reg[2][0][2]_0 ;
  wire [1:0]\g_row[2].g_tap[0].taps_reg[2][0][2]_1 ;
  wire [7:0]\g_row[2].g_tap[0].taps_reg[2][0][7] ;
  wire [3:0]\g_row[2].g_tap[1].taps_reg[2][1][2] ;
  wire [3:0]\g_row[2].g_tap[1].taps_reg[2][1][2]_0 ;
  wire [1:0]\g_row[2].g_tap[1].taps_reg[2][1][2]_1 ;
  wire [7:0]\g_row[2].g_tap[1].taps_reg[2][1][7] ;
  wire [3:0]\g_row[2].taps_reg[2][2][2] ;
  wire [3:0]\g_row[2].taps_reg[2][2][2]_0 ;
  wire [1:0]\g_row[2].taps_reg[2][2][2]_1 ;
  wire [7:0]\g_row[2].taps_reg[2][2][7] ;
  wire [16:0]\p8_a1_reg[16] ;
  wire [16:0]p_0_in;
  wire [16:16]\prod[1] ;
  wire [16:16]\prod[3] ;
  wire [16:16]\prod[5] ;
  wire [16:16]\prod[7] ;
  wire rst_n;
  wire rst_n_0;
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
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[0].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED ;
  wire [3:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \coef[0][7]_i_2 
       (.I0(rst_n),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_12 
       (.I0(\coef[0] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .I2(\coef[0] [1]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .I4(\coef[0] [0]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .O(DI[3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_13 
       (.I0(\coef[0] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I2(\coef[0] [1]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .I4(\coef[0] [0]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .O(DI[2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_14 
       (.I0(\coef[0] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I2(\coef[0] [1]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I4(\coef[0] [0]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .O(DI[1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_15 
       (.I0(\coef[0] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I2(\coef[0] [1]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I4(\coef[0] [0]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .O(DI[0]));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_2 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_20 
       (.I0(\coef[0] [4]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I2(\coef[0] [5]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I4(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I5(\coef[0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_21 
       (.I0(\coef[0] [4]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I2(\coef[0] [5]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_22 
       (.I0(\coef[0] [3]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_27 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .I1(\coef[0] [2]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_28 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .I1(\coef[0] [2]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_3 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_29 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I1(\coef[0] [2]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_2 ));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_3 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_30 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I1(\coef[0] [2]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_31 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I1(\coef[0] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_5 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_4 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_5 
       (.I0(\coef[0] [6]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [0]),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_6 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_7 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_8 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[0].g_lut.p_q[10]_i_9 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_13 
       (.I0(\coef[0] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_14 
       (.I0(\coef[0] [1]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .I2(\coef[0] [2]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_15 
       (.I0(\coef[0] [2]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .I2(\coef[0] [1]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .I4(\coef[0] [0]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_16 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .I1(\coef[0] [2]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_17 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .I1(\coef[0] [1]),
        .I2(\coef[0] [2]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_2 
       (.I0(O),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_24 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [0]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I2(\coef[0] [7]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I4(\coef[0] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_25 
       (.I0(\coef[0] [6]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I2(\coef[0] [7]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_26 
       (.I0(\coef[0] [5]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .I2(\coef[0] [4]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .I4(\coef[0] [3]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_27 
       (.I0(\coef[0] [5]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I2(\coef[0] [4]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .I4(\coef[0] [3]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_28 
       (.I0(\coef[0] [5]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I2(\coef[0] [4]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I4(\coef[0] [3]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_29 
       (.I0(\coef[0] [5]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I2(\coef[0] [4]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I4(\coef[0] [3]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_3 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_34 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .I1(\coef[0] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_35 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [4]),
        .I1(\coef[0] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_36 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I1(\coef[0] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_7 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_37 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I1(\coef[0] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[10]_6 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_4 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_5 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_7 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 [0]),
        .I3(O),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_8 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[0].g_lut.p_q[14]_i_9 
       (.I0(\g_row[0].g_col[0].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_15 
       (.I0(\coef[0] [5]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_16 
       (.I0(\coef[0] [4]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .I2(\coef[0] [5]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .O(\g_row[0].g_col[0].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_17 
       (.I0(\coef[0] [5]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [5]),
        .I2(\coef[0] [4]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .I4(\coef[0] [3]),
        .I5(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_18 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .I1(\coef[0] [5]),
        .O(\g_row[0].g_col[0].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_19 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [6]),
        .I1(\coef[0] [4]),
        .I2(\coef[0] [5]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[16]_i_5 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [7]),
        .I1(\coef[0] [7]),
        .O(\g_row[0].g_col[0].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_2 
       (.I0(\coef[0] [1]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [2]),
        .I2(\coef[0] [2]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I4(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I5(\coef[0] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_3 
       (.I0(\coef[0] [1]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .I2(\coef[0] [2]),
        .I3(\g_row[0].g_tap[0].taps_reg[0][0][7] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_4 
       (.I0(\coef[0] [0]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [1]),
        .O(\g_row[0].g_col[0].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[0].g_lut.p_q[2]_i_9 
       (.I0(\g_row[0].g_tap[0].taps_reg[0][0][7] [3]),
        .I1(\coef[0] [0]),
        .O(\g_row[0].g_col[0].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[6]_i_2 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[6]_i_3 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[0].g_lut.p_q[6]_i_4 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[0].g_col[0].g_lut.p_q[6]_i_5 
       (.I0(\coef[0] [6]),
        .I1(\g_row[0].g_tap[0].taps_reg[0][0][7] [0]),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[0].g_col[0].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair60" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[0].g_col[0].g_lut.p_q[6]_i_6 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[0].g_lut.p_q[6]_i_7 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[0].g_col[0].g_lut.p_q[6]_i_8 
       (.I0(\g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[0].g_col[0].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[0]),
        .Q(\s1_reg[0][17]_0 [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[10]),
        .Q(\s1_reg[0][17]_0 [10]));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[0].g_lut.p_q[10]_i_2_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_3_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_4_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_5_n_0 }),
        .O(p_0_in[10:7]),
        .S({\g_row[0].g_col[0].g_lut.p_q[10]_i_6_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_7_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_8_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(DI),
        .O({\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[0][1] ));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[0].g_lut.p_q[10]_i_20_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_21_n_0 ,\g_row[0].g_col[0].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[0].g_tap[0].taps_reg[0][0][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[11]),
        .Q(\s1_reg[0][17]_0 [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[12]),
        .Q(\s1_reg[0][17]_0 [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[13]),
        .Q(\s1_reg[0][17]_0 [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[14]),
        .Q(\s1_reg[0][17]_0 [14]));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[0].g_lut.p_q[14]_i_2_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_3_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_4_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_5_n_0 }),
        .O(p_0_in[14:11]),
        .S({\coef_reg[0][5] ,\g_row[0].g_col[0].g_lut.p_q[14]_i_7_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_8_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[0].g_col[0].g_lut.p_q[14]_i_13_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_14_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[0].g_col[0].g_lut.p_q[14]_i_16_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[0][0] }));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[0][7] ,1'b0}),
        .O({\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[0].g_tap[0].taps_reg[0][0][2]_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_24_n_0 ,\g_row[0].g_col[0].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[0].g_col[0].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[0][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[15]),
        .Q(\s1_reg[0][17]_0 [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[16]),
        .Q(\s1_reg[0][17]_0 [16]));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],p_0_in[16:15]}),
        .S({1'b0,1'b0,\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[0][5]_0 }));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[0].g_col[0].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[0][7]_0 ),
        .O({\g_row[0].g_col[0].g_lut.p_q_reg[14]_0 ,\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[0][6] ));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[0].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({CO,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[0].g_col[0].g_lut.p_q[16]_i_15_n_0 ,\g_row[0].g_col[0].g_lut.p_q[16]_i_16_n_0 ,\g_row[0].g_col[0].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],O,\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[0].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[0].g_col[0].g_lut.p_q[16]_i_18_n_0 ,\g_row[0].g_col[0].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[0][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[1]),
        .Q(\s1_reg[0][17]_0 [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[2]),
        .Q(\s1_reg[0][17]_0 [2]));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[0].g_lut.p_q[2]_i_2_n_0 ,\g_row[0].g_col[0].g_lut.p_q[2]_i_3_n_0 ,\g_row[0].g_col[0].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[0].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ,p_0_in[2:0]}),
        .S(S));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[3]),
        .Q(\s1_reg[0][17]_0 [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[4]),
        .Q(\s1_reg[0][17]_0 [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[5]),
        .Q(\s1_reg[0][17]_0 [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[6]),
        .Q(\s1_reg[0][17]_0 [6]));
  CARRY4 \g_row[0].g_col[0].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[0].g_col[0].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[0].g_lut.p_q[6]_i_2_n_0 ,\g_row[0].g_col[0].g_lut.p_q[6]_i_3_n_0 ,\g_row[0].g_col[0].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O(p_0_in[6:3]),
        .S({\g_row[0].g_col[0].g_lut.p_q[6]_i_5_n_0 ,\g_row[0].g_col[0].g_lut.p_q[6]_i_6_n_0 ,\g_row[0].g_col[0].g_lut.p_q[6]_i_7_n_0 ,\g_row[0].g_col[0].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[7]),
        .Q(\s1_reg[0][17]_0 [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[8]),
        .Q(\s1_reg[0][17]_0 [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[0].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(p_0_in[9]),
        .Q(\s1_reg[0][17]_0 [9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_12 
       (.I0(\coef[1] [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .I2(\coef[1] [1]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .I4(\coef[1] [0]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_13 
       (.I0(\coef[1] [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I2(\coef[1] [1]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .I4(\coef[1] [0]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_14 
       (.I0(\coef[1] [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I2(\coef[1] [1]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I4(\coef[1] [0]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_15 
       (.I0(\coef[1] [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I2(\coef[1] [1]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I4(\coef[1] [0]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_2 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_20 
       (.I0(\coef[1] [4]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I2(\coef[1] [5]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I4(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I5(\coef[1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_21 
       (.I0(\coef[1] [4]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I2(\coef[1] [5]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_22 
       (.I0(\coef[1] [3]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_27 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .I1(\coef[1] [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_28 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .I1(\coef[1] [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_29 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I1(\coef[1] [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_3 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_30 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I1(\coef[1] [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_31 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I1(\coef[1] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_4 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_5 
       (.I0(\coef[1] [6]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [0]),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_6 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_7 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_8 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[1].g_lut.p_q[10]_i_9 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_13 
       (.I0(\coef[1] [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_14 
       (.I0(\coef[1] [1]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .I2(\coef[1] [2]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_15 
       (.I0(\coef[1] [2]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .I2(\coef[1] [1]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .I4(\coef[1] [0]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_16 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .I1(\coef[1] [2]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_17 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .I1(\coef[1] [1]),
        .I2(\coef[1] [2]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_2 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_24 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [0]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I2(\coef[1] [7]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I4(\coef[1] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_25 
       (.I0(\coef[1] [6]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I2(\coef[1] [7]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_26 
       (.I0(\coef[1] [5]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .I2(\coef[1] [4]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .I4(\coef[1] [3]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_27 
       (.I0(\coef[1] [5]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I2(\coef[1] [4]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .I4(\coef[1] [3]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_28 
       (.I0(\coef[1] [5]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I2(\coef[1] [4]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I4(\coef[1] [3]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_29 
       (.I0(\coef[1] [5]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I2(\coef[1] [4]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I4(\coef[1] [3]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_3 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_34 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .I1(\coef[1] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_35 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [4]),
        .I1(\coef[1] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_36 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I1(\coef[1] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_37 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I1(\coef[1] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_4 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_5 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_7 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_8 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[1].g_lut.p_q[14]_i_9 
       (.I0(\g_row[0].g_col[1].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_15 
       (.I0(\coef[1] [5]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_16 
       (.I0(\coef[1] [4]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .I2(\coef[1] [5]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .O(\g_row[0].g_col[1].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_17 
       (.I0(\coef[1] [5]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [5]),
        .I2(\coef[1] [4]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .I4(\coef[1] [3]),
        .I5(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_18 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .I1(\coef[1] [5]),
        .O(\g_row[0].g_col[1].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_19 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [6]),
        .I1(\coef[1] [4]),
        .I2(\coef[1] [5]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[16]_i_5 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [7]),
        .I1(\coef[1] [7]),
        .O(\g_row[0].g_col[1].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_2 
       (.I0(\coef[1] [1]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [2]),
        .I2(\coef[1] [2]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I4(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I5(\coef[1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_3 
       (.I0(\coef[1] [1]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .I2(\coef[1] [2]),
        .I3(\g_row[0].g_tap[1].taps_reg[0][1][7] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_4 
       (.I0(\coef[1] [0]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [1]),
        .O(\g_row[0].g_col[1].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[1].g_lut.p_q[2]_i_9 
       (.I0(\g_row[0].g_tap[1].taps_reg[0][1][7] [3]),
        .I1(\coef[1] [0]),
        .O(\g_row[0].g_col[1].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[6]_i_2 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[6]_i_3 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[1].g_lut.p_q[6]_i_4 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[0].g_col[1].g_lut.p_q[6]_i_5 
       (.I0(\coef[1] [6]),
        .I1(\g_row[0].g_tap[1].taps_reg[0][1][7] [0]),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[0].g_col[1].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair61" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[0].g_col[1].g_lut.p_q[6]_i_6 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[1].g_lut.p_q[6]_i_7 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[0].g_col[1].g_lut.p_q[6]_i_8 
       (.I0(\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[0].g_col[1].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(\s1_reg[0][15] [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(\s1_reg[0][15] [10]));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[1].g_lut.p_q[10]_i_2_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_3_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_4_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[0].g_col[1].g_lut.p_q[10]_i_6_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_7_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_8_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[0].g_col[1].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[1][1] ));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[1].g_lut.p_q[10]_i_20_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_21_n_0 ,\g_row[0].g_col[1].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[0].g_tap[1].taps_reg[0][1][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(\s1_reg[0][15] [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(\s1_reg[0][15] [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(\s1_reg[0][15] [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(\s1_reg[0][15] [14]));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[1].g_lut.p_q[14]_i_2_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_3_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_4_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[1][5] ,\g_row[0].g_col[1].g_lut.p_q[14]_i_7_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_8_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[0].g_col[1].g_lut.p_q[14]_i_13_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_14_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[0].g_col[1].g_lut.p_q[14]_i_16_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[1][0] }));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[1][7] ,1'b0}),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[0].g_tap[1].taps_reg[0][1][2]_1 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_24_n_0 ,\g_row[0].g_col[1].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[0].g_col[1].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[1][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(\s1_reg[0][15] [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(\prod[1] ));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[1][5]_0 }));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[0].g_col[1].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[1][7]_0 ),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[14]_0 ,\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[1][6] ));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[0].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[14]_2 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[0].g_col[1].g_lut.p_q[16]_i_15_n_0 ,\g_row[0].g_col[1].g_lut.p_q[16]_i_16_n_0 ,\g_row[0].g_col[1].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],\g_row[0].g_col[1].g_lut.p_q_reg[14]_1 ,\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[0].g_col[1].g_lut.p_q[16]_i_18_n_0 ,\g_row[0].g_col[1].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[1][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(\s1_reg[0][15] [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(\s1_reg[0][15] [2]));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[1].g_lut.p_q[2]_i_2_n_0 ,\g_row[0].g_col[1].g_lut.p_q[2]_i_3_n_0 ,\g_row[0].g_col[1].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[0].g_tap[1].taps_reg[0][1][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(\s1_reg[0][15] [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(\s1_reg[0][15] [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(\s1_reg[0][15] [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(\s1_reg[0][15] [6]));
  CARRY4 \g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[1].g_lut.p_q[6]_i_2_n_0 ,\g_row[0].g_col[1].g_lut.p_q[6]_i_3_n_0 ,\g_row[0].g_col[1].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[0].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[0].g_col[1].g_lut.p_q[6]_i_5_n_0 ,\g_row[0].g_col[1].g_lut.p_q[6]_i_6_n_0 ,\g_row[0].g_col[1].g_lut.p_q[6]_i_7_n_0 ,\g_row[0].g_col[1].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(\s1_reg[0][15] [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(\s1_reg[0][15] [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[1].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(\s1_reg[0][15] [9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_12 
       (.I0(\coef[2] [2]),
        .I1(\g_row[0].taps_reg[0][2][7] [4]),
        .I2(\coef[2] [1]),
        .I3(\g_row[0].taps_reg[0][2][7] [5]),
        .I4(\coef[2] [0]),
        .I5(\g_row[0].taps_reg[0][2][7] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_13 
       (.I0(\coef[2] [2]),
        .I1(\g_row[0].taps_reg[0][2][7] [3]),
        .I2(\coef[2] [1]),
        .I3(\g_row[0].taps_reg[0][2][7] [4]),
        .I4(\coef[2] [0]),
        .I5(\g_row[0].taps_reg[0][2][7] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_14 
       (.I0(\coef[2] [2]),
        .I1(\g_row[0].taps_reg[0][2][7] [2]),
        .I2(\coef[2] [1]),
        .I3(\g_row[0].taps_reg[0][2][7] [3]),
        .I4(\coef[2] [0]),
        .I5(\g_row[0].taps_reg[0][2][7] [4]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_15 
       (.I0(\coef[2] [2]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .I2(\coef[2] [1]),
        .I3(\g_row[0].taps_reg[0][2][7] [2]),
        .I4(\coef[2] [0]),
        .I5(\g_row[0].taps_reg[0][2][7] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_2 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_20 
       (.I0(\coef[2] [4]),
        .I1(\g_row[0].taps_reg[0][2][7] [2]),
        .I2(\coef[2] [5]),
        .I3(\g_row[0].taps_reg[0][2][7] [1]),
        .I4(\g_row[0].taps_reg[0][2][7] [3]),
        .I5(\coef[2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_21 
       (.I0(\coef[2] [4]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .I2(\coef[2] [5]),
        .I3(\g_row[0].taps_reg[0][2][7] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_22 
       (.I0(\coef[2] [3]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_27 
       (.I0(\g_row[0].taps_reg[0][2][7] [5]),
        .I1(\coef[2] [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_28 
       (.I0(\g_row[0].taps_reg[0][2][7] [4]),
        .I1(\coef[2] [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_29 
       (.I0(\g_row[0].taps_reg[0][2][7] [3]),
        .I1(\coef[2] [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_3 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_30 
       (.I0(\g_row[0].taps_reg[0][2][7] [2]),
        .I1(\coef[2] [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_31 
       (.I0(\g_row[0].taps_reg[0][2][7] [3]),
        .I1(\coef[2] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_4 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_5 
       (.I0(\coef[2] [6]),
        .I1(\g_row[0].taps_reg[0][2][7] [0]),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_6 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_7 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_8 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[2].g_lut.p_q[10]_i_9 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_13 
       (.I0(\coef[2] [2]),
        .I1(\g_row[0].taps_reg[0][2][7] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_14 
       (.I0(\coef[2] [1]),
        .I1(\g_row[0].taps_reg[0][2][7] [7]),
        .I2(\coef[2] [2]),
        .I3(\g_row[0].taps_reg[0][2][7] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_15 
       (.I0(\coef[2] [2]),
        .I1(\g_row[0].taps_reg[0][2][7] [5]),
        .I2(\coef[2] [1]),
        .I3(\g_row[0].taps_reg[0][2][7] [6]),
        .I4(\coef[2] [0]),
        .I5(\g_row[0].taps_reg[0][2][7] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_16 
       (.I0(\g_row[0].taps_reg[0][2][7] [7]),
        .I1(\coef[2] [2]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_17 
       (.I0(\g_row[0].taps_reg[0][2][7] [6]),
        .I1(\coef[2] [1]),
        .I2(\coef[2] [2]),
        .I3(\g_row[0].taps_reg[0][2][7] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_2 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_24 
       (.I0(\g_row[0].taps_reg[0][2][7] [0]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .I2(\coef[2] [7]),
        .I3(\g_row[0].taps_reg[0][2][7] [2]),
        .I4(\coef[2] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_25 
       (.I0(\coef[2] [6]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .I2(\coef[2] [7]),
        .I3(\g_row[0].taps_reg[0][2][7] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_26 
       (.I0(\coef[2] [5]),
        .I1(\g_row[0].taps_reg[0][2][7] [4]),
        .I2(\coef[2] [4]),
        .I3(\g_row[0].taps_reg[0][2][7] [5]),
        .I4(\coef[2] [3]),
        .I5(\g_row[0].taps_reg[0][2][7] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_27 
       (.I0(\coef[2] [5]),
        .I1(\g_row[0].taps_reg[0][2][7] [3]),
        .I2(\coef[2] [4]),
        .I3(\g_row[0].taps_reg[0][2][7] [4]),
        .I4(\coef[2] [3]),
        .I5(\g_row[0].taps_reg[0][2][7] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_28 
       (.I0(\coef[2] [5]),
        .I1(\g_row[0].taps_reg[0][2][7] [2]),
        .I2(\coef[2] [4]),
        .I3(\g_row[0].taps_reg[0][2][7] [3]),
        .I4(\coef[2] [3]),
        .I5(\g_row[0].taps_reg[0][2][7] [4]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_29 
       (.I0(\coef[2] [5]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .I2(\coef[2] [4]),
        .I3(\g_row[0].taps_reg[0][2][7] [2]),
        .I4(\coef[2] [3]),
        .I5(\g_row[0].taps_reg[0][2][7] [3]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_3 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_34 
       (.I0(\g_row[0].taps_reg[0][2][7] [5]),
        .I1(\coef[2] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_35 
       (.I0(\g_row[0].taps_reg[0][2][7] [4]),
        .I1(\coef[2] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_36 
       (.I0(\g_row[0].taps_reg[0][2][7] [3]),
        .I1(\coef[2] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_37 
       (.I0(\g_row[0].taps_reg[0][2][7] [2]),
        .I1(\coef[2] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_4 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_5 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_7 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_8 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[0].g_col[2].g_lut.p_q[14]_i_9 
       (.I0(\g_row[0].g_col[2].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_15 
       (.I0(\coef[2] [5]),
        .I1(\g_row[0].taps_reg[0][2][7] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_16 
       (.I0(\coef[2] [4]),
        .I1(\g_row[0].taps_reg[0][2][7] [7]),
        .I2(\coef[2] [5]),
        .I3(\g_row[0].taps_reg[0][2][7] [6]),
        .O(\g_row[0].g_col[2].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_17 
       (.I0(\coef[2] [5]),
        .I1(\g_row[0].taps_reg[0][2][7] [5]),
        .I2(\coef[2] [4]),
        .I3(\g_row[0].taps_reg[0][2][7] [6]),
        .I4(\coef[2] [3]),
        .I5(\g_row[0].taps_reg[0][2][7] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_18 
       (.I0(\g_row[0].taps_reg[0][2][7] [7]),
        .I1(\coef[2] [5]),
        .O(\g_row[0].g_col[2].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_19 
       (.I0(\g_row[0].taps_reg[0][2][7] [6]),
        .I1(\coef[2] [4]),
        .I2(\coef[2] [5]),
        .I3(\g_row[0].taps_reg[0][2][7] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[16]_i_5 
       (.I0(\g_row[0].taps_reg[0][2][7] [7]),
        .I1(\coef[2] [7]),
        .O(\g_row[0].g_col[2].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_2 
       (.I0(\coef[2] [1]),
        .I1(\g_row[0].taps_reg[0][2][7] [2]),
        .I2(\coef[2] [2]),
        .I3(\g_row[0].taps_reg[0][2][7] [1]),
        .I4(\g_row[0].taps_reg[0][2][7] [3]),
        .I5(\coef[2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_3 
       (.I0(\coef[2] [1]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .I2(\coef[2] [2]),
        .I3(\g_row[0].taps_reg[0][2][7] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_4 
       (.I0(\coef[2] [0]),
        .I1(\g_row[0].taps_reg[0][2][7] [1]),
        .O(\g_row[0].g_col[2].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[0].g_col[2].g_lut.p_q[2]_i_9 
       (.I0(\g_row[0].taps_reg[0][2][7] [3]),
        .I1(\coef[2] [0]),
        .O(\g_row[0].g_col[2].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[6]_i_2 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[6]_i_3 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[0].g_col[2].g_lut.p_q[6]_i_4 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair10" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[0].g_col[2].g_lut.p_q[6]_i_5 
       (.I0(\coef[2] [6]),
        .I1(\g_row[0].taps_reg[0][2][7] [0]),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[0].g_col[2].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair62" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[0].g_col[2].g_lut.p_q[6]_i_6 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[0].g_col[2].g_lut.p_q[6]_i_7 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[0].g_col[2].g_lut.p_q[6]_i_8 
       (.I0(\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[0].g_col[2].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(\s1_reg[1][17]_0 [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(\s1_reg[1][17]_0 [10]));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[2].g_lut.p_q[10]_i_2_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_3_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_4_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[0].g_col[2].g_lut.p_q[10]_i_6_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_7_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_8_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[0].g_col[2].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[2][1] ));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[2].g_lut.p_q[10]_i_20_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_21_n_0 ,\g_row[0].g_col[2].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[0].taps_reg[0][2][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(\s1_reg[1][17]_0 [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(\s1_reg[1][17]_0 [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(\s1_reg[1][17]_0 [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(\s1_reg[1][17]_0 [14]));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[2].g_lut.p_q[14]_i_2_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_3_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_4_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[2][5] ,\g_row[0].g_col[2].g_lut.p_q[14]_i_7_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_8_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[0].g_col[2].g_lut.p_q[14]_i_13_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_14_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[0].g_col[2].g_lut.p_q[14]_i_16_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[2][0] }));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[2][7] ,1'b0}),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[0].taps_reg[0][2][2]_1 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_24_n_0 ,\g_row[0].g_col[2].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[0].g_col[2].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[2][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(\s1_reg[1][17]_0 [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(\s1_reg[1][17]_0 [16]));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[2][5]_0 }));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[0].g_col[2].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[2][7]_0 ),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[14]_0 ,\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[2][6] ));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[0].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[14]_2 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[0].g_col[2].g_lut.p_q[16]_i_15_n_0 ,\g_row[0].g_col[2].g_lut.p_q[16]_i_16_n_0 ,\g_row[0].g_col[2].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],\g_row[0].g_col[2].g_lut.p_q_reg[14]_1 ,\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[0].g_col[2].g_lut.p_q[16]_i_18_n_0 ,\g_row[0].g_col[2].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[2][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(\s1_reg[1][17]_0 [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(\s1_reg[1][17]_0 [2]));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[2].g_lut.p_q[2]_i_2_n_0 ,\g_row[0].g_col[2].g_lut.p_q[2]_i_3_n_0 ,\g_row[0].g_col[2].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[0].taps_reg[0][2][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(\s1_reg[1][17]_0 [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(\s1_reg[1][17]_0 [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(\s1_reg[1][17]_0 [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(\s1_reg[1][17]_0 [6]));
  CARRY4 \g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[0].g_col[2].g_lut.p_q[6]_i_2_n_0 ,\g_row[0].g_col[2].g_lut.p_q[6]_i_3_n_0 ,\g_row[0].g_col[2].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[0].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[0].g_col[2].g_lut.p_q[6]_i_5_n_0 ,\g_row[0].g_col[2].g_lut.p_q[6]_i_6_n_0 ,\g_row[0].g_col[2].g_lut.p_q[6]_i_7_n_0 ,\g_row[0].g_col[2].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(\s1_reg[1][17]_0 [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(\s1_reg[1][17]_0 [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[0].g_col[2].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[0].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(\s1_reg[1][17]_0 [9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_12 
       (.I0(\coef[3] [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .I2(\coef[3] [1]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .I4(\coef[3] [0]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_13 
       (.I0(\coef[3] [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I2(\coef[3] [1]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .I4(\coef[3] [0]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_14 
       (.I0(\coef[3] [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I2(\coef[3] [1]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I4(\coef[3] [0]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_15 
       (.I0(\coef[3] [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I2(\coef[3] [1]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I4(\coef[3] [0]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_2 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_20 
       (.I0(\coef[3] [4]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I2(\coef[3] [5]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I4(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I5(\coef[3] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_21 
       (.I0(\coef[3] [4]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I2(\coef[3] [5]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_22 
       (.I0(\coef[3] [3]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_27 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .I1(\coef[3] [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_28 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .I1(\coef[3] [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_29 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I1(\coef[3] [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_3 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_30 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I1(\coef[3] [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_31 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I1(\coef[3] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_4 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_5 
       (.I0(\coef[3] [6]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [0]),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_6 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_7 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_8 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[0].g_lut.p_q[10]_i_9 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_13 
       (.I0(\coef[3] [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_14 
       (.I0(\coef[3] [1]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .I2(\coef[3] [2]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_15 
       (.I0(\coef[3] [2]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .I2(\coef[3] [1]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .I4(\coef[3] [0]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_16 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .I1(\coef[3] [2]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_17 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .I1(\coef[3] [1]),
        .I2(\coef[3] [2]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_2 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_24 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [0]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I2(\coef[3] [7]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I4(\coef[3] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_25 
       (.I0(\coef[3] [6]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I2(\coef[3] [7]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_26 
       (.I0(\coef[3] [5]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .I2(\coef[3] [4]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .I4(\coef[3] [3]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_27 
       (.I0(\coef[3] [5]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I2(\coef[3] [4]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .I4(\coef[3] [3]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_28 
       (.I0(\coef[3] [5]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I2(\coef[3] [4]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I4(\coef[3] [3]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_29 
       (.I0(\coef[3] [5]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I2(\coef[3] [4]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I4(\coef[3] [3]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_3 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_34 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .I1(\coef[3] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_35 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [4]),
        .I1(\coef[3] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_36 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I1(\coef[3] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_37 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I1(\coef[3] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_4 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_5 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_7 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_8 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[0].g_lut.p_q[14]_i_9 
       (.I0(\g_row[1].g_col[0].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_15 
       (.I0(\coef[3] [5]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_16 
       (.I0(\coef[3] [4]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .I2(\coef[3] [5]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .O(\g_row[1].g_col[0].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_17 
       (.I0(\coef[3] [5]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [5]),
        .I2(\coef[3] [4]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .I4(\coef[3] [3]),
        .I5(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_18 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .I1(\coef[3] [5]),
        .O(\g_row[1].g_col[0].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_19 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [6]),
        .I1(\coef[3] [4]),
        .I2(\coef[3] [5]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[16]_i_5 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [7]),
        .I1(\coef[3] [7]),
        .O(\g_row[1].g_col[0].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_2 
       (.I0(\coef[3] [1]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [2]),
        .I2(\coef[3] [2]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I4(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I5(\coef[3] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_3 
       (.I0(\coef[3] [1]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .I2(\coef[3] [2]),
        .I3(\g_row[1].g_tap[0].taps_reg[1][0][7] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_4 
       (.I0(\coef[3] [0]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [1]),
        .O(\g_row[1].g_col[0].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[0].g_lut.p_q[2]_i_9 
       (.I0(\g_row[1].g_tap[0].taps_reg[1][0][7] [3]),
        .I1(\coef[3] [0]),
        .O(\g_row[1].g_col[0].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[6]_i_2 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[6]_i_3 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[0].g_lut.p_q[6]_i_4 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair15" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[1].g_col[0].g_lut.p_q[6]_i_5 
       (.I0(\coef[3] [6]),
        .I1(\g_row[1].g_tap[0].taps_reg[1][0][7] [0]),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[1].g_col[0].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair63" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[1].g_col[0].g_lut.p_q[6]_i_6 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[0].g_lut.p_q[6]_i_7 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[1].g_col[0].g_lut.p_q[6]_i_8 
       (.I0(\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[1].g_col[0].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(\s1_reg[1][15] [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(\s1_reg[1][15] [10]));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[0].g_lut.p_q[10]_i_2_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_3_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_4_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[1].g_col[0].g_lut.p_q[10]_i_6_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_7_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_8_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[1].g_col[0].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[3][1] ));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[0].g_lut.p_q[10]_i_20_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_21_n_0 ,\g_row[1].g_col[0].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[1].g_tap[0].taps_reg[1][0][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(\s1_reg[1][15] [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(\s1_reg[1][15] [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(\s1_reg[1][15] [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(\s1_reg[1][15] [14]));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[0].g_lut.p_q[14]_i_2_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_3_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_4_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[3][5] ,\g_row[1].g_col[0].g_lut.p_q[14]_i_7_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_8_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[1].g_col[0].g_lut.p_q[14]_i_13_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_14_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[1].g_col[0].g_lut.p_q[14]_i_16_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[3][0] }));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[3][7] ,1'b0}),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[1].g_tap[0].taps_reg[1][0][2]_1 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_24_n_0 ,\g_row[1].g_col[0].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[1].g_col[0].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[3][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(\s1_reg[1][15] [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(\prod[3] ));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[3][5]_0 }));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[1].g_col[0].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[3][7]_0 ),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[14]_0 ,\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[3][6] ));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[1].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[14]_2 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[1].g_col[0].g_lut.p_q[16]_i_15_n_0 ,\g_row[1].g_col[0].g_lut.p_q[16]_i_16_n_0 ,\g_row[1].g_col[0].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],\g_row[1].g_col[0].g_lut.p_q_reg[14]_1 ,\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[1].g_col[0].g_lut.p_q[16]_i_18_n_0 ,\g_row[1].g_col[0].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[3][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(\s1_reg[1][15] [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(\s1_reg[1][15] [2]));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[0].g_lut.p_q[2]_i_2_n_0 ,\g_row[1].g_col[0].g_lut.p_q[2]_i_3_n_0 ,\g_row[1].g_col[0].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[1].g_tap[0].taps_reg[1][0][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(\s1_reg[1][15] [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(\s1_reg[1][15] [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(\s1_reg[1][15] [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(\s1_reg[1][15] [6]));
  CARRY4 \g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[0].g_lut.p_q[6]_i_2_n_0 ,\g_row[1].g_col[0].g_lut.p_q[6]_i_3_n_0 ,\g_row[1].g_col[0].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[1].g_col[0].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[1].g_col[0].g_lut.p_q[6]_i_5_n_0 ,\g_row[1].g_col[0].g_lut.p_q[6]_i_6_n_0 ,\g_row[1].g_col[0].g_lut.p_q[6]_i_7_n_0 ,\g_row[1].g_col[0].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(\s1_reg[1][15] [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(\s1_reg[1][15] [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[0].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[0].g_col[2].g_lut.p_q_reg[0]_0 ),
        .D(\g_row[1].g_col[0].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(\s1_reg[1][15] [9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_12 
       (.I0(\coef[4] [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .I2(\coef[4] [1]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .I4(\coef[4] [0]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_13 
       (.I0(\coef[4] [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I2(\coef[4] [1]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .I4(\coef[4] [0]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_14 
       (.I0(\coef[4] [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I2(\coef[4] [1]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I4(\coef[4] [0]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_15 
       (.I0(\coef[4] [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I2(\coef[4] [1]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I4(\coef[4] [0]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_2 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_20 
       (.I0(\coef[4] [4]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I2(\coef[4] [5]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I4(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I5(\coef[4] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_21 
       (.I0(\coef[4] [4]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I2(\coef[4] [5]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_22 
       (.I0(\coef[4] [3]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_27 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .I1(\coef[4] [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_28 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .I1(\coef[4] [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_29 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I1(\coef[4] [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_3 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_30 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I1(\coef[4] [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_31 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I1(\coef[4] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_4 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_5 
       (.I0(\coef[4] [6]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [0]),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_6 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_7 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_8 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[1].g_lut.p_q[10]_i_9 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_13 
       (.I0(\coef[4] [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_14 
       (.I0(\coef[4] [1]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .I2(\coef[4] [2]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_15 
       (.I0(\coef[4] [2]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .I2(\coef[4] [1]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .I4(\coef[4] [0]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_16 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .I1(\coef[4] [2]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_17 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .I1(\coef[4] [1]),
        .I2(\coef[4] [2]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_2 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_24 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [0]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I2(\coef[4] [7]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I4(\coef[4] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_25 
       (.I0(\coef[4] [6]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I2(\coef[4] [7]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_26 
       (.I0(\coef[4] [5]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .I2(\coef[4] [4]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .I4(\coef[4] [3]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_27 
       (.I0(\coef[4] [5]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I2(\coef[4] [4]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .I4(\coef[4] [3]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_28 
       (.I0(\coef[4] [5]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I2(\coef[4] [4]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I4(\coef[4] [3]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_29 
       (.I0(\coef[4] [5]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I2(\coef[4] [4]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I4(\coef[4] [3]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_3 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_6 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_6 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_34 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .I1(\coef[4] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_35 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [4]),
        .I1(\coef[4] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_36 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I1(\coef[4] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_37 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I1(\coef[4] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_4 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_7 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_7 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_5 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_7 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_6 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_6 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_8 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_7 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_7 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_6 ),
        .I4(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_6 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[1].g_lut.p_q[14]_i_9 
       (.I0(\g_row[1].g_col[1].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_7 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_7 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_16 
       (.I0(\coef[4] [5]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q[16]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_17 
       (.I0(\coef[4] [4]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .I2(\coef[4] [5]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .O(\g_row[1].g_col[1].g_lut.p_q[16]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_18 
       (.I0(\coef[4] [5]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [5]),
        .I2(\coef[4] [4]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .I4(\coef[4] [3]),
        .I5(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q[16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_19 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .I1(\coef[4] [5]),
        .O(\g_row[1].g_col[1].g_lut.p_q[16]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_2 
       (.I0(rst_n),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_20 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [6]),
        .I1(\coef[4] [4]),
        .I2(\coef[4] [5]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q[16]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[16]_i_6 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [7]),
        .I1(\coef[4] [7]),
        .O(\g_row[1].g_col[1].g_lut.p_q[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_2 
       (.I0(\coef[4] [1]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [2]),
        .I2(\coef[4] [2]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I4(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I5(\coef[4] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_3 
       (.I0(\coef[4] [1]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .I2(\coef[4] [2]),
        .I3(\g_row[1].g_tap[1].taps_reg[1][1][7] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_4 
       (.I0(\coef[4] [0]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [1]),
        .O(\g_row[1].g_col[1].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[1].g_lut.p_q[2]_i_9 
       (.I0(\g_row[1].g_tap[1].taps_reg[1][1][7] [3]),
        .I1(\coef[4] [0]),
        .O(\g_row[1].g_col[1].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[6]_i_2 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[6]_i_3 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[1].g_lut.p_q[6]_i_4 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair20" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[1].g_col[1].g_lut.p_q[6]_i_5 
       (.I0(\coef[4] [6]),
        .I1(\g_row[1].g_tap[1].taps_reg[1][1][7] [0]),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[1].g_col[1].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair64" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[1].g_col[1].g_lut.p_q[6]_i_6 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[1].g_lut.p_q[6]_i_7 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[1].g_col[1].g_lut.p_q[6]_i_8 
       (.I0(\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[1].g_col[1].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(\s1_reg[2][17]_0 [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(\s1_reg[2][17]_0 [10]));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[1].g_lut.p_q[10]_i_2_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_3_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_4_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[1].g_col[1].g_lut.p_q[10]_i_6_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_7_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_8_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[1].g_col[1].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[4][1] ));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[1].g_lut.p_q[10]_i_20_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_21_n_0 ,\g_row[1].g_col[1].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[1].g_tap[1].taps_reg[1][1][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(\s1_reg[2][17]_0 [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(\s1_reg[2][17]_0 [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(\s1_reg[2][17]_0 [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(\s1_reg[2][17]_0 [14]));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[1].g_lut.p_q[14]_i_2_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_3_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_4_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[4][5] ,\g_row[1].g_col[1].g_lut.p_q[14]_i_7_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_8_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[1].g_col[1].g_lut.p_q[14]_i_13_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_14_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[1].g_col[1].g_lut.p_q[14]_i_16_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[4][0] }));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[4][7] ,1'b0}),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[1].g_tap[1].taps_reg[1][1][2]_1 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_24_n_0 ,\g_row[1].g_col[1].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[1].g_col[1].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[4][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(\s1_reg[2][17]_0 [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(\s1_reg[2][17]_0 [16]));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3_n_6 ,\coef_reg[4][5]_0 }));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_0 ),
        .CO(\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3_O_UNCONNECTED [3:2],\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_3_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[1].g_col[1].g_lut.p_q[16]_i_6_n_0 }));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[4][7]_0 ),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[14]_0 ,\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_5_n_7 }),
        .S(\coef_reg[4][6] ));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7 
       (.CI(\g_row[1].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[14]_2 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[1].g_col[1].g_lut.p_q[16]_i_16_n_0 ,\g_row[1].g_col[1].g_lut.p_q[16]_i_17_n_0 ,\g_row[1].g_col[1].g_lut.p_q[16]_i_18_n_0 }),
        .O({\NLW_g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_O_UNCONNECTED [3],\g_row[1].g_col[1].g_lut.p_q_reg[14]_1 ,\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[16]_i_7_n_7 }),
        .S({1'b1,\g_row[1].g_col[1].g_lut.p_q[16]_i_19_n_0 ,\g_row[1].g_col[1].g_lut.p_q[16]_i_20_n_0 ,\coef_reg[4][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(\s1_reg[2][17]_0 [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(\s1_reg[2][17]_0 [2]));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[1].g_lut.p_q[2]_i_2_n_0 ,\g_row[1].g_col[1].g_lut.p_q[2]_i_3_n_0 ,\g_row[1].g_col[1].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[1].g_tap[1].taps_reg[1][1][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(\s1_reg[2][17]_0 [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(\s1_reg[2][17]_0 [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(\s1_reg[2][17]_0 [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(\s1_reg[2][17]_0 [6]));
  CARRY4 \g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[1].g_lut.p_q[6]_i_2_n_0 ,\g_row[1].g_col[1].g_lut.p_q[6]_i_3_n_0 ,\g_row[1].g_col[1].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[1].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[1].g_col[1].g_lut.p_q[6]_i_5_n_0 ,\g_row[1].g_col[1].g_lut.p_q[6]_i_6_n_0 ,\g_row[1].g_col[1].g_lut.p_q[6]_i_7_n_0 ,\g_row[1].g_col[1].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(\s1_reg[2][17]_0 [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(\s1_reg[2][17]_0 [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[1].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(\s1_reg[2][17]_0 [9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_12 
       (.I0(\coef[5] [2]),
        .I1(\g_row[1].taps_reg[1][2][7] [4]),
        .I2(\coef[5] [1]),
        .I3(\g_row[1].taps_reg[1][2][7] [5]),
        .I4(\coef[5] [0]),
        .I5(\g_row[1].taps_reg[1][2][7] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_13 
       (.I0(\coef[5] [2]),
        .I1(\g_row[1].taps_reg[1][2][7] [3]),
        .I2(\coef[5] [1]),
        .I3(\g_row[1].taps_reg[1][2][7] [4]),
        .I4(\coef[5] [0]),
        .I5(\g_row[1].taps_reg[1][2][7] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_14 
       (.I0(\coef[5] [2]),
        .I1(\g_row[1].taps_reg[1][2][7] [2]),
        .I2(\coef[5] [1]),
        .I3(\g_row[1].taps_reg[1][2][7] [3]),
        .I4(\coef[5] [0]),
        .I5(\g_row[1].taps_reg[1][2][7] [4]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_15 
       (.I0(\coef[5] [2]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .I2(\coef[5] [1]),
        .I3(\g_row[1].taps_reg[1][2][7] [2]),
        .I4(\coef[5] [0]),
        .I5(\g_row[1].taps_reg[1][2][7] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_2 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_20 
       (.I0(\coef[5] [4]),
        .I1(\g_row[1].taps_reg[1][2][7] [2]),
        .I2(\coef[5] [5]),
        .I3(\g_row[1].taps_reg[1][2][7] [1]),
        .I4(\g_row[1].taps_reg[1][2][7] [3]),
        .I5(\coef[5] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_21 
       (.I0(\coef[5] [4]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .I2(\coef[5] [5]),
        .I3(\g_row[1].taps_reg[1][2][7] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_22 
       (.I0(\coef[5] [3]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_27 
       (.I0(\g_row[1].taps_reg[1][2][7] [5]),
        .I1(\coef[5] [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_28 
       (.I0(\g_row[1].taps_reg[1][2][7] [4]),
        .I1(\coef[5] [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_29 
       (.I0(\g_row[1].taps_reg[1][2][7] [3]),
        .I1(\coef[5] [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_3 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_30 
       (.I0(\g_row[1].taps_reg[1][2][7] [2]),
        .I1(\coef[5] [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_31 
       (.I0(\g_row[1].taps_reg[1][2][7] [3]),
        .I1(\coef[5] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_4 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_5 
       (.I0(\coef[5] [6]),
        .I1(\g_row[1].taps_reg[1][2][7] [0]),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_6 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_7 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_8 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[2].g_lut.p_q[10]_i_9 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_13 
       (.I0(\coef[5] [2]),
        .I1(\g_row[1].taps_reg[1][2][7] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_14 
       (.I0(\coef[5] [1]),
        .I1(\g_row[1].taps_reg[1][2][7] [7]),
        .I2(\coef[5] [2]),
        .I3(\g_row[1].taps_reg[1][2][7] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_15 
       (.I0(\coef[5] [2]),
        .I1(\g_row[1].taps_reg[1][2][7] [5]),
        .I2(\coef[5] [1]),
        .I3(\g_row[1].taps_reg[1][2][7] [6]),
        .I4(\coef[5] [0]),
        .I5(\g_row[1].taps_reg[1][2][7] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_16 
       (.I0(\g_row[1].taps_reg[1][2][7] [7]),
        .I1(\coef[5] [2]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_17 
       (.I0(\g_row[1].taps_reg[1][2][7] [6]),
        .I1(\coef[5] [1]),
        .I2(\coef[5] [2]),
        .I3(\g_row[1].taps_reg[1][2][7] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_2 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_24 
       (.I0(\g_row[1].taps_reg[1][2][7] [0]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .I2(\coef[5] [7]),
        .I3(\g_row[1].taps_reg[1][2][7] [2]),
        .I4(\coef[5] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_25 
       (.I0(\coef[5] [6]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .I2(\coef[5] [7]),
        .I3(\g_row[1].taps_reg[1][2][7] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_26 
       (.I0(\coef[5] [5]),
        .I1(\g_row[1].taps_reg[1][2][7] [4]),
        .I2(\coef[5] [4]),
        .I3(\g_row[1].taps_reg[1][2][7] [5]),
        .I4(\coef[5] [3]),
        .I5(\g_row[1].taps_reg[1][2][7] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_27 
       (.I0(\coef[5] [5]),
        .I1(\g_row[1].taps_reg[1][2][7] [3]),
        .I2(\coef[5] [4]),
        .I3(\g_row[1].taps_reg[1][2][7] [4]),
        .I4(\coef[5] [3]),
        .I5(\g_row[1].taps_reg[1][2][7] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_28 
       (.I0(\coef[5] [5]),
        .I1(\g_row[1].taps_reg[1][2][7] [2]),
        .I2(\coef[5] [4]),
        .I3(\g_row[1].taps_reg[1][2][7] [3]),
        .I4(\coef[5] [3]),
        .I5(\g_row[1].taps_reg[1][2][7] [4]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_29 
       (.I0(\coef[5] [5]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .I2(\coef[5] [4]),
        .I3(\g_row[1].taps_reg[1][2][7] [2]),
        .I4(\coef[5] [3]),
        .I5(\g_row[1].taps_reg[1][2][7] [3]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_3 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_34 
       (.I0(\g_row[1].taps_reg[1][2][7] [5]),
        .I1(\coef[5] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_35 
       (.I0(\g_row[1].taps_reg[1][2][7] [4]),
        .I1(\coef[5] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_36 
       (.I0(\g_row[1].taps_reg[1][2][7] [3]),
        .I1(\coef[5] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_37 
       (.I0(\g_row[1].taps_reg[1][2][7] [2]),
        .I1(\coef[5] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_4 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_5 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_7 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_8 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[1].g_col[2].g_lut.p_q[14]_i_9 
       (.I0(\g_row[1].g_col[2].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_15 
       (.I0(\coef[5] [5]),
        .I1(\g_row[1].taps_reg[1][2][7] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_16 
       (.I0(\coef[5] [4]),
        .I1(\g_row[1].taps_reg[1][2][7] [7]),
        .I2(\coef[5] [5]),
        .I3(\g_row[1].taps_reg[1][2][7] [6]),
        .O(\g_row[1].g_col[2].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_17 
       (.I0(\coef[5] [5]),
        .I1(\g_row[1].taps_reg[1][2][7] [5]),
        .I2(\coef[5] [4]),
        .I3(\g_row[1].taps_reg[1][2][7] [6]),
        .I4(\coef[5] [3]),
        .I5(\g_row[1].taps_reg[1][2][7] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_18 
       (.I0(\g_row[1].taps_reg[1][2][7] [7]),
        .I1(\coef[5] [5]),
        .O(\g_row[1].g_col[2].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_19 
       (.I0(\g_row[1].taps_reg[1][2][7] [6]),
        .I1(\coef[5] [4]),
        .I2(\coef[5] [5]),
        .I3(\g_row[1].taps_reg[1][2][7] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[16]_i_5 
       (.I0(\g_row[1].taps_reg[1][2][7] [7]),
        .I1(\coef[5] [7]),
        .O(\g_row[1].g_col[2].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_2 
       (.I0(\coef[5] [1]),
        .I1(\g_row[1].taps_reg[1][2][7] [2]),
        .I2(\coef[5] [2]),
        .I3(\g_row[1].taps_reg[1][2][7] [1]),
        .I4(\g_row[1].taps_reg[1][2][7] [3]),
        .I5(\coef[5] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_3 
       (.I0(\coef[5] [1]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .I2(\coef[5] [2]),
        .I3(\g_row[1].taps_reg[1][2][7] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_4 
       (.I0(\coef[5] [0]),
        .I1(\g_row[1].taps_reg[1][2][7] [1]),
        .O(\g_row[1].g_col[2].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[1].g_col[2].g_lut.p_q[2]_i_9 
       (.I0(\g_row[1].taps_reg[1][2][7] [3]),
        .I1(\coef[5] [0]),
        .O(\g_row[1].g_col[2].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[6]_i_2 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[6]_i_3 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[1].g_col[2].g_lut.p_q[6]_i_4 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair25" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[1].g_col[2].g_lut.p_q[6]_i_5 
       (.I0(\coef[5] [6]),
        .I1(\g_row[1].taps_reg[1][2][7] [0]),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[1].g_col[2].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair65" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[1].g_col[2].g_lut.p_q[6]_i_6 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[1].g_col[2].g_lut.p_q[6]_i_7 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[1].g_col[2].g_lut.p_q[6]_i_8 
       (.I0(\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[1].g_col[2].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(\s1_reg[2][15] [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(\s1_reg[2][15] [10]));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[2].g_lut.p_q[10]_i_2_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_3_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_4_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[1].g_col[2].g_lut.p_q[10]_i_6_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_7_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_8_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[1].g_col[2].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[5][1] ));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[2].g_lut.p_q[10]_i_20_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_21_n_0 ,\g_row[1].g_col[2].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[1].taps_reg[1][2][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(\s1_reg[2][15] [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(\s1_reg[2][15] [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(\s1_reg[2][15] [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(\s1_reg[2][15] [14]));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[2].g_lut.p_q[14]_i_2_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_3_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_4_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[5][5] ,\g_row[1].g_col[2].g_lut.p_q[14]_i_7_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_8_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[1].g_col[2].g_lut.p_q[14]_i_13_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_14_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[1].g_col[2].g_lut.p_q[14]_i_16_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[5][0] }));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[5][7] ,1'b0}),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[1].taps_reg[1][2][2]_1 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_24_n_0 ,\g_row[1].g_col[2].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[1].g_col[2].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[5][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(\s1_reg[2][15] [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(\prod[5] ));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[5][5]_0 }));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[1].g_col[2].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[5][7]_0 ),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[14]_0 ,\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[5][6] ));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[1].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[14]_2 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[1].g_col[2].g_lut.p_q[16]_i_15_n_0 ,\g_row[1].g_col[2].g_lut.p_q[16]_i_16_n_0 ,\g_row[1].g_col[2].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],\g_row[1].g_col[2].g_lut.p_q_reg[14]_1 ,\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[1].g_col[2].g_lut.p_q[16]_i_18_n_0 ,\g_row[1].g_col[2].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[5][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(\s1_reg[2][15] [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(\s1_reg[2][15] [2]));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[2].g_lut.p_q[2]_i_2_n_0 ,\g_row[1].g_col[2].g_lut.p_q[2]_i_3_n_0 ,\g_row[1].g_col[2].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[1].taps_reg[1][2][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(\s1_reg[2][15] [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(\s1_reg[2][15] [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(\s1_reg[2][15] [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(\s1_reg[2][15] [6]));
  CARRY4 \g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[1].g_col[2].g_lut.p_q[6]_i_2_n_0 ,\g_row[1].g_col[2].g_lut.p_q[6]_i_3_n_0 ,\g_row[1].g_col[2].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[1].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[1].g_col[2].g_lut.p_q[6]_i_5_n_0 ,\g_row[1].g_col[2].g_lut.p_q[6]_i_6_n_0 ,\g_row[1].g_col[2].g_lut.p_q[6]_i_7_n_0 ,\g_row[1].g_col[2].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(\s1_reg[2][15] [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(\s1_reg[2][15] [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[1].g_col[2].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[1].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(\s1_reg[2][15] [9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_12 
       (.I0(\coef[6] [2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .I2(\coef[6] [1]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .I4(\coef[6] [0]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_13 
       (.I0(\coef[6] [2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I2(\coef[6] [1]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .I4(\coef[6] [0]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_14 
       (.I0(\coef[6] [2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I2(\coef[6] [1]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I4(\coef[6] [0]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_15 
       (.I0(\coef[6] [2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I2(\coef[6] [1]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I4(\coef[6] [0]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_2 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_20 
       (.I0(\coef[6] [4]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I2(\coef[6] [5]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I4(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I5(\coef[6] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_21 
       (.I0(\coef[6] [4]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I2(\coef[6] [5]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_22 
       (.I0(\coef[6] [3]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_27 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .I1(\coef[6] [2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_28 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .I1(\coef[6] [2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_29 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I1(\coef[6] [2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_3 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_30 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I1(\coef[6] [2]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_31 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I1(\coef[6] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_4 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_5 
       (.I0(\coef[6] [6]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [0]),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_6 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_7 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_8 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[0].g_lut.p_q[10]_i_9 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_13 
       (.I0(\coef[6] [2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_14 
       (.I0(\coef[6] [1]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .I2(\coef[6] [2]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_15 
       (.I0(\coef[6] [2]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .I2(\coef[6] [1]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .I4(\coef[6] [0]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_16 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .I1(\coef[6] [2]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_17 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .I1(\coef[6] [1]),
        .I2(\coef[6] [2]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_2 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_24 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [0]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I2(\coef[6] [7]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I4(\coef[6] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_25 
       (.I0(\coef[6] [6]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I2(\coef[6] [7]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_26 
       (.I0(\coef[6] [5]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .I2(\coef[6] [4]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .I4(\coef[6] [3]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_27 
       (.I0(\coef[6] [5]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I2(\coef[6] [4]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .I4(\coef[6] [3]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_28 
       (.I0(\coef[6] [5]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I2(\coef[6] [4]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I4(\coef[6] [3]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_29 
       (.I0(\coef[6] [5]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I2(\coef[6] [4]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I4(\coef[6] [3]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_3 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_34 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .I1(\coef[6] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_35 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [4]),
        .I1(\coef[6] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_36 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I1(\coef[6] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_37 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I1(\coef[6] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_4 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_5 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_7 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_8 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[0].g_lut.p_q[14]_i_9 
       (.I0(\g_row[2].g_col[0].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_15 
       (.I0(\coef[6] [5]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_16 
       (.I0(\coef[6] [4]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .I2(\coef[6] [5]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .O(\g_row[2].g_col[0].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_17 
       (.I0(\coef[6] [5]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [5]),
        .I2(\coef[6] [4]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .I4(\coef[6] [3]),
        .I5(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_18 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .I1(\coef[6] [5]),
        .O(\g_row[2].g_col[0].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_19 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [6]),
        .I1(\coef[6] [4]),
        .I2(\coef[6] [5]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[16]_i_5 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [7]),
        .I1(\coef[6] [7]),
        .O(\g_row[2].g_col[0].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_2 
       (.I0(\coef[6] [1]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [2]),
        .I2(\coef[6] [2]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I4(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I5(\coef[6] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_3 
       (.I0(\coef[6] [1]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .I2(\coef[6] [2]),
        .I3(\g_row[2].g_tap[0].taps_reg[2][0][7] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_4 
       (.I0(\coef[6] [0]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [1]),
        .O(\g_row[2].g_col[0].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[0].g_lut.p_q[2]_i_9 
       (.I0(\g_row[2].g_tap[0].taps_reg[2][0][7] [3]),
        .I1(\coef[6] [0]),
        .O(\g_row[2].g_col[0].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[6]_i_2 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[6]_i_3 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[0].g_lut.p_q[6]_i_4 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair30" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[2].g_col[0].g_lut.p_q[6]_i_5 
       (.I0(\coef[6] [6]),
        .I1(\g_row[2].g_tap[0].taps_reg[2][0][7] [0]),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[2].g_col[0].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair66" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[2].g_col[0].g_lut.p_q[6]_i_6 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[0].g_lut.p_q[6]_i_7 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[2].g_col[0].g_lut.p_q[6]_i_8 
       (.I0(\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[2].g_col[0].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(Q[0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(Q[10]));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[0].g_lut.p_q[10]_i_2_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_3_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_4_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[2].g_col[0].g_lut.p_q[10]_i_6_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_7_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_8_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[2].g_col[0].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[6][1] ));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[0].g_lut.p_q[10]_i_20_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_21_n_0 ,\g_row[2].g_col[0].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[2].g_tap[0].taps_reg[2][0][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(Q[11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(Q[12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(Q[13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(Q[14]));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[0].g_lut.p_q[14]_i_2_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_3_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_4_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[6][5] ,\g_row[2].g_col[0].g_lut.p_q[14]_i_7_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_8_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[2].g_col[0].g_lut.p_q[14]_i_13_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_14_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[2].g_col[0].g_lut.p_q[14]_i_16_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[6][0] }));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[6][7] ,1'b0}),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[2].g_tap[0].taps_reg[2][0][2]_1 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_24_n_0 ,\g_row[2].g_col[0].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[2].g_col[0].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[6][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(Q[15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(Q[16]));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[6][5]_0 }));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[2].g_col[0].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[6][7]_0 ),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[14]_0 ,\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[6][6] ));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[2].g_col[0].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[14]_2 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[2].g_col[0].g_lut.p_q[16]_i_15_n_0 ,\g_row[2].g_col[0].g_lut.p_q[16]_i_16_n_0 ,\g_row[2].g_col[0].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],\g_row[2].g_col[0].g_lut.p_q_reg[14]_1 ,\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[2].g_col[0].g_lut.p_q[16]_i_18_n_0 ,\g_row[2].g_col[0].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[6][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(Q[1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(Q[2]));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[0].g_lut.p_q[2]_i_2_n_0 ,\g_row[2].g_col[0].g_lut.p_q[2]_i_3_n_0 ,\g_row[2].g_col[0].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[2].g_tap[0].taps_reg[2][0][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(Q[3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(Q[4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(Q[5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(Q[6]));
  CARRY4 \g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[0].g_lut.p_q[6]_i_2_n_0 ,\g_row[2].g_col[0].g_lut.p_q[6]_i_3_n_0 ,\g_row[2].g_col[0].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[2].g_col[0].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[2].g_col[0].g_lut.p_q[6]_i_5_n_0 ,\g_row[2].g_col[0].g_lut.p_q[6]_i_6_n_0 ,\g_row[2].g_col[0].g_lut.p_q[6]_i_7_n_0 ,\g_row[2].g_col[0].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(Q[7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(Q[8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[0].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[0].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_12 
       (.I0(\coef[7] [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .I2(\coef[7] [1]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .I4(\coef[7] [0]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_13 
       (.I0(\coef[7] [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I2(\coef[7] [1]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .I4(\coef[7] [0]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_14 
       (.I0(\coef[7] [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I2(\coef[7] [1]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I4(\coef[7] [0]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_15 
       (.I0(\coef[7] [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I2(\coef[7] [1]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I4(\coef[7] [0]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair38" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_2 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_20 
       (.I0(\coef[7] [4]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I2(\coef[7] [5]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I4(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I5(\coef[7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_21 
       (.I0(\coef[7] [4]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I2(\coef[7] [5]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_22 
       (.I0(\coef[7] [3]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_27 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .I1(\coef[7] [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_28 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .I1(\coef[7] [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_29 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I1(\coef[7] [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair37" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_3 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_30 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I1(\coef[7] [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_31 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I1(\coef[7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair36" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_4 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_5 
       (.I0(\coef[7] [6]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [0]),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_6 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair38" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_7 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair37" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_8 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair36" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[1].g_lut.p_q[10]_i_9 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_13 
       (.I0(\coef[7] [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_14 
       (.I0(\coef[7] [1]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .I2(\coef[7] [2]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_15 
       (.I0(\coef[7] [2]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .I2(\coef[7] [1]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .I4(\coef[7] [0]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_16 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .I1(\coef[7] [2]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_17 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .I1(\coef[7] [1]),
        .I2(\coef[7] [2]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_2 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_24 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [0]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I2(\coef[7] [7]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I4(\coef[7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_25 
       (.I0(\coef[7] [6]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I2(\coef[7] [7]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_26 
       (.I0(\coef[7] [5]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .I2(\coef[7] [4]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .I4(\coef[7] [3]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_27 
       (.I0(\coef[7] [5]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I2(\coef[7] [4]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .I4(\coef[7] [3]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_28 
       (.I0(\coef[7] [5]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I2(\coef[7] [4]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I4(\coef[7] [3]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_29 
       (.I0(\coef[7] [5]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I2(\coef[7] [4]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I4(\coef[7] [3]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_3 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_34 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .I1(\coef[7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_35 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [4]),
        .I1(\coef[7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_36 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I1(\coef[7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_37 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I1(\coef[7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_4 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair39" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_5 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_7 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_8 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[1].g_lut.p_q[14]_i_9 
       (.I0(\g_row[2].g_col[1].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_15 
       (.I0(\coef[7] [5]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_16 
       (.I0(\coef[7] [4]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .I2(\coef[7] [5]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .O(\g_row[2].g_col[1].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_17 
       (.I0(\coef[7] [5]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [5]),
        .I2(\coef[7] [4]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .I4(\coef[7] [3]),
        .I5(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_18 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .I1(\coef[7] [5]),
        .O(\g_row[2].g_col[1].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_19 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [6]),
        .I1(\coef[7] [4]),
        .I2(\coef[7] [5]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[16]_i_5 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [7]),
        .I1(\coef[7] [7]),
        .O(\g_row[2].g_col[1].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_2 
       (.I0(\coef[7] [1]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [2]),
        .I2(\coef[7] [2]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I4(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I5(\coef[7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_3 
       (.I0(\coef[7] [1]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .I2(\coef[7] [2]),
        .I3(\g_row[2].g_tap[1].taps_reg[2][1][7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_4 
       (.I0(\coef[7] [0]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [1]),
        .O(\g_row[2].g_col[1].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[1].g_lut.p_q[2]_i_9 
       (.I0(\g_row[2].g_tap[1].taps_reg[2][1][7] [3]),
        .I1(\coef[7] [0]),
        .O(\g_row[2].g_col[1].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[6]_i_2 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[6]_i_3 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[1].g_lut.p_q[6]_i_4 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair35" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[2].g_col[1].g_lut.p_q[6]_i_5 
       (.I0(\coef[7] [6]),
        .I1(\g_row[2].g_tap[1].taps_reg[2][1][7] [0]),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[2].g_col[1].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair67" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[2].g_col[1].g_lut.p_q[6]_i_6 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[1].g_lut.p_q[6]_i_7 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[2].g_col[1].g_lut.p_q[6]_i_8 
       (.I0(\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[2].g_col[1].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(\s1_reg[3][15] [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(\s1_reg[3][15] [10]));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[1].g_lut.p_q[10]_i_2_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_3_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_4_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[2].g_col[1].g_lut.p_q[10]_i_6_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_7_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_8_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[2].g_col[1].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[7][1] ));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[1].g_lut.p_q[10]_i_20_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_21_n_0 ,\g_row[2].g_col[1].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[2].g_tap[1].taps_reg[2][1][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(\s1_reg[3][15] [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(\s1_reg[3][15] [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(\s1_reg[3][15] [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(\s1_reg[3][15] [14]));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[1].g_lut.p_q[14]_i_2_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_3_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_4_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[7][5] ,\g_row[2].g_col[1].g_lut.p_q[14]_i_7_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_8_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[2].g_col[1].g_lut.p_q[14]_i_13_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_14_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[2].g_col[1].g_lut.p_q[14]_i_16_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[7][0] }));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[7][7] ,1'b0}),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[2].g_tap[1].taps_reg[2][1][2]_1 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_24_n_0 ,\g_row[2].g_col[1].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[2].g_col[1].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[7][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(\s1_reg[3][15] [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(\prod[7] ));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[7][5]_0 }));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[2].g_col[1].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[7][7]_0 ),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[14]_0 ,\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[7][6] ));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[2].g_col[1].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[14]_2 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[2].g_col[1].g_lut.p_q[16]_i_15_n_0 ,\g_row[2].g_col[1].g_lut.p_q[16]_i_16_n_0 ,\g_row[2].g_col[1].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],\g_row[2].g_col[1].g_lut.p_q_reg[14]_1 ,\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[2].g_col[1].g_lut.p_q[16]_i_18_n_0 ,\g_row[2].g_col[1].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[7][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(\s1_reg[3][15] [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(\s1_reg[3][15] [2]));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[1].g_lut.p_q[2]_i_2_n_0 ,\g_row[2].g_col[1].g_lut.p_q[2]_i_3_n_0 ,\g_row[2].g_col[1].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[2].g_tap[1].taps_reg[2][1][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(\s1_reg[3][15] [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(\s1_reg[3][15] [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(\s1_reg[3][15] [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(\s1_reg[3][15] [6]));
  CARRY4 \g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[1].g_lut.p_q[6]_i_2_n_0 ,\g_row[2].g_col[1].g_lut.p_q[6]_i_3_n_0 ,\g_row[2].g_col[1].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[2].g_col[1].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[2].g_col[1].g_lut.p_q[6]_i_5_n_0 ,\g_row[2].g_col[1].g_lut.p_q[6]_i_6_n_0 ,\g_row[2].g_col[1].g_lut.p_q[6]_i_7_n_0 ,\g_row[2].g_col[1].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(\s1_reg[3][15] [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(\s1_reg[3][15] [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[1].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[1].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(\s1_reg[3][15] [9]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_12 
       (.I0(\coef[8] [2]),
        .I1(\g_row[2].taps_reg[2][2][7] [4]),
        .I2(\coef[8] [1]),
        .I3(\g_row[2].taps_reg[2][2][7] [5]),
        .I4(\coef[8] [0]),
        .I5(\g_row[2].taps_reg[2][2][7] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_13 
       (.I0(\coef[8] [2]),
        .I1(\g_row[2].taps_reg[2][2][7] [3]),
        .I2(\coef[8] [1]),
        .I3(\g_row[2].taps_reg[2][2][7] [4]),
        .I4(\coef[8] [0]),
        .I5(\g_row[2].taps_reg[2][2][7] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_14 
       (.I0(\coef[8] [2]),
        .I1(\g_row[2].taps_reg[2][2][7] [2]),
        .I2(\coef[8] [1]),
        .I3(\g_row[2].taps_reg[2][2][7] [3]),
        .I4(\coef[8] [0]),
        .I5(\g_row[2].taps_reg[2][2][7] [4]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_15 
       (.I0(\coef[8] [2]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .I2(\coef[8] [1]),
        .I3(\g_row[2].taps_reg[2][2][7] [2]),
        .I4(\coef[8] [0]),
        .I5(\g_row[2].taps_reg[2][2][7] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 [0]));
  (* HLUTNM = "lutpair43" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_2 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_20 
       (.I0(\coef[8] [4]),
        .I1(\g_row[2].taps_reg[2][2][7] [2]),
        .I2(\coef[8] [5]),
        .I3(\g_row[2].taps_reg[2][2][7] [1]),
        .I4(\g_row[2].taps_reg[2][2][7] [3]),
        .I5(\coef[8] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_21 
       (.I0(\coef[8] [4]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .I2(\coef[8] [5]),
        .I3(\g_row[2].taps_reg[2][2][7] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_22 
       (.I0(\coef[8] [3]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_27 
       (.I0(\g_row[2].taps_reg[2][2][7] [5]),
        .I1(\coef[8] [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_5 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_28 
       (.I0(\g_row[2].taps_reg[2][2][7] [4]),
        .I1(\coef[8] [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_4 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_29 
       (.I0(\g_row[2].taps_reg[2][2][7] [3]),
        .I1(\coef[8] [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_3 ));
  (* HLUTNM = "lutpair42" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_3 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_30 
       (.I0(\g_row[2].taps_reg[2][2][7] [2]),
        .I1(\coef[8] [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_2 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_31 
       (.I0(\g_row[2].taps_reg[2][2][7] [3]),
        .I1(\coef[8] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_6 ));
  (* HLUTNM = "lutpair41" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_4 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_4_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_5 
       (.I0(\coef[8] [6]),
        .I1(\g_row[2].taps_reg[2][2][7] [0]),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_5_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_6 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q[10]_i_2_n_0 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_6_n_0 ));
  (* HLUTNM = "lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_7 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q[10]_i_3_n_0 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_7_n_0 ));
  (* HLUTNM = "lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_8 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q[10]_i_4_n_0 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_8_n_0 ));
  (* HLUTNM = "lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[2].g_lut.p_q[10]_i_9 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q[10]_i_5_n_0 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[10]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_13 
       (.I0(\coef[8] [2]),
        .I1(\g_row[2].taps_reg[2][2][7] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_14 
       (.I0(\coef[8] [1]),
        .I1(\g_row[2].taps_reg[2][2][7] [7]),
        .I2(\coef[8] [2]),
        .I3(\g_row[2].taps_reg[2][2][7] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_15 
       (.I0(\coef[8] [2]),
        .I1(\g_row[2].taps_reg[2][2][7] [5]),
        .I2(\coef[8] [1]),
        .I3(\g_row[2].taps_reg[2][2][7] [6]),
        .I4(\coef[8] [0]),
        .I5(\g_row[2].taps_reg[2][2][7] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_16 
       (.I0(\g_row[2].taps_reg[2][2][7] [7]),
        .I1(\coef[8] [2]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_17 
       (.I0(\g_row[2].taps_reg[2][2][7] [6]),
        .I1(\coef[8] [1]),
        .I2(\coef[8] [2]),
        .I3(\g_row[2].taps_reg[2][2][7] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_2 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE01F9F9F)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_24 
       (.I0(\g_row[2].taps_reg[2][2][7] [0]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .I2(\coef[8] [7]),
        .I3(\g_row[2].taps_reg[2][2][7] [2]),
        .I4(\coef[8] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_25 
       (.I0(\coef[8] [6]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .I2(\coef[8] [7]),
        .I3(\g_row[2].taps_reg[2][2][7] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_26 
       (.I0(\coef[8] [5]),
        .I1(\g_row[2].taps_reg[2][2][7] [4]),
        .I2(\coef[8] [4]),
        .I3(\g_row[2].taps_reg[2][2][7] [5]),
        .I4(\coef[8] [3]),
        .I5(\g_row[2].taps_reg[2][2][7] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [3]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_27 
       (.I0(\coef[8] [5]),
        .I1(\g_row[2].taps_reg[2][2][7] [3]),
        .I2(\coef[8] [4]),
        .I3(\g_row[2].taps_reg[2][2][7] [4]),
        .I4(\coef[8] [3]),
        .I5(\g_row[2].taps_reg[2][2][7] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_28 
       (.I0(\coef[8] [5]),
        .I1(\g_row[2].taps_reg[2][2][7] [2]),
        .I2(\coef[8] [4]),
        .I3(\g_row[2].taps_reg[2][2][7] [3]),
        .I4(\coef[8] [3]),
        .I5(\g_row[2].taps_reg[2][2][7] [4]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [1]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_29 
       (.I0(\coef[8] [5]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .I2(\coef[8] [4]),
        .I3(\g_row[2].taps_reg[2][2][7] [2]),
        .I4(\coef[8] [3]),
        .I5(\g_row[2].taps_reg[2][2][7] [3]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_3 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_34 
       (.I0(\g_row[2].taps_reg[2][2][7] [5]),
        .I1(\coef[8] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_10 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_35 
       (.I0(\g_row[2].taps_reg[2][2][7] [4]),
        .I1(\coef[8] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_9 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_36 
       (.I0(\g_row[2].taps_reg[2][2][7] [3]),
        .I1(\coef[8] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_8 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_37 
       (.I0(\g_row[2].taps_reg[2][2][7] [2]),
        .I1(\coef[8] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[10]_7 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_4 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_4_n_0 ));
  (* HLUTNM = "lutpair44" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_5 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_7 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 [0]),
        .I3(\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_8 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ),
        .I4(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \g_row[2].g_col[2].g_lut.p_q[14]_i_9 
       (.I0(\g_row[2].g_col[2].g_lut.p_q[14]_i_5_n_0 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[14]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_15 
       (.I0(\coef[8] [5]),
        .I1(\g_row[2].taps_reg[2][2][7] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q[16]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_16 
       (.I0(\coef[8] [4]),
        .I1(\g_row[2].taps_reg[2][2][7] [7]),
        .I2(\coef[8] [5]),
        .I3(\g_row[2].taps_reg[2][2][7] [6]),
        .O(\g_row[2].g_col[2].g_lut.p_q[16]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_17 
       (.I0(\coef[8] [5]),
        .I1(\g_row[2].taps_reg[2][2][7] [5]),
        .I2(\coef[8] [4]),
        .I3(\g_row[2].taps_reg[2][2][7] [6]),
        .I4(\coef[8] [3]),
        .I5(\g_row[2].taps_reg[2][2][7] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_18 
       (.I0(\g_row[2].taps_reg[2][2][7] [7]),
        .I1(\coef[8] [5]),
        .O(\g_row[2].g_col[2].g_lut.p_q[16]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'hE35F)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_19 
       (.I0(\g_row[2].taps_reg[2][2][7] [6]),
        .I1(\coef[8] [4]),
        .I2(\coef[8] [5]),
        .I3(\g_row[2].taps_reg[2][2][7] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[16]_i_5 
       (.I0(\g_row[2].taps_reg[2][2][7] [7]),
        .I1(\coef[8] [7]),
        .O(\g_row[2].g_col[2].g_lut.p_q[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_2 
       (.I0(\coef[8] [1]),
        .I1(\g_row[2].taps_reg[2][2][7] [2]),
        .I2(\coef[8] [2]),
        .I3(\g_row[2].taps_reg[2][2][7] [1]),
        .I4(\g_row[2].taps_reg[2][2][7] [3]),
        .I5(\coef[8] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_3 
       (.I0(\coef[8] [1]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .I2(\coef[8] [2]),
        .I3(\g_row[2].taps_reg[2][2][7] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_4 
       (.I0(\coef[8] [0]),
        .I1(\g_row[2].taps_reg[2][2][7] [1]),
        .O(\g_row[2].g_col[2].g_lut.p_q[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \g_row[2].g_col[2].g_lut.p_q[2]_i_9 
       (.I0(\g_row[2].taps_reg[2][2][7] [3]),
        .I1(\coef[8] [0]),
        .O(\g_row[2].g_col[2].g_lut.p_q_reg[2]_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[6]_i_2 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[6]_i_3 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \g_row[2].g_col[2].g_lut.p_q[6]_i_4 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[6]_i_4_n_0 ));
  (* HLUTNM = "lutpair40" *) 
  LUT5 #(
    .INIT(32'h78878778)) 
    \g_row[2].g_col[2].g_lut.p_q[6]_i_5 
       (.I0(\coef[8] [6]),
        .I1(\g_row[2].taps_reg[2][2][7] [0]),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ),
        .I4(\g_row[2].g_col[2].g_lut.p_q[6]_i_2_n_0 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[6]_i_5_n_0 ));
  (* HLUTNM = "lutpair68" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \g_row[2].g_col[2].g_lut.p_q[6]_i_6 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[6]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h8778)) 
    \g_row[2].g_col[2].g_lut.p_q[6]_i_7 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .I2(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ),
        .I3(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[6]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \g_row[2].g_col[2].g_lut.p_q[6]_i_8 
       (.I0(\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ),
        .I1(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 ),
        .O(\g_row[2].g_col[2].g_lut.p_q[6]_i_8_n_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 ),
        .Q(\p8_a1_reg[16] [0]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ),
        .Q(\p8_a1_reg[16] [10]));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[2].g_lut.p_q[10]_i_2_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_3_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_4_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_5_n_0 }),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 }),
        .S({\g_row[2].g_col[2].g_lut.p_q[10]_i_6_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_7_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_8_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_9_n_0 }));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[2].g_col[2].g_lut.p_q_reg[10]_0 ),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_7 }),
        .S(\coef_reg[8][1] ));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[2].g_lut.p_q[10]_i_20_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_21_n_0 ,\g_row[2].g_col[2].g_lut.p_q[10]_i_22_n_0 ,1'b0}),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_7 }),
        .S(\g_row[2].taps_reg[2][2][2]_0 ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 ),
        .Q(\p8_a1_reg[16] [11]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ),
        .Q(\p8_a1_reg[16] [12]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ),
        .Q(\p8_a1_reg[16] [13]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ),
        .Q(\p8_a1_reg[16] [14]));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_0 ),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[2].g_lut.p_q[14]_i_2_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_3_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_4_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_5_n_0 }),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_7 }),
        .S({\coef_reg[8][5] ,\g_row[2].g_col[2].g_lut.p_q[14]_i_7_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_8_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_9_n_0 }));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_10_n_0 ),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[2].g_col[2].g_lut.p_q[14]_i_13_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_14_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_15_n_0 }),
        .O({\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_O_UNCONNECTED [3],\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_10_n_7 }),
        .S({1'b1,\g_row[2].g_col[2].g_lut.p_q[14]_i_16_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_17_n_0 ,\coef_reg[8][0] }));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\coef_reg[8][7] ,1'b0}),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_7 }),
        .S({\g_row[2].taps_reg[2][2][2]_1 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_24_n_0 ,\g_row[2].g_col[2].g_lut.p_q[14]_i_25_n_0 }));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_11_n_0 ),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\g_row[2].g_col[2].g_lut.p_q_reg[10]_1 ),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_7 }),
        .S(\coef_reg[8][4] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 ),
        .Q(\p8_a1_reg[16] [15]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(\g_row[2].g_col[2].g_lut.p_q_reg[11]_0 ),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ),
        .Q(\p8_a1_reg[16] [16]));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_1_n_0 ),
        .CO(\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 }),
        .O({\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_O_UNCONNECTED [3:2],\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ,\coef_reg[8][5]_0 }));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ),
        .CO(\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2_O_UNCONNECTED [3:2],\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_2_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[16]_0 }),
        .S({1'b0,1'b0,1'b1,\g_row[2].g_col[2].g_lut.p_q[16]_i_5_n_0 }));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_11_n_0 ),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(\coef_reg[8][7]_0 ),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[14]_0 ,\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_4_n_7 }),
        .S(\coef_reg[8][6] ));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6 
       (.CI(\g_row[2].g_col[2].g_lut.p_q_reg[14]_i_12_n_0 ),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[14]_2 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\g_row[2].g_col[2].g_lut.p_q[16]_i_15_n_0 ,\g_row[2].g_col[2].g_lut.p_q[16]_i_16_n_0 ,\g_row[2].g_col[2].g_lut.p_q[16]_i_17_n_0 }),
        .O({\NLW_g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_O_UNCONNECTED [3],\g_row[2].g_col[2].g_lut.p_q_reg[14]_1 ,\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[16]_i_6_n_7 }),
        .S({1'b1,\g_row[2].g_col[2].g_lut.p_q[16]_i_18_n_0 ,\g_row[2].g_col[2].g_lut.p_q[16]_i_19_n_0 ,\coef_reg[8][3] }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ),
        .Q(\p8_a1_reg[16] [1]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ),
        .Q(\p8_a1_reg[16] [2]));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[2].g_lut.p_q[2]_i_2_n_0 ,\g_row[2].g_col[2].g_lut.p_q[2]_i_3_n_0 ,\g_row[2].g_col[2].g_lut.p_q[2]_i_4_n_0 ,1'b0}),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[2]_i_1_n_7 }),
        .S(\g_row[2].taps_reg[2][2][2] ));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 ),
        .Q(\p8_a1_reg[16] [3]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ),
        .Q(\p8_a1_reg[16] [4]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ),
        .Q(\p8_a1_reg[16] [5]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ),
        .Q(\p8_a1_reg[16] [6]));
  CARRY4 \g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1 
       (.CI(1'b0),
        .CO({\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_0 ,\NLW_g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\g_row[2].g_col[2].g_lut.p_q[6]_i_2_n_0 ,\g_row[2].g_col[2].g_lut.p_q[6]_i_3_n_0 ,\g_row[2].g_col[2].g_lut.p_q[6]_i_4_n_0 ,1'b0}),
        .O({\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_4 ,\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_5 ,\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_6 ,\g_row[2].g_col[2].g_lut.p_q_reg[6]_i_1_n_7 }),
        .S({\g_row[2].g_col[2].g_lut.p_q[6]_i_5_n_0 ,\g_row[2].g_col[2].g_lut.p_q[6]_i_6_n_0 ,\g_row[2].g_col[2].g_lut.p_q[6]_i_7_n_0 ,\g_row[2].g_col[2].g_lut.p_q[6]_i_8_n_0 }));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_7 ),
        .Q(\p8_a1_reg[16] [7]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_6 ),
        .Q(\p8_a1_reg[16] [8]));
  (* USE_DSP = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \g_row[2].g_col[2].g_lut.p_q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(rst_n_0),
        .D(\g_row[2].g_col[2].g_lut.p_q_reg[10]_i_1_n_5 ),
        .Q(\p8_a1_reg[16] [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[0][17]_i_3 
       (.I0(\s1_reg[0][17]_0 [16]),
        .I1(\prod[1] ),
        .O(\s1_reg[0][17] ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[1][17]_i_3 
       (.I0(\s1_reg[1][17]_0 [16]),
        .I1(\prod[3] ),
        .O(\s1_reg[1][17] ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[2][17]_i_3 
       (.I0(\s1_reg[2][17]_0 [16]),
        .I1(\prod[5] ),
        .O(\s1_reg[2][17] ));
  LUT2 #(
    .INIT(4'h6)) 
    \s1[3][17]_i_3 
       (.I0(Q[16]),
        .I1(\prod[7] ),
        .O(\s1_reg[3][17] ));
endmodule

module normalize
   (sat_flag,
    sat_flag_reg_0,
    out_data,
    clk,
    rst_n,
    shift_en,
    D,
    relu_en);
  output sat_flag;
  output sat_flag_reg_0;
  output [15:0]out_data;
  input clk;
  input rst_n;
  input shift_en;
  input [19:0]D;
  input relu_en;

  wire [19:0]D;
  wire clk;
  wire [15:0]out_data;
  wire [15:0]p_0_in;
  wire relu_en;
  wire \res[15]_i_10_n_0 ;
  wire \res[15]_i_11_n_0 ;
  wire \res[15]_i_12_n_0 ;
  wire \res[15]_i_13_n_0 ;
  wire \res[15]_i_14_n_0 ;
  wire \res[15]_i_15_n_0 ;
  wire \res[15]_i_16_n_0 ;
  wire \res[15]_i_6_n_0 ;
  wire \res[15]_i_7_n_0 ;
  wire \res[15]_i_8_n_0 ;
  wire \res[15]_i_9_n_0 ;
  wire \res_reg[15]_i_4_n_1 ;
  wire \res_reg[15]_i_5_n_1 ;
  wire [19:0]rounded_q;
  wire rst_n;
  wire sat_flag;
  wire sat_flag_i_1_n_0;
  wire sat_flag_reg_0;
  wire shift_en;
  wire [3:0]\NLW_res_reg[15]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_res_reg[15]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_res_reg[15]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_res_reg[15]_i_5_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[0]_i_1 
       (.I0(rounded_q[0]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[10]_i_1 
       (.I0(rounded_q[10]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[11]_i_1 
       (.I0(rounded_q[11]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[12]_i_1 
       (.I0(rounded_q[12]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[13]_i_1 
       (.I0(rounded_q[13]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'hF1F0F3F0)) 
    \res[14]_i_1 
       (.I0(rounded_q[15]),
        .I1(\res_reg[15]_i_4_n_1 ),
        .I2(\res_reg[15]_i_5_n_1 ),
        .I3(rounded_q[14]),
        .I4(relu_en),
        .O(p_0_in[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \res[15]_i_10 
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(\res[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \res[15]_i_11 
       (.I0(rounded_q[15]),
        .I1(rounded_q[14]),
        .O(\res[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \res[15]_i_12 
       (.I0(rounded_q[18]),
        .I1(rounded_q[19]),
        .O(\res[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \res[15]_i_13 
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(\res[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \res[15]_i_14 
       (.I0(rounded_q[18]),
        .I1(rounded_q[19]),
        .O(\res[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \res[15]_i_15 
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(\res[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \res[15]_i_16 
       (.I0(rounded_q[14]),
        .I1(rounded_q[15]),
        .O(\res[15]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h000E)) 
    \res[15]_i_2 
       (.I0(rounded_q[15]),
        .I1(\res_reg[15]_i_4_n_1 ),
        .I2(\res_reg[15]_i_5_n_1 ),
        .I3(relu_en),
        .O(p_0_in[15]));
  LUT1 #(
    .INIT(2'h1)) 
    \res[15]_i_3 
       (.I0(rst_n),
        .O(sat_flag_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \res[15]_i_6 
       (.I0(rounded_q[19]),
        .I1(rounded_q[18]),
        .O(\res[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \res[15]_i_7 
       (.I0(rounded_q[16]),
        .I1(rounded_q[17]),
        .O(\res[15]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \res[15]_i_8 
       (.I0(rounded_q[15]),
        .O(\res[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \res[15]_i_9 
       (.I0(rounded_q[18]),
        .I1(rounded_q[19]),
        .O(\res[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[1]_i_1 
       (.I0(rounded_q[1]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[2]_i_1 
       (.I0(rounded_q[2]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[3]_i_1 
       (.I0(rounded_q[3]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[4]_i_1 
       (.I0(rounded_q[4]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[5]_i_1 
       (.I0(rounded_q[5]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[6]_i_1 
       (.I0(rounded_q[6]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[7]_i_1 
       (.I0(rounded_q[7]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[8]_i_1 
       (.I0(rounded_q[8]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'hFF02FF0A)) 
    \res[9]_i_1 
       (.I0(rounded_q[9]),
        .I1(rounded_q[15]),
        .I2(\res_reg[15]_i_4_n_1 ),
        .I3(\res_reg[15]_i_5_n_1 ),
        .I4(relu_en),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[0]),
        .Q(out_data[0]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[10]),
        .Q(out_data[10]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[11]),
        .Q(out_data[11]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[12]),
        .Q(out_data[12]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[13]),
        .Q(out_data[13]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[14]),
        .Q(out_data[14]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[15]),
        .Q(out_data[15]));
  CARRY4 \res_reg[15]_i_4 
       (.CI(1'b0),
        .CO({\NLW_res_reg[15]_i_4_CO_UNCONNECTED [3],\res_reg[15]_i_4_n_1 ,\NLW_res_reg[15]_i_4_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\res[15]_i_6_n_0 ,\res[15]_i_7_n_0 ,\res[15]_i_8_n_0 }),
        .O(\NLW_res_reg[15]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\res[15]_i_9_n_0 ,\res[15]_i_10_n_0 ,\res[15]_i_11_n_0 }));
  CARRY4 \res_reg[15]_i_5 
       (.CI(1'b0),
        .CO({\NLW_res_reg[15]_i_5_CO_UNCONNECTED [3],\res_reg[15]_i_5_n_1 ,\NLW_res_reg[15]_i_5_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,\res[15]_i_12_n_0 ,\res[15]_i_13_n_0 ,rounded_q[15]}),
        .O(\NLW_res_reg[15]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\res[15]_i_14_n_0 ,\res[15]_i_15_n_0 ,\res[15]_i_16_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[1]),
        .Q(out_data[1]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[2]),
        .Q(out_data[2]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[3]),
        .Q(out_data[3]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[4]),
        .Q(out_data[4]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[5]),
        .Q(out_data[5]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[6]),
        .Q(out_data[6]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[7]),
        .Q(out_data[7]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[8]),
        .Q(out_data[8]));
  FDCE #(
    .INIT(1'b0)) 
    \res_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(p_0_in[9]),
        .Q(out_data[9]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[0] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[0]),
        .Q(rounded_q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[10] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[10]),
        .Q(rounded_q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[11] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[11]),
        .Q(rounded_q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[12] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[12]),
        .Q(rounded_q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[13] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[13]),
        .Q(rounded_q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[14] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[14]),
        .Q(rounded_q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[15] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[15]),
        .Q(rounded_q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[16] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[16]),
        .Q(rounded_q[16]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[17] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[17]),
        .Q(rounded_q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[18] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[18]),
        .Q(rounded_q[18]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[19] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[19]),
        .Q(rounded_q[19]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[1] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[1]),
        .Q(rounded_q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[2] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[2]),
        .Q(rounded_q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[3] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[3]),
        .Q(rounded_q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[4] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[4]),
        .Q(rounded_q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[5] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[5]),
        .Q(rounded_q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[6] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[6]),
        .Q(rounded_q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[7] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[7]),
        .Q(rounded_q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[8] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[8]),
        .Q(rounded_q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \rounded_q_reg[9] 
       (.C(clk),
        .CE(shift_en),
        .CLR(sat_flag_reg_0),
        .D(D[9]),
        .Q(rounded_q[9]));
  LUT3 #(
    .INIT(8'hA8)) 
    sat_flag_i_1
       (.I0(shift_en),
        .I1(\res_reg[15]_i_4_n_1 ),
        .I2(\res_reg[15]_i_5_n_1 ),
        .O(sat_flag_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sat_flag_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sat_flag_reg_0),
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
