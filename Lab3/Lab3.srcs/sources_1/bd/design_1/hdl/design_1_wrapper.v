//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue May  3 09:31:14 2022
//Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (MIO_0);
  inout [53:0]MIO_0;

  wire [53:0]MIO_0;

  design_1 design_1_i
       (.MIO_0(MIO_0));
endmodule
