-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon May 24 11:50:41 2021
-- Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/SEP16/SoC_2022_MJU/LAB8/Lab8/Lab8.srcs/sources_1/bd/design_1/ip/design_1_adder5_0_0/design_1_adder5_0_0_stub.vhdl
-- Design      : design_1_adder5_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_adder5_0_0 is
  Port ( 
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    A_TVALID : in STD_LOGIC;
    A_TREADY : out STD_LOGIC;
    A_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    B_TVALID : out STD_LOGIC;
    B_TREADY : in STD_LOGIC;
    B_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_adder5_0_0;

architecture stub of design_1_adder5_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,A_TVALID,A_TREADY,A_TDATA[31:0],B_TVALID,B_TREADY,B_TDATA[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "adder5,Vivado 2018.2";
begin
end;
