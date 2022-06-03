-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jun  4 04:01:43 2022
-- Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_matrixmul_1D_rev2_0_4_sim_netlist.vhdl
-- Design      : design_1_matrixmul_1D_rev2_0_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \invdar1_reg_169_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    tmp1_cast_fu_398_p1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \j7_reg_238_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    tmp_5_cast_reg_587 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \k_reg_262_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Input_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram is
  signal B_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal B_ce0 : STD_LOGIC;
  signal B_d0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ram_reg_i_20__0_n_4\ : STD_LOGIC;
  signal NLW_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 7;
begin
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => B_address0(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => B_d0(7 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_ram_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => B_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => \ram_reg_i_20__0_n_4\,
      WEA(0) => \ram_reg_i_20__0_n_4\,
      WEBWE(3 downto 0) => B"0000"
    );
\ram_reg_i_10__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar1_reg_169_reg[9]\(1),
      I1 => Q(1),
      I2 => tmp1_cast_fu_398_p1(1),
      I3 => \j7_reg_238_reg[4]\(1),
      I4 => Q(2),
      O => B_address0(1)
    );
\ram_reg_i_11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar1_reg_169_reg[9]\(0),
      I1 => Q(1),
      I2 => tmp1_cast_fu_398_p1(0),
      I3 => \j7_reg_238_reg[4]\(0),
      I4 => Q(2),
      O => B_address0(0)
    );
\ram_reg_i_12__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(7),
      O => B_d0(7)
    );
\ram_reg_i_13__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(6),
      O => B_d0(6)
    );
\ram_reg_i_14__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(5),
      O => B_d0(5)
    );
\ram_reg_i_15__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(4),
      O => B_d0(4)
    );
\ram_reg_i_16__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(3),
      O => B_d0(3)
    );
\ram_reg_i_17__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(2),
      O => B_d0(2)
    );
\ram_reg_i_18__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(1),
      O => B_d0(1)
    );
\ram_reg_i_19__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(0),
      O => B_d0(0)
    );
\ram_reg_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      O => B_ce0
    );
\ram_reg_i_20__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \ram_reg_i_20__0_n_4\
    );
\ram_reg_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \invdar1_reg_169_reg[9]\(9),
      I1 => Q(2),
      I2 => Q(1),
      O => B_address0(9)
    );
\ram_reg_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \k_reg_262_reg[3]\(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar1_reg_169_reg[9]\(8),
      O => B_address0(8)
    );
\ram_reg_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \k_reg_262_reg[3]\(2),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar1_reg_169_reg[9]\(7),
      O => B_address0(7)
    );
\ram_reg_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar1_reg_169_reg[9]\(6),
      I1 => Q(1),
      I2 => tmp_5_cast_reg_587(1),
      I3 => \k_reg_262_reg[3]\(1),
      I4 => Q(2),
      O => B_address0(6)
    );
\ram_reg_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar1_reg_169_reg[9]\(5),
      I1 => Q(1),
      I2 => tmp_5_cast_reg_587(0),
      I3 => \k_reg_262_reg[3]\(0),
      I4 => Q(2),
      O => B_address0(5)
    );
\ram_reg_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \j7_reg_238_reg[4]\(4),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar1_reg_169_reg[9]\(4),
      O => B_address0(4)
    );
\ram_reg_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \j7_reg_238_reg[4]\(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar1_reg_169_reg[9]\(3),
      O => B_address0(3)
    );
\ram_reg_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar1_reg_169_reg[9]\(2),
      I1 => Q(1),
      I2 => tmp1_cast_fu_398_p1(2),
      I3 => \j7_reg_238_reg[4]\(2),
      I4 => Q(2),
      O => B_address0(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram_1 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \invdar_reg_158_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \tmp_8_reg_564_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \k_reg_262_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \i6_reg_226_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Input_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram_1 : entity is "matrixmul_1D_rev2_A_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram_1 is
  signal A_address0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal A_ce0 : STD_LOGIC;
  signal A_d0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal NLW_ram_reg_DOADO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 7;
begin
ram_reg: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INIT_A => X"00000",
      INIT_B => X"00000",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "PERFORMANCE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 0
    )
        port map (
      ADDRARDADDR(13 downto 4) => A_address0(9 downto 0),
      ADDRARDADDR(3 downto 0) => B"1111",
      ADDRBWRADDR(13 downto 0) => B"11111111111111",
      CLKARDCLK => ap_clk,
      CLKBWRCLK => '0',
      DIADI(15 downto 8) => B"00000000",
      DIADI(7 downto 0) => A_d0(7 downto 0),
      DIBDI(15 downto 0) => B"1111111111111111",
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"11",
      DOADO(15 downto 8) => NLW_ram_reg_DOADO_UNCONNECTED(15 downto 8),
      DOADO(7 downto 0) => DOADO(7 downto 0),
      DOBDO(15 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(15 downto 0),
      DOPADOP(1 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(1 downto 0),
      DOPBDOP(1 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(1 downto 0),
      ENARDEN => A_ce0,
      ENBWREN => '0',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1) => p_1_in,
      WEA(0) => p_1_in,
      WEBWE(3 downto 0) => B"0000"
    );
ram_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      O => A_ce0
    );
ram_reg_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar_reg_158_reg[9]\(1),
      I1 => Q(1),
      I2 => \tmp_8_reg_564_reg[6]\(1),
      I3 => \k_reg_262_reg[4]\(1),
      I4 => Q(2),
      O => A_address0(1)
    );
ram_reg_i_11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar_reg_158_reg[9]\(0),
      I1 => Q(1),
      I2 => \tmp_8_reg_564_reg[6]\(0),
      I3 => \k_reg_262_reg[4]\(0),
      I4 => Q(2),
      O => A_address0(0)
    );
ram_reg_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(7),
      O => A_d0(7)
    );
ram_reg_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(6),
      O => A_d0(6)
    );
ram_reg_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(5),
      O => A_d0(5)
    );
ram_reg_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(4),
      O => A_d0(4)
    );
ram_reg_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(3),
      O => A_d0(3)
    );
ram_reg_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(2),
      O => A_d0(2)
    );
ram_reg_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(1),
      O => A_d0(1)
    );
ram_reg_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Q(1),
      I1 => Input_r_q0(0),
      O => A_d0(0)
    );
ram_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \invdar_reg_158_reg[9]\(9),
      I1 => Q(2),
      I2 => Q(1),
      O => A_address0(9)
    );
ram_reg_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => p_1_in
    );
ram_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \i6_reg_226_reg[3]\(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar_reg_158_reg[9]\(8),
      O => A_address0(8)
    );
ram_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \i6_reg_226_reg[3]\(2),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar_reg_158_reg[9]\(7),
      O => A_address0(7)
    );
ram_reg_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar_reg_158_reg[9]\(6),
      I1 => Q(1),
      I2 => \tmp_8_reg_564_reg[6]\(4),
      I3 => \i6_reg_226_reg[3]\(1),
      I4 => Q(2),
      O => A_address0(6)
    );
ram_reg_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar_reg_158_reg[9]\(5),
      I1 => Q(1),
      I2 => \tmp_8_reg_564_reg[6]\(3),
      I3 => \i6_reg_226_reg[3]\(0),
      I4 => Q(2),
      O => A_address0(5)
    );
ram_reg_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \k_reg_262_reg[4]\(4),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar_reg_158_reg[9]\(4),
      O => A_address0(4)
    );
ram_reg_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => \k_reg_262_reg[4]\(3),
      I1 => Q(1),
      I2 => Q(2),
      I3 => \invdar_reg_158_reg[9]\(3),
      O => A_address0(3)
    );
ram_reg_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E2E2"
    )
        port map (
      I0 => \invdar_reg_158_reg[9]\(2),
      I1 => Q(1),
      I2 => \tmp_8_reg_564_reg[6]\(2),
      I3 => \k_reg_262_reg[4]\(2),
      I4 => Q(2),
      O => A_address0(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \invdar_reg_158_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \tmp_8_reg_564_reg[6]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \k_reg_262_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \i6_reg_226_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Input_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A is
begin
matrixmul_1D_rev2_A_ram_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram_1
     port map (
      DOADO(7 downto 0) => DOADO(7 downto 0),
      Input_r_q0(7 downto 0) => Input_r_q0(7 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      ap_clk => ap_clk,
      \i6_reg_226_reg[3]\(3 downto 0) => \i6_reg_226_reg[3]\(3 downto 0),
      \invdar_reg_158_reg[9]\(9 downto 0) => \invdar_reg_158_reg[9]\(9 downto 0),
      \k_reg_262_reg[4]\(4 downto 0) => \k_reg_262_reg[4]\(4 downto 0),
      \tmp_8_reg_564_reg[6]\(4 downto 0) => \tmp_8_reg_564_reg[6]\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_0 is
  port (
    DOADO : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \invdar1_reg_169_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    tmp1_cast_fu_398_p1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \j7_reg_238_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    tmp_5_cast_reg_587 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \k_reg_262_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Input_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_0 : entity is "matrixmul_1D_rev2_A";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_0 is
begin
matrixmul_1D_rev2_A_ram_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_ram
     port map (
      DOADO(7 downto 0) => DOADO(7 downto 0),
      Input_r_q0(7 downto 0) => Input_r_q0(7 downto 0),
      Q(2 downto 0) => Q(2 downto 0),
      ap_clk => ap_clk,
      \invdar1_reg_169_reg[9]\(9 downto 0) => \invdar1_reg_169_reg[9]\(9 downto 0),
      \j7_reg_238_reg[4]\(4 downto 0) => \j7_reg_238_reg[4]\(4 downto 0),
      \k_reg_262_reg[3]\(3 downto 0) => \k_reg_262_reg[3]\(3 downto 0),
      tmp1_cast_fu_398_p1(2 downto 0) => tmp1_cast_fu_398_p1(2 downto 0),
      tmp_5_cast_reg_587(1 downto 0) => tmp_5_cast_reg_587(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    Input_r_address0 : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Input_r_ce0 : out STD_LOGIC;
    Input_r_q0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AB_address0 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    AB_ce0 : out STD_LOGIC;
    AB_we0 : out STD_LOGIC;
    AB_d0 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00100000000000";
  attribute ap_ST_fsm_state13 : string;
  attribute ap_ST_fsm_state13 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b01000000000000";
  attribute ap_ST_fsm_state14 : string;
  attribute ap_ST_fsm_state14 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b10000000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "14'b00000100000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2 is
  signal \<const0>\ : STD_LOGIC;
  signal \^ab_address0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^ab_ce0\ : STD_LOGIC;
  signal \^ab_d0\ : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \^ab_we0\ : STD_LOGIC;
  signal A_q0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal B_q0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^input_r_address0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \ap_CS_fsm[2]_i_2_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_3_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_3_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_4_n_4\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_4_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state11 : STD_LOGIC;
  signal ap_CS_fsm_state13 : STD_LOGIC;
  signal ap_CS_fsm_state14 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_CS_fsm_state6 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_CS_fsm_state8 : STD_LOGIC;
  signal ap_CS_fsm_state9 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal ap_NS_fsm1 : STD_LOGIC;
  signal ap_NS_fsm10_out : STD_LOGIC;
  signal ap_NS_fsm11_out : STD_LOGIC;
  signal ap_NS_fsm12_out : STD_LOGIC;
  signal ap_NS_fsm13_out : STD_LOGIC;
  signal ap_NS_fsm15_out : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal i1_reg_203 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i1_reg_203[0]_i_1_n_4\ : STD_LOGIC;
  signal \i1_reg_203[1]_i_1_n_4\ : STD_LOGIC;
  signal \i1_reg_203[2]_i_1_n_4\ : STD_LOGIC;
  signal i6_reg_226 : STD_LOGIC_VECTOR ( 4 to 4 );
  signal i_1_reg_551 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i_1_reg_551[0]_i_1_n_4\ : STD_LOGIC;
  signal \i_1_reg_551[1]_i_1_n_4\ : STD_LOGIC;
  signal \i_1_reg_551[2]_i_1_n_4\ : STD_LOGIC;
  signal i_2_reg_577 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i_2_reg_577[0]_i_1_n_4\ : STD_LOGIC;
  signal \i_2_reg_577[1]_i_1_n_4\ : STD_LOGIC;
  signal \i_2_reg_577[2]_i_1_n_4\ : STD_LOGIC;
  signal i_3_fu_432_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal i_3_reg_608 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \i_reg_180[0]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg_180[1]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg_180[2]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg_180_reg_n_4_[2]\ : STD_LOGIC;
  signal indvarinc1_fu_290_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal indvarinc_fu_273_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal invdar1_reg_1690 : STD_LOGIC;
  signal \invdar1_reg_169[9]_i_4_n_4\ : STD_LOGIC;
  signal \invdar1_reg_169_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal invdar_reg_158 : STD_LOGIC;
  signal invdar_reg_1580 : STD_LOGIC;
  signal \invdar_reg_158[9]_i_4_n_4\ : STD_LOGIC;
  signal \invdar_reg_158_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal j2_reg_2140 : STD_LOGIC;
  signal \j2_reg_214[0]_i_1_n_4\ : STD_LOGIC;
  signal \j2_reg_214[1]_i_1_n_4\ : STD_LOGIC;
  signal \j2_reg_214[2]_i_1_n_4\ : STD_LOGIC;
  signal j7_reg_2380 : STD_LOGIC;
  signal j_1_reg_559 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \j_1_reg_559[0]_i_1_n_4\ : STD_LOGIC;
  signal \j_1_reg_559[1]_i_1_n_4\ : STD_LOGIC;
  signal \j_1_reg_559[2]_i_1_n_4\ : STD_LOGIC;
  signal j_2_reg_595 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \j_2_reg_595[0]_i_1_n_4\ : STD_LOGIC;
  signal \j_2_reg_595[1]_i_1_n_4\ : STD_LOGIC;
  signal \j_2_reg_595[2]_i_1_n_4\ : STD_LOGIC;
  signal j_3_fu_444_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal j_3_reg_616 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal j_reg_1920 : STD_LOGIC;
  signal \j_reg_192[0]_i_1_n_4\ : STD_LOGIC;
  signal \j_reg_192[1]_i_1_n_4\ : STD_LOGIC;
  signal \j_reg_192[2]_i_1_n_4\ : STD_LOGIC;
  signal k_1_fu_456_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal k_1_reg_624 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal k_reg_2620 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal tmp1_cast_fu_398_p1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tmp_15_fu_466_p3 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tmp_5_cast_reg_587 : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal \tmp_5_cast_reg_587[5]_i_1_n_4\ : STD_LOGIC;
  signal \tmp_5_cast_reg_587[6]_i_1_n_4\ : STD_LOGIC;
  signal tmp_8_reg_564 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal tmp_8_reg_5641 : STD_LOGIC;
  signal NLW_sum_reg_250_reg_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_250_reg_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_250_reg_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_250_reg_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_250_reg_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_250_reg_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum_reg_250_reg_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum_reg_250_reg_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum_reg_250_reg_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum_reg_250_reg_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 20 );
  signal NLW_sum_reg_250_reg_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Input_r_address0[0]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Input_r_address0[1]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Input_r_address0[2]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Input_r_address0[5]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Input_r_address0[6]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Input_r_address0[7]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of Input_r_ce0_INST_0 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[5]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_1\ : label is "soft_lutpair19";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[10]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[11]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[12]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[13]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[9]\ : label is "none";
  attribute SOFT_HLUTNM of ap_idle_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \i1_reg_203[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i1_reg_203[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \i_1_reg_551[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_1_reg_551[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \i_1_reg_551[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \i_2_reg_577[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \i_3_reg_608[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i_3_reg_608[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i_3_reg_608[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \i_3_reg_608[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \invdar1_reg_169[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \invdar1_reg_169[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \invdar1_reg_169[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \invdar1_reg_169[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \invdar1_reg_169[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \invdar1_reg_169[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \invdar1_reg_169[7]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \invdar1_reg_169[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \invdar1_reg_169[9]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \invdar_reg_158[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \invdar_reg_158[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \invdar_reg_158[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \invdar_reg_158[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \invdar_reg_158[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \invdar_reg_158[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \invdar_reg_158[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \invdar_reg_158[8]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \invdar_reg_158[9]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j2_reg_214[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \j2_reg_214[2]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \j_1_reg_559[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j_1_reg_559[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j_1_reg_559[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \j_2_reg_595[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \j_2_reg_595[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \j_2_reg_595[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j_3_reg_616[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \j_3_reg_616[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \j_3_reg_616[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \j_3_reg_616[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \j_reg_192[2]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \k_1_reg_624[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \k_1_reg_624[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \k_1_reg_624[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \k_1_reg_624[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \tmp_5_cast_reg_587[5]_i_1\ : label is "soft_lutpair0";
begin
  AB_address0(9) <= \<const0>\;
  AB_address0(8 downto 0) <= \^ab_address0\(8 downto 0);
  AB_ce0 <= \^ab_ce0\;
  AB_d0(31) <= \<const0>\;
  AB_d0(30) <= \<const0>\;
  AB_d0(29) <= \<const0>\;
  AB_d0(28) <= \<const0>\;
  AB_d0(27) <= \<const0>\;
  AB_d0(26) <= \<const0>\;
  AB_d0(25) <= \<const0>\;
  AB_d0(24) <= \<const0>\;
  AB_d0(23) <= \<const0>\;
  AB_d0(22) <= \<const0>\;
  AB_d0(21) <= \<const0>\;
  AB_d0(20) <= \<const0>\;
  AB_d0(19 downto 0) <= \^ab_d0\(19 downto 0);
  AB_we0 <= \^ab_we0\;
  Input_r_address0(10) <= \<const0>\;
  Input_r_address0(9) <= \<const0>\;
  Input_r_address0(8) <= \<const0>\;
  Input_r_address0(7 downto 5) <= \^input_r_address0\(7 downto 5);
  Input_r_address0(4) <= \<const0>\;
  Input_r_address0(3) <= \<const0>\;
  Input_r_address0(2 downto 0) <= \^input_r_address0\(2 downto 0);
  ap_done <= \^ap_ready\;
  ap_ready <= \^ap_ready\;
AB_we0_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => tmp_15_fu_466_p3(2),
      I1 => tmp_15_fu_466_p3(3),
      I2 => tmp_15_fu_466_p3(0),
      I3 => tmp_15_fu_466_p3(1),
      I4 => \^ab_ce0\,
      I5 => tmp_15_fu_466_p3(4),
      O => \^ab_we0\
    );
A_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A
     port map (
      DOADO(7 downto 0) => A_q0(7 downto 0),
      Input_r_q0(7 downto 0) => Input_r_q0(7 downto 0),
      Q(2) => \^ab_ce0\,
      Q(1) => ap_CS_fsm_state6,
      Q(0) => ap_CS_fsm_state2,
      ap_clk => ap_clk,
      \i6_reg_226_reg[3]\(3 downto 0) => \^ab_address0\(8 downto 5),
      \invdar_reg_158_reg[9]\(9 downto 0) => \invdar_reg_158_reg__0\(9 downto 0),
      \k_reg_262_reg[4]\(4 downto 0) => tmp_15_fu_466_p3(4 downto 0),
      \tmp_8_reg_564_reg[6]\(4 downto 3) => tmp_8_reg_564(6 downto 5),
      \tmp_8_reg_564_reg[6]\(2 downto 0) => tmp_8_reg_564(2 downto 0)
    );
B_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2_A_0
     port map (
      DOADO(7 downto 0) => B_q0(7 downto 0),
      Input_r_q0(7 downto 0) => Input_r_q0(7 downto 0),
      Q(2) => \^ab_ce0\,
      Q(1) => ap_CS_fsm_state9,
      Q(0) => ap_CS_fsm_state3,
      ap_clk => ap_clk,
      \invdar1_reg_169_reg[9]\(9 downto 0) => \invdar1_reg_169_reg__0\(9 downto 0),
      \j7_reg_238_reg[4]\(4 downto 0) => \^ab_address0\(4 downto 0),
      \k_reg_262_reg[3]\(3 downto 0) => tmp_15_fu_466_p3(3 downto 0),
      tmp1_cast_fu_398_p1(2 downto 0) => tmp1_cast_fu_398_p1(2 downto 0),
      tmp_5_cast_reg_587(1 downto 0) => tmp_5_cast_reg_587(6 downto 5)
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\Input_r_address0[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(0),
      I1 => ap_CS_fsm_state8,
      I2 => p_0_in(0),
      O => \^input_r_address0\(0)
    );
\Input_r_address0[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(1),
      I1 => ap_CS_fsm_state8,
      I2 => p_0_in(1),
      O => \^input_r_address0\(1)
    );
\Input_r_address0[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(2),
      I1 => ap_CS_fsm_state8,
      I2 => p_0_in(2),
      O => \^input_r_address0\(2)
    );
\Input_r_address0[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => tmp_5_cast_reg_587(5),
      I1 => ap_CS_fsm_state8,
      I2 => p_0_in(5),
      O => \^input_r_address0\(5)
    );
\Input_r_address0[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2EE2"
    )
        port map (
      I0 => p_0_in(6),
      I1 => ap_CS_fsm_state8,
      I2 => tmp_5_cast_reg_587(6),
      I3 => tmp_5_cast_reg_587(5),
      O => \^input_r_address0\(6)
    );
\Input_r_address0[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ap_CS_fsm_state8,
      I1 => tmp_5_cast_reg_587(6),
      I2 => tmp_5_cast_reg_587(5),
      O => \^input_r_address0\(7)
    );
Input_r_ce0_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => ap_CS_fsm_state8,
      O => Input_r_ce0
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88F8"
    )
        port map (
      I0 => \^ap_ready\,
      I1 => ap_CS_fsm_state10,
      I2 => \ap_CS_fsm_reg_n_4_[0]\,
      I3 => ap_start,
      O => ap_NS_fsm(0)
    );
\ap_CS_fsm[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \^ab_we0\,
      I1 => \^ab_ce0\,
      I2 => \^ap_ready\,
      I3 => ap_CS_fsm_state10,
      O => ap_NS_fsm(10)
    );
\ap_CS_fsm[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => ap_NS_fsm1,
      I1 => ap_CS_fsm_state11,
      I2 => ap_CS_fsm_state14,
      O => ap_NS_fsm(11)
    );
\ap_CS_fsm[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCCCCCCCC4"
    )
        port map (
      I0 => tmp_15_fu_466_p3(4),
      I1 => \^ab_ce0\,
      I2 => tmp_15_fu_466_p3(1),
      I3 => tmp_15_fu_466_p3(0),
      I4 => tmp_15_fu_466_p3(3),
      I5 => tmp_15_fu_466_p3(2),
      O => ap_NS_fsm(12)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A2A2A"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \ap_CS_fsm[2]_i_2_n_4\,
      I2 => \ap_CS_fsm[2]_i_3_n_4\,
      I3 => \ap_CS_fsm_reg_n_4_[0]\,
      I4 => ap_start,
      O => ap_NS_fsm(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF2A2A2A2A2A2A2A"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \ap_CS_fsm[3]_i_3_n_4\,
      I2 => \ap_CS_fsm[3]_i_4_n_4\,
      I3 => ap_CS_fsm_state2,
      I4 => \ap_CS_fsm[2]_i_2_n_4\,
      I5 => \ap_CS_fsm[2]_i_3_n_4\,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(1),
      I1 => \invdar_reg_158_reg__0\(0),
      I2 => \invdar_reg_158_reg__0\(3),
      I3 => \invdar_reg_158_reg__0\(2),
      O => \ap_CS_fsm[2]_i_2_n_4\
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(4),
      I1 => \invdar_reg_158_reg__0\(5),
      I2 => \invdar_reg_158_reg__0\(6),
      I3 => \invdar_reg_158_reg__0\(7),
      I4 => \invdar_reg_158_reg__0\(9),
      I5 => \invdar_reg_158_reg__0\(8),
      O => \ap_CS_fsm[2]_i_3_n_4\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => ap_NS_fsm12_out,
      I1 => ap_CS_fsm_state5,
      I2 => ap_CS_fsm_state3,
      I3 => \ap_CS_fsm[3]_i_3_n_4\,
      I4 => \ap_CS_fsm[3]_i_4_n_4\,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(2),
      I2 => p_0_in(1),
      I3 => ap_CS_fsm_state5,
      O => ap_NS_fsm12_out
    );
\ap_CS_fsm[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(1),
      I1 => \invdar1_reg_169_reg__0\(0),
      I2 => \invdar1_reg_169_reg__0\(3),
      I3 => \invdar1_reg_169_reg__0\(2),
      O => \ap_CS_fsm[3]_i_3_n_4\
    );
\ap_CS_fsm[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(4),
      I1 => \invdar1_reg_169_reg__0\(5),
      I2 => \invdar1_reg_169_reg__0\(6),
      I3 => \invdar1_reg_169_reg__0\(7),
      I4 => \invdar1_reg_169_reg__0\(9),
      I5 => \invdar1_reg_169_reg__0\(8),
      O => \ap_CS_fsm[3]_i_4_n_4\
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAA2"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \i_reg_180_reg_n_4_[2]\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      I4 => ap_CS_fsm_state6,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => p_0_in(0),
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF100010001000"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(1),
      I1 => tmp1_cast_fu_398_p1(0),
      I2 => ap_CS_fsm_state8,
      I3 => tmp1_cast_fu_398_p1(2),
      I4 => ap_NS_fsm13_out,
      I5 => ap_CS_fsm_state4,
      O => ap_NS_fsm(6)
    );
\ap_CS_fsm[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \i_reg_180_reg_n_4_[2]\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      O => ap_NS_fsm13_out
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFB00"
    )
        port map (
      I0 => i1_reg_203(0),
      I1 => i1_reg_203(2),
      I2 => i1_reg_203(1),
      I3 => ap_CS_fsm_state7,
      I4 => ap_CS_fsm_state9,
      O => ap_NS_fsm(7)
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCC4"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(2),
      I1 => ap_CS_fsm_state8,
      I2 => tmp1_cast_fu_398_p1(0),
      I3 => tmp1_cast_fu_398_p1(1),
      O => ap_NS_fsm(8)
    );
\ap_CS_fsm[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888F8888888888"
    )
        port map (
      I0 => ap_NS_fsm1,
      I1 => ap_CS_fsm_state11,
      I2 => i1_reg_203(0),
      I3 => i1_reg_203(2),
      I4 => i1_reg_203(1),
      I5 => ap_CS_fsm_state7,
      O => ap_NS_fsm(9)
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_4_[0]\,
      S => ap_rst
    );
\ap_CS_fsm_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(10),
      Q => ap_CS_fsm_state11,
      R => ap_rst
    );
\ap_CS_fsm_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(11),
      Q => \^ab_ce0\,
      R => ap_rst
    );
\ap_CS_fsm_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(12),
      Q => ap_CS_fsm_state13,
      R => ap_rst
    );
\ap_CS_fsm_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_CS_fsm_state13,
      Q => ap_CS_fsm_state14,
      R => ap_rst
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_state2,
      R => ap_rst
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_state6,
      R => ap_rst
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(6),
      Q => ap_CS_fsm_state7,
      R => ap_rst
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_state8,
      R => ap_rst
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => ap_CS_fsm_state9,
      R => ap_rst
    );
\ap_CS_fsm_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(9),
      Q => ap_CS_fsm_state10,
      R => ap_rst
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_4_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => \^ab_address0\(7),
      I2 => \^ab_address0\(8),
      I3 => \^ab_address0\(6),
      I4 => \^ab_address0\(5),
      I5 => i6_reg_226(4),
      O => \^ap_ready\
    );
\i1_reg_203[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i1_reg_203(0),
      I1 => ap_NS_fsm10_out,
      I2 => i_2_reg_577(0),
      I3 => ap_NS_fsm13_out,
      O => \i1_reg_203[0]_i_1_n_4\
    );
\i1_reg_203[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i1_reg_203(1),
      I1 => ap_NS_fsm10_out,
      I2 => i_2_reg_577(1),
      I3 => ap_NS_fsm13_out,
      O => \i1_reg_203[1]_i_1_n_4\
    );
\i1_reg_203[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => i1_reg_203(2),
      I1 => ap_NS_fsm10_out,
      I2 => i_2_reg_577(2),
      I3 => ap_NS_fsm13_out,
      O => \i1_reg_203[2]_i_1_n_4\
    );
\i1_reg_203[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(1),
      I1 => tmp1_cast_fu_398_p1(0),
      I2 => ap_CS_fsm_state8,
      I3 => tmp1_cast_fu_398_p1(2),
      O => ap_NS_fsm10_out
    );
\i1_reg_203_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i1_reg_203[0]_i_1_n_4\,
      Q => i1_reg_203(0),
      R => '0'
    );
\i1_reg_203_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i1_reg_203[1]_i_1_n_4\,
      Q => i1_reg_203(1),
      R => '0'
    );
\i1_reg_203_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i1_reg_203[2]_i_1_n_4\,
      Q => i1_reg_203(2),
      R => '0'
    );
\i6_reg_226[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => i1_reg_203(0),
      I1 => i1_reg_203(2),
      I2 => i1_reg_203(1),
      I3 => ap_CS_fsm_state7,
      O => ap_NS_fsm11_out
    );
\i6_reg_226[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => \^ab_address0\(4),
      I2 => \^ab_address0\(3),
      I3 => \^ab_address0\(2),
      I4 => \^ab_address0\(1),
      I5 => \^ab_address0\(0),
      O => ap_NS_fsm1
    );
\i6_reg_226_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_3_reg_608(0),
      Q => \^ab_address0\(5),
      R => ap_NS_fsm11_out
    );
\i6_reg_226_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_3_reg_608(1),
      Q => \^ab_address0\(6),
      R => ap_NS_fsm11_out
    );
\i6_reg_226_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_3_reg_608(2),
      Q => \^ab_address0\(7),
      R => ap_NS_fsm11_out
    );
\i6_reg_226_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_3_reg_608(3),
      Q => \^ab_address0\(8),
      R => ap_NS_fsm11_out
    );
\i6_reg_226_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_NS_fsm1,
      D => i_3_reg_608(4),
      Q => i6_reg_226(4),
      R => ap_NS_fsm11_out
    );
\i_1_reg_551[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => p_0_in(5),
      I1 => ap_CS_fsm_state4,
      I2 => i_1_reg_551(0),
      O => \i_1_reg_551[0]_i_1_n_4\
    );
\i_1_reg_551[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(6),
      I2 => ap_CS_fsm_state4,
      I3 => i_1_reg_551(1),
      O => \i_1_reg_551[1]_i_1_n_4\
    );
\i_1_reg_551[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7800"
    )
        port map (
      I0 => p_0_in(5),
      I1 => p_0_in(6),
      I2 => \i_reg_180_reg_n_4_[2]\,
      I3 => ap_CS_fsm_state4,
      I4 => i_1_reg_551(2),
      O => \i_1_reg_551[2]_i_1_n_4\
    );
\i_1_reg_551_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_1_reg_551[0]_i_1_n_4\,
      Q => i_1_reg_551(0),
      R => '0'
    );
\i_1_reg_551_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_1_reg_551[1]_i_1_n_4\,
      Q => i_1_reg_551(1),
      R => '0'
    );
\i_1_reg_551_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_1_reg_551[2]_i_1_n_4\,
      Q => i_1_reg_551(2),
      R => '0'
    );
\i_2_reg_577[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => i1_reg_203(0),
      I1 => ap_CS_fsm_state7,
      I2 => i_2_reg_577(0),
      O => \i_2_reg_577[0]_i_1_n_4\
    );
\i_2_reg_577[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => i1_reg_203(0),
      I1 => i1_reg_203(1),
      I2 => ap_CS_fsm_state7,
      I3 => i_2_reg_577(1),
      O => \i_2_reg_577[1]_i_1_n_4\
    );
\i_2_reg_577[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7800"
    )
        port map (
      I0 => i1_reg_203(0),
      I1 => i1_reg_203(1),
      I2 => i1_reg_203(2),
      I3 => ap_CS_fsm_state7,
      I4 => i_2_reg_577(2),
      O => \i_2_reg_577[2]_i_1_n_4\
    );
\i_2_reg_577_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_2_reg_577[0]_i_1_n_4\,
      Q => i_2_reg_577(0),
      R => '0'
    );
\i_2_reg_577_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_2_reg_577[1]_i_1_n_4\,
      Q => i_2_reg_577(1),
      R => '0'
    );
\i_2_reg_577_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_2_reg_577[2]_i_1_n_4\,
      Q => i_2_reg_577(2),
      R => '0'
    );
\i_3_reg_608[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ab_address0\(5),
      O => i_3_fu_432_p2(0)
    );
\i_3_reg_608[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ab_address0\(5),
      I1 => \^ab_address0\(6),
      O => i_3_fu_432_p2(1)
    );
\i_3_reg_608[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^ab_address0\(5),
      I1 => \^ab_address0\(6),
      I2 => \^ab_address0\(7),
      O => i_3_fu_432_p2(2)
    );
\i_3_reg_608[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^ab_address0\(6),
      I1 => \^ab_address0\(5),
      I2 => \^ab_address0\(7),
      I3 => \^ab_address0\(8),
      O => i_3_fu_432_p2(3)
    );
\i_3_reg_608[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^ab_address0\(7),
      I1 => \^ab_address0\(5),
      I2 => \^ab_address0\(6),
      I3 => \^ab_address0\(8),
      I4 => i6_reg_226(4),
      O => i_3_fu_432_p2(4)
    );
\i_3_reg_608_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state10,
      D => i_3_fu_432_p2(0),
      Q => i_3_reg_608(0),
      R => '0'
    );
\i_3_reg_608_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state10,
      D => i_3_fu_432_p2(1),
      Q => i_3_reg_608(1),
      R => '0'
    );
\i_3_reg_608_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state10,
      D => i_3_fu_432_p2(2),
      Q => i_3_reg_608(2),
      R => '0'
    );
\i_3_reg_608_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state10,
      D => i_3_fu_432_p2(3),
      Q => i_3_reg_608(3),
      R => '0'
    );
\i_3_reg_608_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state10,
      D => i_3_fu_432_p2(4),
      Q => i_3_reg_608(4),
      R => '0'
    );
\i_reg_180[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2E2E2E2E2E2E2"
    )
        port map (
      I0 => p_0_in(5),
      I1 => ap_NS_fsm12_out,
      I2 => i_1_reg_551(0),
      I3 => \ap_CS_fsm[3]_i_4_n_4\,
      I4 => \ap_CS_fsm[3]_i_3_n_4\,
      I5 => ap_CS_fsm_state3,
      O => \i_reg_180[0]_i_1_n_4\
    );
\i_reg_180[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2E2E2E2E2E2E2"
    )
        port map (
      I0 => p_0_in(6),
      I1 => ap_NS_fsm12_out,
      I2 => i_1_reg_551(1),
      I3 => \ap_CS_fsm[3]_i_4_n_4\,
      I4 => \ap_CS_fsm[3]_i_3_n_4\,
      I5 => ap_CS_fsm_state3,
      O => \i_reg_180[1]_i_1_n_4\
    );
\i_reg_180[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2E2E2E2E2E2E2"
    )
        port map (
      I0 => \i_reg_180_reg_n_4_[2]\,
      I1 => ap_NS_fsm12_out,
      I2 => i_1_reg_551(2),
      I3 => \ap_CS_fsm[3]_i_4_n_4\,
      I4 => \ap_CS_fsm[3]_i_3_n_4\,
      I5 => ap_CS_fsm_state3,
      O => \i_reg_180[2]_i_1_n_4\
    );
\i_reg_180_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_reg_180[0]_i_1_n_4\,
      Q => p_0_in(5),
      R => '0'
    );
\i_reg_180_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_reg_180[1]_i_1_n_4\,
      Q => p_0_in(6),
      R => '0'
    );
\i_reg_180_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \i_reg_180[2]_i_1_n_4\,
      Q => \i_reg_180_reg_n_4_[2]\,
      R => '0'
    );
\invdar1_reg_169[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(0),
      O => indvarinc1_fu_290_p2(0)
    );
\invdar1_reg_169[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(0),
      I1 => \invdar1_reg_169_reg__0\(1),
      O => indvarinc1_fu_290_p2(1)
    );
\invdar1_reg_169[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(0),
      I1 => \invdar1_reg_169_reg__0\(1),
      I2 => \invdar1_reg_169_reg__0\(2),
      O => indvarinc1_fu_290_p2(2)
    );
\invdar1_reg_169[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(1),
      I1 => \invdar1_reg_169_reg__0\(0),
      I2 => \invdar1_reg_169_reg__0\(2),
      I3 => \invdar1_reg_169_reg__0\(3),
      O => indvarinc1_fu_290_p2(3)
    );
\invdar1_reg_169[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(2),
      I1 => \invdar1_reg_169_reg__0\(0),
      I2 => \invdar1_reg_169_reg__0\(1),
      I3 => \invdar1_reg_169_reg__0\(3),
      I4 => \invdar1_reg_169_reg__0\(4),
      O => indvarinc1_fu_290_p2(4)
    );
\invdar1_reg_169[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(3),
      I1 => \invdar1_reg_169_reg__0\(1),
      I2 => \invdar1_reg_169_reg__0\(0),
      I3 => \invdar1_reg_169_reg__0\(2),
      I4 => \invdar1_reg_169_reg__0\(4),
      I5 => \invdar1_reg_169_reg__0\(5),
      O => indvarinc1_fu_290_p2(5)
    );
\invdar1_reg_169[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \invdar1_reg_169[9]_i_4_n_4\,
      I1 => \invdar1_reg_169_reg__0\(6),
      O => indvarinc1_fu_290_p2(6)
    );
\invdar1_reg_169[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \invdar1_reg_169[9]_i_4_n_4\,
      I1 => \invdar1_reg_169_reg__0\(6),
      I2 => \invdar1_reg_169_reg__0\(7),
      O => indvarinc1_fu_290_p2(7)
    );
\invdar1_reg_169[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(6),
      I1 => \invdar1_reg_169[9]_i_4_n_4\,
      I2 => \invdar1_reg_169_reg__0\(7),
      I3 => \invdar1_reg_169_reg__0\(8),
      O => indvarinc1_fu_290_p2(8)
    );
\invdar1_reg_169[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \invdar_reg_158_reg__0\(1),
      I2 => \invdar_reg_158_reg__0\(0),
      I3 => \invdar_reg_158_reg__0\(3),
      I4 => \invdar_reg_158_reg__0\(2),
      I5 => \ap_CS_fsm[2]_i_3_n_4\,
      O => ap_NS_fsm15_out
    );
\invdar1_reg_169[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state3,
      I1 => \invdar1_reg_169_reg__0\(1),
      I2 => \invdar1_reg_169_reg__0\(0),
      I3 => \invdar1_reg_169_reg__0\(3),
      I4 => \invdar1_reg_169_reg__0\(2),
      I5 => \ap_CS_fsm[3]_i_4_n_4\,
      O => invdar1_reg_1690
    );
\invdar1_reg_169[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(7),
      I1 => \invdar1_reg_169[9]_i_4_n_4\,
      I2 => \invdar1_reg_169_reg__0\(6),
      I3 => \invdar1_reg_169_reg__0\(8),
      I4 => \invdar1_reg_169_reg__0\(9),
      O => indvarinc1_fu_290_p2(9)
    );
\invdar1_reg_169[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \invdar1_reg_169_reg__0\(5),
      I1 => \invdar1_reg_169_reg__0\(3),
      I2 => \invdar1_reg_169_reg__0\(1),
      I3 => \invdar1_reg_169_reg__0\(0),
      I4 => \invdar1_reg_169_reg__0\(2),
      I5 => \invdar1_reg_169_reg__0\(4),
      O => \invdar1_reg_169[9]_i_4_n_4\
    );
\invdar1_reg_169_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(0),
      Q => \invdar1_reg_169_reg__0\(0),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(1),
      Q => \invdar1_reg_169_reg__0\(1),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(2),
      Q => \invdar1_reg_169_reg__0\(2),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(3),
      Q => \invdar1_reg_169_reg__0\(3),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(4),
      Q => \invdar1_reg_169_reg__0\(4),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(5),
      Q => \invdar1_reg_169_reg__0\(5),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(6),
      Q => \invdar1_reg_169_reg__0\(6),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(7),
      Q => \invdar1_reg_169_reg__0\(7),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(8),
      Q => \invdar1_reg_169_reg__0\(8),
      R => ap_NS_fsm15_out
    );
\invdar1_reg_169_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar1_reg_1690,
      D => indvarinc1_fu_290_p2(9),
      Q => \invdar1_reg_169_reg__0\(9),
      R => ap_NS_fsm15_out
    );
\invdar_reg_158[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(0),
      O => indvarinc_fu_273_p2(0)
    );
\invdar_reg_158[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(0),
      I1 => \invdar_reg_158_reg__0\(1),
      O => indvarinc_fu_273_p2(1)
    );
\invdar_reg_158[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(0),
      I1 => \invdar_reg_158_reg__0\(1),
      I2 => \invdar_reg_158_reg__0\(2),
      O => indvarinc_fu_273_p2(2)
    );
\invdar_reg_158[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(1),
      I1 => \invdar_reg_158_reg__0\(0),
      I2 => \invdar_reg_158_reg__0\(2),
      I3 => \invdar_reg_158_reg__0\(3),
      O => indvarinc_fu_273_p2(3)
    );
\invdar_reg_158[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(2),
      I1 => \invdar_reg_158_reg__0\(0),
      I2 => \invdar_reg_158_reg__0\(1),
      I3 => \invdar_reg_158_reg__0\(3),
      I4 => \invdar_reg_158_reg__0\(4),
      O => indvarinc_fu_273_p2(4)
    );
\invdar_reg_158[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(3),
      I1 => \invdar_reg_158_reg__0\(1),
      I2 => \invdar_reg_158_reg__0\(0),
      I3 => \invdar_reg_158_reg__0\(2),
      I4 => \invdar_reg_158_reg__0\(4),
      I5 => \invdar_reg_158_reg__0\(5),
      O => indvarinc_fu_273_p2(5)
    );
\invdar_reg_158[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \invdar_reg_158[9]_i_4_n_4\,
      I1 => \invdar_reg_158_reg__0\(6),
      O => indvarinc_fu_273_p2(6)
    );
\invdar_reg_158[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \invdar_reg_158[9]_i_4_n_4\,
      I1 => \invdar_reg_158_reg__0\(6),
      I2 => \invdar_reg_158_reg__0\(7),
      O => indvarinc_fu_273_p2(7)
    );
\invdar_reg_158[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(6),
      I1 => \invdar_reg_158[9]_i_4_n_4\,
      I2 => \invdar_reg_158_reg__0\(7),
      I3 => \invdar_reg_158_reg__0\(8),
      O => indvarinc_fu_273_p2(8)
    );
\invdar_reg_158[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80008888"
    )
        port map (
      I0 => ap_start,
      I1 => \ap_CS_fsm_reg_n_4_[0]\,
      I2 => \ap_CS_fsm[2]_i_3_n_4\,
      I3 => \ap_CS_fsm[2]_i_2_n_4\,
      I4 => ap_CS_fsm_state2,
      O => invdar_reg_158
    );
\invdar_reg_158[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state2,
      I1 => \invdar_reg_158_reg__0\(1),
      I2 => \invdar_reg_158_reg__0\(0),
      I3 => \invdar_reg_158_reg__0\(3),
      I4 => \invdar_reg_158_reg__0\(2),
      I5 => \ap_CS_fsm[2]_i_3_n_4\,
      O => invdar_reg_1580
    );
\invdar_reg_158[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(7),
      I1 => \invdar_reg_158[9]_i_4_n_4\,
      I2 => \invdar_reg_158_reg__0\(6),
      I3 => \invdar_reg_158_reg__0\(8),
      I4 => \invdar_reg_158_reg__0\(9),
      O => indvarinc_fu_273_p2(9)
    );
\invdar_reg_158[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \invdar_reg_158_reg__0\(5),
      I1 => \invdar_reg_158_reg__0\(3),
      I2 => \invdar_reg_158_reg__0\(1),
      I3 => \invdar_reg_158_reg__0\(0),
      I4 => \invdar_reg_158_reg__0\(2),
      I5 => \invdar_reg_158_reg__0\(4),
      O => \invdar_reg_158[9]_i_4_n_4\
    );
\invdar_reg_158_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(0),
      Q => \invdar_reg_158_reg__0\(0),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(1),
      Q => \invdar_reg_158_reg__0\(1),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(2),
      Q => \invdar_reg_158_reg__0\(2),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(3),
      Q => \invdar_reg_158_reg__0\(3),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(4),
      Q => \invdar_reg_158_reg__0\(4),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(5),
      Q => \invdar_reg_158_reg__0\(5),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(6),
      Q => \invdar_reg_158_reg__0\(6),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(7),
      Q => \invdar_reg_158_reg__0\(7),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(8),
      Q => \invdar_reg_158_reg__0\(8),
      R => invdar_reg_158
    );
\invdar_reg_158_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => invdar_reg_1580,
      D => indvarinc_fu_273_p2(9),
      Q => \invdar_reg_158_reg__0\(9),
      R => invdar_reg_158
    );
\j2_reg_214[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(0),
      I1 => ap_CS_fsm_state9,
      I2 => j_2_reg_595(0),
      I3 => j2_reg_2140,
      O => \j2_reg_214[0]_i_1_n_4\
    );
\j2_reg_214[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(1),
      I1 => ap_CS_fsm_state9,
      I2 => j_2_reg_595(1),
      I3 => j2_reg_2140,
      O => \j2_reg_214[1]_i_1_n_4\
    );
\j2_reg_214[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(2),
      I1 => ap_CS_fsm_state9,
      I2 => j_2_reg_595(2),
      I3 => j2_reg_2140,
      O => \j2_reg_214[2]_i_1_n_4\
    );
\j2_reg_214[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => i1_reg_203(0),
      I2 => i1_reg_203(2),
      I3 => i1_reg_203(1),
      O => j2_reg_2140
    );
\j2_reg_214_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j2_reg_214[0]_i_1_n_4\,
      Q => tmp1_cast_fu_398_p1(0),
      R => '0'
    );
\j2_reg_214_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j2_reg_214[1]_i_1_n_4\,
      Q => tmp1_cast_fu_398_p1(1),
      R => '0'
    );
\j2_reg_214_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j2_reg_214[2]_i_1_n_4\,
      Q => tmp1_cast_fu_398_p1(2),
      R => '0'
    );
\j7_reg_238[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => \^ab_address0\(7),
      I2 => \^ab_address0\(8),
      I3 => \^ab_address0\(6),
      I4 => \^ab_address0\(5),
      I5 => i6_reg_226(4),
      O => j7_reg_2380
    );
\j7_reg_238_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_we0\,
      D => j_3_reg_616(0),
      Q => \^ab_address0\(0),
      R => j7_reg_2380
    );
\j7_reg_238_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_we0\,
      D => j_3_reg_616(1),
      Q => \^ab_address0\(1),
      R => j7_reg_2380
    );
\j7_reg_238_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_we0\,
      D => j_3_reg_616(2),
      Q => \^ab_address0\(2),
      R => j7_reg_2380
    );
\j7_reg_238_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_we0\,
      D => j_3_reg_616(3),
      Q => \^ab_address0\(3),
      R => j7_reg_2380
    );
\j7_reg_238_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_we0\,
      D => j_3_reg_616(4),
      Q => \^ab_address0\(4),
      R => j7_reg_2380
    );
\j_1_reg_559[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => p_0_in(0),
      I1 => ap_CS_fsm_state5,
      I2 => j_1_reg_559(0),
      O => \j_1_reg_559[0]_i_1_n_4\
    );
\j_1_reg_559[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => ap_CS_fsm_state5,
      I3 => j_1_reg_559(1),
      O => \j_1_reg_559[1]_i_1_n_4\
    );
\j_1_reg_559[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7800"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => ap_CS_fsm_state5,
      I4 => j_1_reg_559(2),
      O => \j_1_reg_559[2]_i_1_n_4\
    );
\j_1_reg_559_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_1_reg_559[0]_i_1_n_4\,
      Q => j_1_reg_559(0),
      R => '0'
    );
\j_1_reg_559_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_1_reg_559[1]_i_1_n_4\,
      Q => j_1_reg_559(1),
      R => '0'
    );
\j_1_reg_559_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_1_reg_559[2]_i_1_n_4\,
      Q => j_1_reg_559(2),
      R => '0'
    );
\j_2_reg_595[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(0),
      I1 => ap_CS_fsm_state8,
      I2 => j_2_reg_595(0),
      O => \j_2_reg_595[0]_i_1_n_4\
    );
\j_2_reg_595[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F60"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(0),
      I1 => tmp1_cast_fu_398_p1(1),
      I2 => ap_CS_fsm_state8,
      I3 => j_2_reg_595(1),
      O => \j_2_reg_595[1]_i_1_n_4\
    );
\j_2_reg_595[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78FF7800"
    )
        port map (
      I0 => tmp1_cast_fu_398_p1(0),
      I1 => tmp1_cast_fu_398_p1(1),
      I2 => tmp1_cast_fu_398_p1(2),
      I3 => ap_CS_fsm_state8,
      I4 => j_2_reg_595(2),
      O => \j_2_reg_595[2]_i_1_n_4\
    );
\j_2_reg_595_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_2_reg_595[0]_i_1_n_4\,
      Q => j_2_reg_595(0),
      R => '0'
    );
\j_2_reg_595_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_2_reg_595[1]_i_1_n_4\,
      Q => j_2_reg_595(1),
      R => '0'
    );
\j_2_reg_595_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_2_reg_595[2]_i_1_n_4\,
      Q => j_2_reg_595(2),
      R => '0'
    );
\j_3_reg_616[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ab_address0\(0),
      O => j_3_fu_444_p2(0)
    );
\j_3_reg_616[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ab_address0\(0),
      I1 => \^ab_address0\(1),
      O => j_3_fu_444_p2(1)
    );
\j_3_reg_616[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^ab_address0\(0),
      I1 => \^ab_address0\(1),
      I2 => \^ab_address0\(2),
      O => j_3_fu_444_p2(2)
    );
\j_3_reg_616[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^ab_address0\(1),
      I1 => \^ab_address0\(0),
      I2 => \^ab_address0\(2),
      I3 => \^ab_address0\(3),
      O => j_3_fu_444_p2(3)
    );
\j_3_reg_616[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^ab_address0\(2),
      I1 => \^ab_address0\(0),
      I2 => \^ab_address0\(1),
      I3 => \^ab_address0\(3),
      I4 => \^ab_address0\(4),
      O => j_3_fu_444_p2(4)
    );
\j_3_reg_616_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state11,
      D => j_3_fu_444_p2(0),
      Q => j_3_reg_616(0),
      R => '0'
    );
\j_3_reg_616_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state11,
      D => j_3_fu_444_p2(1),
      Q => j_3_reg_616(1),
      R => '0'
    );
\j_3_reg_616_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state11,
      D => j_3_fu_444_p2(2),
      Q => j_3_reg_616(2),
      R => '0'
    );
\j_3_reg_616_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state11,
      D => j_3_fu_444_p2(3),
      Q => j_3_reg_616(3),
      R => '0'
    );
\j_3_reg_616_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state11,
      D => j_3_fu_444_p2(4),
      Q => j_3_reg_616(4),
      R => '0'
    );
\j_reg_192[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => ap_CS_fsm_state6,
      I2 => j_1_reg_559(0),
      I3 => j_reg_1920,
      O => \j_reg_192[0]_i_1_n_4\
    );
\j_reg_192[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => p_0_in(1),
      I1 => ap_CS_fsm_state6,
      I2 => j_1_reg_559(1),
      I3 => j_reg_1920,
      O => \j_reg_192[1]_i_1_n_4\
    );
\j_reg_192[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => p_0_in(2),
      I1 => ap_CS_fsm_state6,
      I2 => j_1_reg_559(2),
      I3 => j_reg_1920,
      O => \j_reg_192[2]_i_1_n_4\
    );
\j_reg_192[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA2"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \i_reg_180_reg_n_4_[2]\,
      I2 => p_0_in(5),
      I3 => p_0_in(6),
      O => j_reg_1920
    );
\j_reg_192_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_192[0]_i_1_n_4\,
      Q => p_0_in(0),
      R => '0'
    );
\j_reg_192_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_192[1]_i_1_n_4\,
      Q => p_0_in(1),
      R => '0'
    );
\j_reg_192_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \j_reg_192[2]_i_1_n_4\,
      Q => p_0_in(2),
      R => '0'
    );
\k_1_reg_624[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_15_fu_466_p3(0),
      O => k_1_fu_456_p2(0)
    );
\k_1_reg_624[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_15_fu_466_p3(0),
      I1 => tmp_15_fu_466_p3(1),
      O => k_1_fu_456_p2(1)
    );
\k_1_reg_624[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => tmp_15_fu_466_p3(0),
      I1 => tmp_15_fu_466_p3(1),
      I2 => tmp_15_fu_466_p3(2),
      O => k_1_fu_456_p2(2)
    );
\k_1_reg_624[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => tmp_15_fu_466_p3(1),
      I1 => tmp_15_fu_466_p3(0),
      I2 => tmp_15_fu_466_p3(2),
      I3 => tmp_15_fu_466_p3(3),
      O => k_1_fu_456_p2(3)
    );
\k_1_reg_624[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => tmp_15_fu_466_p3(2),
      I1 => tmp_15_fu_466_p3(0),
      I2 => tmp_15_fu_466_p3(1),
      I3 => tmp_15_fu_466_p3(3),
      I4 => tmp_15_fu_466_p3(4),
      O => k_1_fu_456_p2(4)
    );
\k_1_reg_624_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_ce0\,
      D => k_1_fu_456_p2(0),
      Q => k_1_reg_624(0),
      R => '0'
    );
\k_1_reg_624_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_ce0\,
      D => k_1_fu_456_p2(1),
      Q => k_1_reg_624(1),
      R => '0'
    );
\k_1_reg_624_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_ce0\,
      D => k_1_fu_456_p2(2),
      Q => k_1_reg_624(2),
      R => '0'
    );
\k_1_reg_624_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_ce0\,
      D => k_1_fu_456_p2(3),
      Q => k_1_reg_624(3),
      R => '0'
    );
\k_1_reg_624_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \^ab_ce0\,
      D => k_1_fu_456_p2(4),
      Q => k_1_reg_624(4),
      R => '0'
    );
\k_reg_262_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state14,
      D => k_1_reg_624(0),
      Q => tmp_15_fu_466_p3(0),
      R => k_reg_2620
    );
\k_reg_262_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state14,
      D => k_1_reg_624(1),
      Q => tmp_15_fu_466_p3(1),
      R => k_reg_2620
    );
\k_reg_262_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state14,
      D => k_1_reg_624(2),
      Q => tmp_15_fu_466_p3(2),
      R => k_reg_2620
    );
\k_reg_262_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state14,
      D => k_1_reg_624(3),
      Q => tmp_15_fu_466_p3(3),
      R => k_reg_2620
    );
\k_reg_262_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state14,
      D => k_1_reg_624(4),
      Q => tmp_15_fu_466_p3(4),
      R => k_reg_2620
    );
sum_reg_250_reg: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 1,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 8) => B"0000000000000000000000",
      A(7 downto 0) => A_q0(7 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum_reg_250_reg_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 8) => B"0000000000",
      B(7 downto 0) => B_q0(7 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum_reg_250_reg_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum_reg_250_reg_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum_reg_250_reg_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => ap_CS_fsm_state13,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => ap_CS_fsm_state13,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => ap_CS_fsm_state14,
      CLK => ap_clk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum_reg_250_reg_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0100101",
      OVERFLOW => NLW_sum_reg_250_reg_OVERFLOW_UNCONNECTED,
      P(47 downto 20) => NLW_sum_reg_250_reg_P_UNCONNECTED(47 downto 20),
      P(19 downto 0) => \^ab_d0\(19 downto 0),
      PATTERNBDETECT => NLW_sum_reg_250_reg_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum_reg_250_reg_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum_reg_250_reg_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => k_reg_2620,
      UNDERFLOW => NLW_sum_reg_250_reg_UNDERFLOW_UNCONNECTED
    );
sum_reg_250_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA2"
    )
        port map (
      I0 => ap_CS_fsm_state11,
      I1 => \^ab_address0\(4),
      I2 => \^ab_address0\(3),
      I3 => \^ab_address0\(2),
      I4 => \^ab_address0\(1),
      I5 => \^ab_address0\(0),
      O => k_reg_2620
    );
\tmp_5_cast_reg_587[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFD8888"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => i1_reg_203(0),
      I2 => i1_reg_203(2),
      I3 => i1_reg_203(1),
      I4 => tmp_5_cast_reg_587(5),
      O => \tmp_5_cast_reg_587[5]_i_1_n_4\
    );
\tmp_5_cast_reg_587[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF75AA00"
    )
        port map (
      I0 => ap_CS_fsm_state7,
      I1 => i1_reg_203(0),
      I2 => i1_reg_203(2),
      I3 => i1_reg_203(1),
      I4 => tmp_5_cast_reg_587(6),
      O => \tmp_5_cast_reg_587[6]_i_1_n_4\
    );
\tmp_5_cast_reg_587_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_5_cast_reg_587[5]_i_1_n_4\,
      Q => tmp_5_cast_reg_587(5),
      R => '0'
    );
\tmp_5_cast_reg_587_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_5_cast_reg_587[6]_i_1_n_4\,
      Q => tmp_5_cast_reg_587(6),
      R => '0'
    );
\tmp_8_reg_564[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => ap_CS_fsm_state5,
      I1 => p_0_in(0),
      I2 => p_0_in(2),
      I3 => p_0_in(1),
      O => tmp_8_reg_5641
    );
\tmp_8_reg_564_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_8_reg_5641,
      D => p_0_in(0),
      Q => tmp_8_reg_564(0),
      R => '0'
    );
\tmp_8_reg_564_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_8_reg_5641,
      D => p_0_in(1),
      Q => tmp_8_reg_564(1),
      R => '0'
    );
\tmp_8_reg_564_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_8_reg_5641,
      D => p_0_in(2),
      Q => tmp_8_reg_564(2),
      R => '0'
    );
\tmp_8_reg_564_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_8_reg_5641,
      D => p_0_in(5),
      Q => tmp_8_reg_564(5),
      R => '0'
    );
\tmp_8_reg_564_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => tmp_8_reg_5641,
      D => p_0_in(6),
      Q => tmp_8_reg_564(6),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_matrixmul_1D_rev2_0_4,matrixmul_1D_rev2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "matrixmul_1D_rev2,Vivado 2018.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "14'b00000000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of inst : label is "14'b00001000000000";
  attribute ap_ST_fsm_state11 : string;
  attribute ap_ST_fsm_state11 of inst : label is "14'b00010000000000";
  attribute ap_ST_fsm_state12 : string;
  attribute ap_ST_fsm_state12 of inst : label is "14'b00100000000000";
  attribute ap_ST_fsm_state13 : string;
  attribute ap_ST_fsm_state13 of inst : label is "14'b01000000000000";
  attribute ap_ST_fsm_state14 : string;
  attribute ap_ST_fsm_state14 of inst : label is "14'b10000000000000";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "14'b00000000000010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "14'b00000000000100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "14'b00000000001000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "14'b00000000010000";
  attribute ap_ST_fsm_state6 : string;
  attribute ap_ST_fsm_state6 of inst : label is "14'b00000000100000";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "14'b00000001000000";
  attribute ap_ST_fsm_state8 : string;
  attribute ap_ST_fsm_state8 of inst : label is "14'b00000010000000";
  attribute ap_ST_fsm_state9 : string;
  attribute ap_ST_fsm_state9 of inst : label is "14'b00000100000000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_PARAMETER of ap_ready : signal is "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of AB_address0 : signal is "xilinx.com:signal:data:1.0 AB_address0 DATA";
  attribute X_INTERFACE_PARAMETER of AB_address0 : signal is "XIL_INTERFACENAME AB_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of AB_d0 : signal is "xilinx.com:signal:data:1.0 AB_d0 DATA";
  attribute X_INTERFACE_PARAMETER of AB_d0 : signal is "XIL_INTERFACENAME AB_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
  attribute X_INTERFACE_INFO of Input_r_address0 : signal is "xilinx.com:signal:data:1.0 Input_r_address0 DATA";
  attribute X_INTERFACE_PARAMETER of Input_r_address0 : signal is "XIL_INTERFACENAME Input_r_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  attribute X_INTERFACE_INFO of Input_r_q0 : signal is "xilinx.com:signal:data:1.0 Input_r_q0 DATA";
  attribute X_INTERFACE_PARAMETER of Input_r_q0 : signal is "XIL_INTERFACENAME Input_r_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_matrixmul_1D_rev2
     port map (
      AB_address0(9 downto 0) => AB_address0(9 downto 0),
      AB_ce0 => AB_ce0,
      AB_d0(31 downto 0) => AB_d0(31 downto 0),
      AB_we0 => AB_we0,
      Input_r_address0(10 downto 0) => Input_r_address0(10 downto 0),
      Input_r_ce0 => Input_r_ce0,
      Input_r_q0(7 downto 0) => Input_r_q0(7 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_rst => ap_rst,
      ap_start => ap_start
    );
end STRUCTURE;
