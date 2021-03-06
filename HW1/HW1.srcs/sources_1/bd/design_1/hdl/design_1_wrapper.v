//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Tue May 10 12:09:34 2022
//Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (BTN,
    LED,
    SW);
  input [0:0]BTN;
  output [3:0]LED;
  input [3:0]SW;

  wire [0:0]BTN;
  wire [3:0]LED;
  wire [3:0]SW;

  design_1 design_1_i
       (.BTN(BTN),
        .LED(LED),
        .SW(SW));
endmodule
