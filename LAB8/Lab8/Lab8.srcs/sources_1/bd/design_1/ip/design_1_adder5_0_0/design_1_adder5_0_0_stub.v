// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon May 24 11:50:41 2021
// Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/SEP16/SoC_2022_MJU/LAB8/Lab8/Lab8.srcs/sources_1/bd/design_1/ip/design_1_adder5_0_0/design_1_adder5_0_0_stub.v
// Design      : design_1_adder5_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "adder5,Vivado 2018.2" *)
module design_1_adder5_0_0(ap_clk, ap_rst_n, ap_start, ap_done, ap_idle, 
  ap_ready, A_TVALID, A_TREADY, A_TDATA, B_TVALID, B_TREADY, B_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,A_TVALID,A_TREADY,A_TDATA[31:0],B_TVALID,B_TREADY,B_TDATA[31:0]" */;
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input A_TVALID;
  output A_TREADY;
  input [31:0]A_TDATA;
  output B_TVALID;
  input B_TREADY;
  output [31:0]B_TDATA;
endmodule
