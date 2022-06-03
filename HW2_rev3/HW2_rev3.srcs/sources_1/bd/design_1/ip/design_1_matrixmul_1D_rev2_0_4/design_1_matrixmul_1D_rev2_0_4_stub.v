// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jun  4 04:01:43 2022
// Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/SEP16/SoC_2022_MJU/HW2_rev3/HW2_rev3.srcs/sources_1/bd/design_1/ip/design_1_matrixmul_1D_rev2_0_4/design_1_matrixmul_1D_rev2_0_4_stub.v
// Design      : design_1_matrixmul_1D_rev2_0_4
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "matrixmul_1D_rev2,Vivado 2018.2" *)
module design_1_matrixmul_1D_rev2_0_4(Input_r_ce0, AB_ce0, AB_we0, ap_clk, ap_rst, 
  ap_start, ap_done, ap_idle, ap_ready, Input_r_address0, Input_r_q0, AB_address0, AB_d0)
/* synthesis syn_black_box black_box_pad_pin="Input_r_ce0,AB_ce0,AB_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,Input_r_address0[10:0],Input_r_q0[7:0],AB_address0[9:0],AB_d0[31:0]" */;
  output Input_r_ce0;
  output AB_ce0;
  output AB_we0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [10:0]Input_r_address0;
  input [7:0]Input_r_q0;
  output [9:0]AB_address0;
  output [31:0]AB_d0;
endmodule
