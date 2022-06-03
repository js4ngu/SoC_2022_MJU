-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jun  4 04:01:43 2022
-- Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_matrixmul_1D_rev2_0_4_stub.vhdl
-- Design      : design_1_matrixmul_1D_rev2_0_4
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    Input_r_ce0 : out STD_LOGIC;
    AB_ce0 : out STD_LOGIC;
    AB_we0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    Input_r_address0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Input_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AB_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    AB_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Input_r_ce0,AB_ce0,AB_we0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,Input_r_address0[10:0],Input_r_q0[7:0],AB_address0[9:0],AB_d0[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "matrixmul_1D_rev2,Vivado 2018.2";
begin
end;
