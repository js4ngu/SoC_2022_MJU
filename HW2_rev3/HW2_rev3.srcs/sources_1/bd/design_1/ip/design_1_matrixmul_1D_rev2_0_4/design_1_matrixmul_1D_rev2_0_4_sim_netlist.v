// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sat Jun  4 04:01:43 2022
// Host        : DESKTOP-437TBDQ running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/SEP16/SoC_2022_MJU/HW2_rev3/HW2_rev3.srcs/sources_1/bd/design_1/ip/design_1_matrixmul_1D_rev2_0_4/design_1_matrixmul_1D_rev2_0_4_sim_netlist.v
// Design      : design_1_matrixmul_1D_rev2_0_4
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_matrixmul_1D_rev2_0_4,matrixmul_1D_rev2,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "matrixmul_1D_rev2,Vivado 2018.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_matrixmul_1D_rev2_0_4
   (Input_r_ce0,
    AB_ce0,
    AB_we0,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    Input_r_address0,
    Input_r_q0,
    AB_address0,
    AB_d0);
  output Input_r_ce0;
  output AB_ce0;
  output AB_we0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_ctrl, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {start {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} done {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} idle {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} ready {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Input_r_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Input_r_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 11} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [10:0]Input_r_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 Input_r_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Input_r_q0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) input [7:0]Input_r_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 AB_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AB_address0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 10} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *) output [9:0]AB_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 AB_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AB_d0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}" *) output [31:0]AB_d0;

  wire [9:0]AB_address0;
  wire AB_ce0;
  wire [31:0]AB_d0;
  wire AB_we0;
  wire [10:0]Input_r_address0;
  wire Input_r_ce0;
  wire [7:0]Input_r_q0;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;

  (* ap_ST_fsm_state1 = "14'b00000000000001" *) 
  (* ap_ST_fsm_state10 = "14'b00001000000000" *) 
  (* ap_ST_fsm_state11 = "14'b00010000000000" *) 
  (* ap_ST_fsm_state12 = "14'b00100000000000" *) 
  (* ap_ST_fsm_state13 = "14'b01000000000000" *) 
  (* ap_ST_fsm_state14 = "14'b10000000000000" *) 
  (* ap_ST_fsm_state2 = "14'b00000000000010" *) 
  (* ap_ST_fsm_state3 = "14'b00000000000100" *) 
  (* ap_ST_fsm_state4 = "14'b00000000001000" *) 
  (* ap_ST_fsm_state5 = "14'b00000000010000" *) 
  (* ap_ST_fsm_state6 = "14'b00000000100000" *) 
  (* ap_ST_fsm_state7 = "14'b00000001000000" *) 
  (* ap_ST_fsm_state8 = "14'b00000010000000" *) 
  (* ap_ST_fsm_state9 = "14'b00000100000000" *) 
  design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2 inst
       (.AB_address0(AB_address0),
        .AB_ce0(AB_ce0),
        .AB_d0(AB_d0),
        .AB_we0(AB_we0),
        .Input_r_address0(Input_r_address0),
        .Input_r_ce0(Input_r_ce0),
        .Input_r_q0(Input_r_q0),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start));
endmodule

(* ORIG_REF_NAME = "matrixmul_1D_rev2" *) (* ap_ST_fsm_state1 = "14'b00000000000001" *) (* ap_ST_fsm_state10 = "14'b00001000000000" *) 
(* ap_ST_fsm_state11 = "14'b00010000000000" *) (* ap_ST_fsm_state12 = "14'b00100000000000" *) (* ap_ST_fsm_state13 = "14'b01000000000000" *) 
(* ap_ST_fsm_state14 = "14'b10000000000000" *) (* ap_ST_fsm_state2 = "14'b00000000000010" *) (* ap_ST_fsm_state3 = "14'b00000000000100" *) 
(* ap_ST_fsm_state4 = "14'b00000000001000" *) (* ap_ST_fsm_state5 = "14'b00000000010000" *) (* ap_ST_fsm_state6 = "14'b00000000100000" *) 
(* ap_ST_fsm_state7 = "14'b00000001000000" *) (* ap_ST_fsm_state8 = "14'b00000010000000" *) (* ap_ST_fsm_state9 = "14'b00000100000000" *) 
(* hls_module = "yes" *) 
module design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    Input_r_address0,
    Input_r_ce0,
    Input_r_q0,
    AB_address0,
    AB_ce0,
    AB_we0,
    AB_d0);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [10:0]Input_r_address0;
  output Input_r_ce0;
  input [7:0]Input_r_q0;
  output [9:0]AB_address0;
  output AB_ce0;
  output AB_we0;
  output [31:0]AB_d0;

  wire \<const0> ;
  wire [8:0]\^AB_address0 ;
  wire AB_ce0;
  wire [19:0]\^AB_d0 ;
  wire AB_we0;
  wire [7:0]A_q0;
  wire [7:0]B_q0;
  wire [7:0]\^Input_r_address0 ;
  wire Input_r_ce0;
  wire [7:0]Input_r_q0;
  wire \ap_CS_fsm[2]_i_2_n_4 ;
  wire \ap_CS_fsm[2]_i_3_n_4 ;
  wire \ap_CS_fsm[3]_i_3_n_4 ;
  wire \ap_CS_fsm[3]_i_4_n_4 ;
  wire \ap_CS_fsm_reg_n_4_[0] ;
  wire ap_CS_fsm_state10;
  wire ap_CS_fsm_state11;
  wire ap_CS_fsm_state13;
  wire ap_CS_fsm_state14;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire ap_CS_fsm_state8;
  wire ap_CS_fsm_state9;
  wire [12:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_NS_fsm10_out;
  wire ap_NS_fsm11_out;
  wire ap_NS_fsm12_out;
  wire ap_NS_fsm13_out;
  wire ap_NS_fsm15_out;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [2:0]i1_reg_203;
  wire \i1_reg_203[0]_i_1_n_4 ;
  wire \i1_reg_203[1]_i_1_n_4 ;
  wire \i1_reg_203[2]_i_1_n_4 ;
  wire [4:4]i6_reg_226;
  wire [2:0]i_1_reg_551;
  wire \i_1_reg_551[0]_i_1_n_4 ;
  wire \i_1_reg_551[1]_i_1_n_4 ;
  wire \i_1_reg_551[2]_i_1_n_4 ;
  wire [2:0]i_2_reg_577;
  wire \i_2_reg_577[0]_i_1_n_4 ;
  wire \i_2_reg_577[1]_i_1_n_4 ;
  wire \i_2_reg_577[2]_i_1_n_4 ;
  wire [4:0]i_3_fu_432_p2;
  wire [4:0]i_3_reg_608;
  wire \i_reg_180[0]_i_1_n_4 ;
  wire \i_reg_180[1]_i_1_n_4 ;
  wire \i_reg_180[2]_i_1_n_4 ;
  wire \i_reg_180_reg_n_4_[2] ;
  wire [9:0]indvarinc1_fu_290_p2;
  wire [9:0]indvarinc_fu_273_p2;
  wire invdar1_reg_1690;
  wire \invdar1_reg_169[9]_i_4_n_4 ;
  wire [9:0]invdar1_reg_169_reg__0;
  wire invdar_reg_158;
  wire invdar_reg_1580;
  wire \invdar_reg_158[9]_i_4_n_4 ;
  wire [9:0]invdar_reg_158_reg__0;
  wire j2_reg_2140;
  wire \j2_reg_214[0]_i_1_n_4 ;
  wire \j2_reg_214[1]_i_1_n_4 ;
  wire \j2_reg_214[2]_i_1_n_4 ;
  wire j7_reg_2380;
  wire [2:0]j_1_reg_559;
  wire \j_1_reg_559[0]_i_1_n_4 ;
  wire \j_1_reg_559[1]_i_1_n_4 ;
  wire \j_1_reg_559[2]_i_1_n_4 ;
  wire [2:0]j_2_reg_595;
  wire \j_2_reg_595[0]_i_1_n_4 ;
  wire \j_2_reg_595[1]_i_1_n_4 ;
  wire \j_2_reg_595[2]_i_1_n_4 ;
  wire [4:0]j_3_fu_444_p2;
  wire [4:0]j_3_reg_616;
  wire j_reg_1920;
  wire \j_reg_192[0]_i_1_n_4 ;
  wire \j_reg_192[1]_i_1_n_4 ;
  wire \j_reg_192[2]_i_1_n_4 ;
  wire [4:0]k_1_fu_456_p2;
  wire [4:0]k_1_reg_624;
  wire k_reg_2620;
  wire [6:0]p_0_in;
  wire [2:0]tmp1_cast_fu_398_p1;
  wire [4:0]tmp_15_fu_466_p3;
  wire [6:5]tmp_5_cast_reg_587;
  wire \tmp_5_cast_reg_587[5]_i_1_n_4 ;
  wire \tmp_5_cast_reg_587[6]_i_1_n_4 ;
  wire [6:0]tmp_8_reg_564;
  wire tmp_8_reg_5641;
  wire NLW_sum_reg_250_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_sum_reg_250_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_sum_reg_250_reg_OVERFLOW_UNCONNECTED;
  wire NLW_sum_reg_250_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_sum_reg_250_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_sum_reg_250_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_sum_reg_250_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_sum_reg_250_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_sum_reg_250_reg_CARRYOUT_UNCONNECTED;
  wire [47:20]NLW_sum_reg_250_reg_P_UNCONNECTED;
  wire [47:0]NLW_sum_reg_250_reg_PCOUT_UNCONNECTED;

  assign AB_address0[9] = \<const0> ;
  assign AB_address0[8:0] = \^AB_address0 [8:0];
  assign AB_d0[31] = \<const0> ;
  assign AB_d0[30] = \<const0> ;
  assign AB_d0[29] = \<const0> ;
  assign AB_d0[28] = \<const0> ;
  assign AB_d0[27] = \<const0> ;
  assign AB_d0[26] = \<const0> ;
  assign AB_d0[25] = \<const0> ;
  assign AB_d0[24] = \<const0> ;
  assign AB_d0[23] = \<const0> ;
  assign AB_d0[22] = \<const0> ;
  assign AB_d0[21] = \<const0> ;
  assign AB_d0[20] = \<const0> ;
  assign AB_d0[19:0] = \^AB_d0 [19:0];
  assign Input_r_address0[10] = \<const0> ;
  assign Input_r_address0[9] = \<const0> ;
  assign Input_r_address0[8] = \<const0> ;
  assign Input_r_address0[7:5] = \^Input_r_address0 [7:5];
  assign Input_r_address0[4] = \<const0> ;
  assign Input_r_address0[3] = \<const0> ;
  assign Input_r_address0[2:0] = \^Input_r_address0 [2:0];
  assign ap_done = ap_ready;
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    AB_we0_INST_0
       (.I0(tmp_15_fu_466_p3[2]),
        .I1(tmp_15_fu_466_p3[3]),
        .I2(tmp_15_fu_466_p3[0]),
        .I3(tmp_15_fu_466_p3[1]),
        .I4(AB_ce0),
        .I5(tmp_15_fu_466_p3[4]),
        .O(AB_we0));
  design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A A_U
       (.DOADO(A_q0),
        .Input_r_q0(Input_r_q0),
        .Q({AB_ce0,ap_CS_fsm_state6,ap_CS_fsm_state2}),
        .ap_clk(ap_clk),
        .\i6_reg_226_reg[3] (\^AB_address0 [8:5]),
        .\invdar_reg_158_reg[9] (invdar_reg_158_reg__0),
        .\k_reg_262_reg[4] (tmp_15_fu_466_p3),
        .\tmp_8_reg_564_reg[6] ({tmp_8_reg_564[6:5],tmp_8_reg_564[2:0]}));
  design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A_0 B_U
       (.DOADO(B_q0),
        .Input_r_q0(Input_r_q0),
        .Q({AB_ce0,ap_CS_fsm_state9,ap_CS_fsm_state3}),
        .ap_clk(ap_clk),
        .\invdar1_reg_169_reg[9] (invdar1_reg_169_reg__0),
        .\j7_reg_238_reg[4] (\^AB_address0 [4:0]),
        .\k_reg_262_reg[3] (tmp_15_fu_466_p3[3:0]),
        .tmp1_cast_fu_398_p1(tmp1_cast_fu_398_p1),
        .tmp_5_cast_reg_587(tmp_5_cast_reg_587));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Input_r_address0[0]_INST_0 
       (.I0(tmp1_cast_fu_398_p1[0]),
        .I1(ap_CS_fsm_state8),
        .I2(p_0_in[0]),
        .O(\^Input_r_address0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Input_r_address0[1]_INST_0 
       (.I0(tmp1_cast_fu_398_p1[1]),
        .I1(ap_CS_fsm_state8),
        .I2(p_0_in[1]),
        .O(\^Input_r_address0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \Input_r_address0[2]_INST_0 
       (.I0(tmp1_cast_fu_398_p1[2]),
        .I1(ap_CS_fsm_state8),
        .I2(p_0_in[2]),
        .O(\^Input_r_address0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \Input_r_address0[5]_INST_0 
       (.I0(tmp_5_cast_reg_587[5]),
        .I1(ap_CS_fsm_state8),
        .I2(p_0_in[5]),
        .O(\^Input_r_address0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2EE2)) 
    \Input_r_address0[6]_INST_0 
       (.I0(p_0_in[6]),
        .I1(ap_CS_fsm_state8),
        .I2(tmp_5_cast_reg_587[6]),
        .I3(tmp_5_cast_reg_587[5]),
        .O(\^Input_r_address0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Input_r_address0[7]_INST_0 
       (.I0(ap_CS_fsm_state8),
        .I1(tmp_5_cast_reg_587[6]),
        .I2(tmp_5_cast_reg_587[5]),
        .O(\^Input_r_address0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Input_r_ce0_INST_0
       (.I0(ap_CS_fsm_state5),
        .I1(ap_CS_fsm_state8),
        .O(Input_r_ce0));
  LUT4 #(
    .INIT(16'h88F8)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_ready),
        .I1(ap_CS_fsm_state10),
        .I2(\ap_CS_fsm_reg_n_4_[0] ),
        .I3(ap_start),
        .O(ap_NS_fsm[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \ap_CS_fsm[10]_i_1 
       (.I0(AB_we0),
        .I1(AB_ce0),
        .I2(ap_ready),
        .I3(ap_CS_fsm_state10),
        .O(ap_NS_fsm[10]));
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[11]_i_1 
       (.I0(ap_NS_fsm1),
        .I1(ap_CS_fsm_state11),
        .I2(ap_CS_fsm_state14),
        .O(ap_NS_fsm[11]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCCCCCC4)) 
    \ap_CS_fsm[12]_i_1 
       (.I0(tmp_15_fu_466_p3[4]),
        .I1(AB_ce0),
        .I2(tmp_15_fu_466_p3[1]),
        .I3(tmp_15_fu_466_p3[0]),
        .I4(tmp_15_fu_466_p3[3]),
        .I5(tmp_15_fu_466_p3[2]),
        .O(ap_NS_fsm[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF2A2A2A)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(\ap_CS_fsm[2]_i_2_n_4 ),
        .I2(\ap_CS_fsm[2]_i_3_n_4 ),
        .I3(\ap_CS_fsm_reg_n_4_[0] ),
        .I4(ap_start),
        .O(ap_NS_fsm[1]));
  LUT6 #(
    .INIT(64'hFF2A2A2A2A2A2A2A)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_CS_fsm_state3),
        .I1(\ap_CS_fsm[3]_i_3_n_4 ),
        .I2(\ap_CS_fsm[3]_i_4_n_4 ),
        .I3(ap_CS_fsm_state2),
        .I4(\ap_CS_fsm[2]_i_2_n_4 ),
        .I5(\ap_CS_fsm[2]_i_3_n_4 ),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[2]_i_2 
       (.I0(invdar_reg_158_reg__0[1]),
        .I1(invdar_reg_158_reg__0[0]),
        .I2(invdar_reg_158_reg__0[3]),
        .I3(invdar_reg_158_reg__0[2]),
        .O(\ap_CS_fsm[2]_i_2_n_4 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ap_CS_fsm[2]_i_3 
       (.I0(invdar_reg_158_reg__0[4]),
        .I1(invdar_reg_158_reg__0[5]),
        .I2(invdar_reg_158_reg__0[6]),
        .I3(invdar_reg_158_reg__0[7]),
        .I4(invdar_reg_158_reg__0[9]),
        .I5(invdar_reg_158_reg__0[8]),
        .O(\ap_CS_fsm[2]_i_3_n_4 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_NS_fsm12_out),
        .I1(ap_CS_fsm_state5),
        .I2(ap_CS_fsm_state3),
        .I3(\ap_CS_fsm[3]_i_3_n_4 ),
        .I4(\ap_CS_fsm[3]_i_4_n_4 ),
        .O(ap_NS_fsm[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \ap_CS_fsm[3]_i_2 
       (.I0(p_0_in[0]),
        .I1(p_0_in[2]),
        .I2(p_0_in[1]),
        .I3(ap_CS_fsm_state5),
        .O(ap_NS_fsm12_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ap_CS_fsm[3]_i_3 
       (.I0(invdar1_reg_169_reg__0[1]),
        .I1(invdar1_reg_169_reg__0[0]),
        .I2(invdar1_reg_169_reg__0[3]),
        .I3(invdar1_reg_169_reg__0[2]),
        .O(\ap_CS_fsm[3]_i_3_n_4 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ap_CS_fsm[3]_i_4 
       (.I0(invdar1_reg_169_reg__0[4]),
        .I1(invdar1_reg_169_reg__0[5]),
        .I2(invdar1_reg_169_reg__0[6]),
        .I3(invdar1_reg_169_reg__0[7]),
        .I4(invdar1_reg_169_reg__0[9]),
        .I5(invdar1_reg_169_reg__0[8]),
        .O(\ap_CS_fsm[3]_i_4_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFAAA2)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_CS_fsm_state4),
        .I1(\i_reg_180_reg_n_4_[2] ),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .I4(ap_CS_fsm_state6),
        .O(ap_NS_fsm[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \ap_CS_fsm[5]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .O(ap_NS_fsm[5]));
  LUT6 #(
    .INIT(64'hFFFF100010001000)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(tmp1_cast_fu_398_p1[1]),
        .I1(tmp1_cast_fu_398_p1[0]),
        .I2(ap_CS_fsm_state8),
        .I3(tmp1_cast_fu_398_p1[2]),
        .I4(ap_NS_fsm13_out),
        .I5(ap_CS_fsm_state4),
        .O(ap_NS_fsm[6]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \ap_CS_fsm[6]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(\i_reg_180_reg_n_4_[2] ),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .O(ap_NS_fsm13_out));
  LUT5 #(
    .INIT(32'hFFFFFB00)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(i1_reg_203[0]),
        .I1(i1_reg_203[2]),
        .I2(i1_reg_203[1]),
        .I3(ap_CS_fsm_state7),
        .I4(ap_CS_fsm_state9),
        .O(ap_NS_fsm[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCCC4)) 
    \ap_CS_fsm[8]_i_1 
       (.I0(tmp1_cast_fu_398_p1[2]),
        .I1(ap_CS_fsm_state8),
        .I2(tmp1_cast_fu_398_p1[0]),
        .I3(tmp1_cast_fu_398_p1[1]),
        .O(ap_NS_fsm[8]));
  LUT6 #(
    .INIT(64'h88888F8888888888)) 
    \ap_CS_fsm[9]_i_1 
       (.I0(ap_NS_fsm1),
        .I1(ap_CS_fsm_state11),
        .I2(i1_reg_203[0]),
        .I3(i1_reg_203[2]),
        .I4(i1_reg_203[1]),
        .I5(ap_CS_fsm_state7),
        .O(ap_NS_fsm[9]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_4_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[10]),
        .Q(ap_CS_fsm_state11),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[11]),
        .Q(AB_ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[12]),
        .Q(ap_CS_fsm_state13),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state13),
        .Q(ap_CS_fsm_state14),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[5]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_CS_fsm_state8),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[8]),
        .Q(ap_CS_fsm_state9),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[9]),
        .Q(ap_CS_fsm_state10),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_4_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_state10),
        .I1(\^AB_address0 [7]),
        .I2(\^AB_address0 [8]),
        .I3(\^AB_address0 [6]),
        .I4(\^AB_address0 [5]),
        .I5(i6_reg_226),
        .O(ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \i1_reg_203[0]_i_1 
       (.I0(i1_reg_203[0]),
        .I1(ap_NS_fsm10_out),
        .I2(i_2_reg_577[0]),
        .I3(ap_NS_fsm13_out),
        .O(\i1_reg_203[0]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \i1_reg_203[1]_i_1 
       (.I0(i1_reg_203[1]),
        .I1(ap_NS_fsm10_out),
        .I2(i_2_reg_577[1]),
        .I3(ap_NS_fsm13_out),
        .O(\i1_reg_203[1]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \i1_reg_203[2]_i_1 
       (.I0(i1_reg_203[2]),
        .I1(ap_NS_fsm10_out),
        .I2(i_2_reg_577[2]),
        .I3(ap_NS_fsm13_out),
        .O(\i1_reg_203[2]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \i1_reg_203[2]_i_2 
       (.I0(tmp1_cast_fu_398_p1[1]),
        .I1(tmp1_cast_fu_398_p1[0]),
        .I2(ap_CS_fsm_state8),
        .I3(tmp1_cast_fu_398_p1[2]),
        .O(ap_NS_fsm10_out));
  FDRE \i1_reg_203_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i1_reg_203[0]_i_1_n_4 ),
        .Q(i1_reg_203[0]),
        .R(1'b0));
  FDRE \i1_reg_203_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i1_reg_203[1]_i_1_n_4 ),
        .Q(i1_reg_203[1]),
        .R(1'b0));
  FDRE \i1_reg_203_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i1_reg_203[2]_i_1_n_4 ),
        .Q(i1_reg_203[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \i6_reg_226[3]_i_1 
       (.I0(i1_reg_203[0]),
        .I1(i1_reg_203[2]),
        .I2(i1_reg_203[1]),
        .I3(ap_CS_fsm_state7),
        .O(ap_NS_fsm11_out));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \i6_reg_226[3]_i_2 
       (.I0(ap_CS_fsm_state11),
        .I1(\^AB_address0 [4]),
        .I2(\^AB_address0 [3]),
        .I3(\^AB_address0 [2]),
        .I4(\^AB_address0 [1]),
        .I5(\^AB_address0 [0]),
        .O(ap_NS_fsm1));
  FDRE \i6_reg_226_reg[0] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_3_reg_608[0]),
        .Q(\^AB_address0 [5]),
        .R(ap_NS_fsm11_out));
  FDRE \i6_reg_226_reg[1] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_3_reg_608[1]),
        .Q(\^AB_address0 [6]),
        .R(ap_NS_fsm11_out));
  FDRE \i6_reg_226_reg[2] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_3_reg_608[2]),
        .Q(\^AB_address0 [7]),
        .R(ap_NS_fsm11_out));
  FDRE \i6_reg_226_reg[3] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_3_reg_608[3]),
        .Q(\^AB_address0 [8]),
        .R(ap_NS_fsm11_out));
  FDRE \i6_reg_226_reg[4] 
       (.C(ap_clk),
        .CE(ap_NS_fsm1),
        .D(i_3_reg_608[4]),
        .Q(i6_reg_226),
        .R(ap_NS_fsm11_out));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \i_1_reg_551[0]_i_1 
       (.I0(p_0_in[5]),
        .I1(ap_CS_fsm_state4),
        .I2(i_1_reg_551[0]),
        .O(\i_1_reg_551[0]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \i_1_reg_551[1]_i_1 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(ap_CS_fsm_state4),
        .I3(i_1_reg_551[1]),
        .O(\i_1_reg_551[1]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \i_1_reg_551[2]_i_1 
       (.I0(p_0_in[5]),
        .I1(p_0_in[6]),
        .I2(\i_reg_180_reg_n_4_[2] ),
        .I3(ap_CS_fsm_state4),
        .I4(i_1_reg_551[2]),
        .O(\i_1_reg_551[2]_i_1_n_4 ));
  FDRE \i_1_reg_551_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_1_reg_551[0]_i_1_n_4 ),
        .Q(i_1_reg_551[0]),
        .R(1'b0));
  FDRE \i_1_reg_551_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_1_reg_551[1]_i_1_n_4 ),
        .Q(i_1_reg_551[1]),
        .R(1'b0));
  FDRE \i_1_reg_551_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_1_reg_551[2]_i_1_n_4 ),
        .Q(i_1_reg_551[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \i_2_reg_577[0]_i_1 
       (.I0(i1_reg_203[0]),
        .I1(ap_CS_fsm_state7),
        .I2(i_2_reg_577[0]),
        .O(\i_2_reg_577[0]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \i_2_reg_577[1]_i_1 
       (.I0(i1_reg_203[0]),
        .I1(i1_reg_203[1]),
        .I2(ap_CS_fsm_state7),
        .I3(i_2_reg_577[1]),
        .O(\i_2_reg_577[1]_i_1_n_4 ));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \i_2_reg_577[2]_i_1 
       (.I0(i1_reg_203[0]),
        .I1(i1_reg_203[1]),
        .I2(i1_reg_203[2]),
        .I3(ap_CS_fsm_state7),
        .I4(i_2_reg_577[2]),
        .O(\i_2_reg_577[2]_i_1_n_4 ));
  FDRE \i_2_reg_577_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_2_reg_577[0]_i_1_n_4 ),
        .Q(i_2_reg_577[0]),
        .R(1'b0));
  FDRE \i_2_reg_577_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_2_reg_577[1]_i_1_n_4 ),
        .Q(i_2_reg_577[1]),
        .R(1'b0));
  FDRE \i_2_reg_577_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_2_reg_577[2]_i_1_n_4 ),
        .Q(i_2_reg_577[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \i_3_reg_608[0]_i_1 
       (.I0(\^AB_address0 [5]),
        .O(i_3_fu_432_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_3_reg_608[1]_i_1 
       (.I0(\^AB_address0 [5]),
        .I1(\^AB_address0 [6]),
        .O(i_3_fu_432_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i_3_reg_608[2]_i_1 
       (.I0(\^AB_address0 [5]),
        .I1(\^AB_address0 [6]),
        .I2(\^AB_address0 [7]),
        .O(i_3_fu_432_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i_3_reg_608[3]_i_1 
       (.I0(\^AB_address0 [6]),
        .I1(\^AB_address0 [5]),
        .I2(\^AB_address0 [7]),
        .I3(\^AB_address0 [8]),
        .O(i_3_fu_432_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i_3_reg_608[4]_i_1 
       (.I0(\^AB_address0 [7]),
        .I1(\^AB_address0 [5]),
        .I2(\^AB_address0 [6]),
        .I3(\^AB_address0 [8]),
        .I4(i6_reg_226),
        .O(i_3_fu_432_p2[4]));
  FDRE \i_3_reg_608_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_3_fu_432_p2[0]),
        .Q(i_3_reg_608[0]),
        .R(1'b0));
  FDRE \i_3_reg_608_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_3_fu_432_p2[1]),
        .Q(i_3_reg_608[1]),
        .R(1'b0));
  FDRE \i_3_reg_608_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_3_fu_432_p2[2]),
        .Q(i_3_reg_608[2]),
        .R(1'b0));
  FDRE \i_3_reg_608_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_3_fu_432_p2[3]),
        .Q(i_3_reg_608[3]),
        .R(1'b0));
  FDRE \i_3_reg_608_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state10),
        .D(i_3_fu_432_p2[4]),
        .Q(i_3_reg_608[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \i_reg_180[0]_i_1 
       (.I0(p_0_in[5]),
        .I1(ap_NS_fsm12_out),
        .I2(i_1_reg_551[0]),
        .I3(\ap_CS_fsm[3]_i_4_n_4 ),
        .I4(\ap_CS_fsm[3]_i_3_n_4 ),
        .I5(ap_CS_fsm_state3),
        .O(\i_reg_180[0]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \i_reg_180[1]_i_1 
       (.I0(p_0_in[6]),
        .I1(ap_NS_fsm12_out),
        .I2(i_1_reg_551[1]),
        .I3(\ap_CS_fsm[3]_i_4_n_4 ),
        .I4(\ap_CS_fsm[3]_i_3_n_4 ),
        .I5(ap_CS_fsm_state3),
        .O(\i_reg_180[1]_i_1_n_4 ));
  LUT6 #(
    .INIT(64'h00E2E2E2E2E2E2E2)) 
    \i_reg_180[2]_i_1 
       (.I0(\i_reg_180_reg_n_4_[2] ),
        .I1(ap_NS_fsm12_out),
        .I2(i_1_reg_551[2]),
        .I3(\ap_CS_fsm[3]_i_4_n_4 ),
        .I4(\ap_CS_fsm[3]_i_3_n_4 ),
        .I5(ap_CS_fsm_state3),
        .O(\i_reg_180[2]_i_1_n_4 ));
  FDRE \i_reg_180_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_reg_180[0]_i_1_n_4 ),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \i_reg_180_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_reg_180[1]_i_1_n_4 ),
        .Q(p_0_in[6]),
        .R(1'b0));
  FDRE \i_reg_180_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\i_reg_180[2]_i_1_n_4 ),
        .Q(\i_reg_180_reg_n_4_[2] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \invdar1_reg_169[0]_i_1 
       (.I0(invdar1_reg_169_reg__0[0]),
        .O(indvarinc1_fu_290_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \invdar1_reg_169[1]_i_1 
       (.I0(invdar1_reg_169_reg__0[0]),
        .I1(invdar1_reg_169_reg__0[1]),
        .O(indvarinc1_fu_290_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \invdar1_reg_169[2]_i_1 
       (.I0(invdar1_reg_169_reg__0[0]),
        .I1(invdar1_reg_169_reg__0[1]),
        .I2(invdar1_reg_169_reg__0[2]),
        .O(indvarinc1_fu_290_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \invdar1_reg_169[3]_i_1 
       (.I0(invdar1_reg_169_reg__0[1]),
        .I1(invdar1_reg_169_reg__0[0]),
        .I2(invdar1_reg_169_reg__0[2]),
        .I3(invdar1_reg_169_reg__0[3]),
        .O(indvarinc1_fu_290_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \invdar1_reg_169[4]_i_1 
       (.I0(invdar1_reg_169_reg__0[2]),
        .I1(invdar1_reg_169_reg__0[0]),
        .I2(invdar1_reg_169_reg__0[1]),
        .I3(invdar1_reg_169_reg__0[3]),
        .I4(invdar1_reg_169_reg__0[4]),
        .O(indvarinc1_fu_290_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \invdar1_reg_169[5]_i_1 
       (.I0(invdar1_reg_169_reg__0[3]),
        .I1(invdar1_reg_169_reg__0[1]),
        .I2(invdar1_reg_169_reg__0[0]),
        .I3(invdar1_reg_169_reg__0[2]),
        .I4(invdar1_reg_169_reg__0[4]),
        .I5(invdar1_reg_169_reg__0[5]),
        .O(indvarinc1_fu_290_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \invdar1_reg_169[6]_i_1 
       (.I0(\invdar1_reg_169[9]_i_4_n_4 ),
        .I1(invdar1_reg_169_reg__0[6]),
        .O(indvarinc1_fu_290_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \invdar1_reg_169[7]_i_1 
       (.I0(\invdar1_reg_169[9]_i_4_n_4 ),
        .I1(invdar1_reg_169_reg__0[6]),
        .I2(invdar1_reg_169_reg__0[7]),
        .O(indvarinc1_fu_290_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \invdar1_reg_169[8]_i_1 
       (.I0(invdar1_reg_169_reg__0[6]),
        .I1(\invdar1_reg_169[9]_i_4_n_4 ),
        .I2(invdar1_reg_169_reg__0[7]),
        .I3(invdar1_reg_169_reg__0[8]),
        .O(indvarinc1_fu_290_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \invdar1_reg_169[9]_i_1 
       (.I0(ap_CS_fsm_state2),
        .I1(invdar_reg_158_reg__0[1]),
        .I2(invdar_reg_158_reg__0[0]),
        .I3(invdar_reg_158_reg__0[3]),
        .I4(invdar_reg_158_reg__0[2]),
        .I5(\ap_CS_fsm[2]_i_3_n_4 ),
        .O(ap_NS_fsm15_out));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \invdar1_reg_169[9]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(invdar1_reg_169_reg__0[1]),
        .I2(invdar1_reg_169_reg__0[0]),
        .I3(invdar1_reg_169_reg__0[3]),
        .I4(invdar1_reg_169_reg__0[2]),
        .I5(\ap_CS_fsm[3]_i_4_n_4 ),
        .O(invdar1_reg_1690));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \invdar1_reg_169[9]_i_3 
       (.I0(invdar1_reg_169_reg__0[7]),
        .I1(\invdar1_reg_169[9]_i_4_n_4 ),
        .I2(invdar1_reg_169_reg__0[6]),
        .I3(invdar1_reg_169_reg__0[8]),
        .I4(invdar1_reg_169_reg__0[9]),
        .O(indvarinc1_fu_290_p2[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \invdar1_reg_169[9]_i_4 
       (.I0(invdar1_reg_169_reg__0[5]),
        .I1(invdar1_reg_169_reg__0[3]),
        .I2(invdar1_reg_169_reg__0[1]),
        .I3(invdar1_reg_169_reg__0[0]),
        .I4(invdar1_reg_169_reg__0[2]),
        .I5(invdar1_reg_169_reg__0[4]),
        .O(\invdar1_reg_169[9]_i_4_n_4 ));
  FDRE \invdar1_reg_169_reg[0] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[0]),
        .Q(invdar1_reg_169_reg__0[0]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[1] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[1]),
        .Q(invdar1_reg_169_reg__0[1]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[2] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[2]),
        .Q(invdar1_reg_169_reg__0[2]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[3] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[3]),
        .Q(invdar1_reg_169_reg__0[3]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[4] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[4]),
        .Q(invdar1_reg_169_reg__0[4]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[5] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[5]),
        .Q(invdar1_reg_169_reg__0[5]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[6] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[6]),
        .Q(invdar1_reg_169_reg__0[6]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[7] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[7]),
        .Q(invdar1_reg_169_reg__0[7]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[8] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[8]),
        .Q(invdar1_reg_169_reg__0[8]),
        .R(ap_NS_fsm15_out));
  FDRE \invdar1_reg_169_reg[9] 
       (.C(ap_clk),
        .CE(invdar1_reg_1690),
        .D(indvarinc1_fu_290_p2[9]),
        .Q(invdar1_reg_169_reg__0[9]),
        .R(ap_NS_fsm15_out));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \invdar_reg_158[0]_i_1 
       (.I0(invdar_reg_158_reg__0[0]),
        .O(indvarinc_fu_273_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \invdar_reg_158[1]_i_1 
       (.I0(invdar_reg_158_reg__0[0]),
        .I1(invdar_reg_158_reg__0[1]),
        .O(indvarinc_fu_273_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \invdar_reg_158[2]_i_1 
       (.I0(invdar_reg_158_reg__0[0]),
        .I1(invdar_reg_158_reg__0[1]),
        .I2(invdar_reg_158_reg__0[2]),
        .O(indvarinc_fu_273_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \invdar_reg_158[3]_i_1 
       (.I0(invdar_reg_158_reg__0[1]),
        .I1(invdar_reg_158_reg__0[0]),
        .I2(invdar_reg_158_reg__0[2]),
        .I3(invdar_reg_158_reg__0[3]),
        .O(indvarinc_fu_273_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \invdar_reg_158[4]_i_1 
       (.I0(invdar_reg_158_reg__0[2]),
        .I1(invdar_reg_158_reg__0[0]),
        .I2(invdar_reg_158_reg__0[1]),
        .I3(invdar_reg_158_reg__0[3]),
        .I4(invdar_reg_158_reg__0[4]),
        .O(indvarinc_fu_273_p2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \invdar_reg_158[5]_i_1 
       (.I0(invdar_reg_158_reg__0[3]),
        .I1(invdar_reg_158_reg__0[1]),
        .I2(invdar_reg_158_reg__0[0]),
        .I3(invdar_reg_158_reg__0[2]),
        .I4(invdar_reg_158_reg__0[4]),
        .I5(invdar_reg_158_reg__0[5]),
        .O(indvarinc_fu_273_p2[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \invdar_reg_158[6]_i_1 
       (.I0(\invdar_reg_158[9]_i_4_n_4 ),
        .I1(invdar_reg_158_reg__0[6]),
        .O(indvarinc_fu_273_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \invdar_reg_158[7]_i_1 
       (.I0(\invdar_reg_158[9]_i_4_n_4 ),
        .I1(invdar_reg_158_reg__0[6]),
        .I2(invdar_reg_158_reg__0[7]),
        .O(indvarinc_fu_273_p2[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \invdar_reg_158[8]_i_1 
       (.I0(invdar_reg_158_reg__0[6]),
        .I1(\invdar_reg_158[9]_i_4_n_4 ),
        .I2(invdar_reg_158_reg__0[7]),
        .I3(invdar_reg_158_reg__0[8]),
        .O(indvarinc_fu_273_p2[8]));
  LUT5 #(
    .INIT(32'h80008888)) 
    \invdar_reg_158[9]_i_1 
       (.I0(ap_start),
        .I1(\ap_CS_fsm_reg_n_4_[0] ),
        .I2(\ap_CS_fsm[2]_i_3_n_4 ),
        .I3(\ap_CS_fsm[2]_i_2_n_4 ),
        .I4(ap_CS_fsm_state2),
        .O(invdar_reg_158));
  LUT6 #(
    .INIT(64'h2AAAAAAAAAAAAAAA)) 
    \invdar_reg_158[9]_i_2 
       (.I0(ap_CS_fsm_state2),
        .I1(invdar_reg_158_reg__0[1]),
        .I2(invdar_reg_158_reg__0[0]),
        .I3(invdar_reg_158_reg__0[3]),
        .I4(invdar_reg_158_reg__0[2]),
        .I5(\ap_CS_fsm[2]_i_3_n_4 ),
        .O(invdar_reg_1580));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \invdar_reg_158[9]_i_3 
       (.I0(invdar_reg_158_reg__0[7]),
        .I1(\invdar_reg_158[9]_i_4_n_4 ),
        .I2(invdar_reg_158_reg__0[6]),
        .I3(invdar_reg_158_reg__0[8]),
        .I4(invdar_reg_158_reg__0[9]),
        .O(indvarinc_fu_273_p2[9]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \invdar_reg_158[9]_i_4 
       (.I0(invdar_reg_158_reg__0[5]),
        .I1(invdar_reg_158_reg__0[3]),
        .I2(invdar_reg_158_reg__0[1]),
        .I3(invdar_reg_158_reg__0[0]),
        .I4(invdar_reg_158_reg__0[2]),
        .I5(invdar_reg_158_reg__0[4]),
        .O(\invdar_reg_158[9]_i_4_n_4 ));
  FDRE \invdar_reg_158_reg[0] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[0]),
        .Q(invdar_reg_158_reg__0[0]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[1] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[1]),
        .Q(invdar_reg_158_reg__0[1]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[2] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[2]),
        .Q(invdar_reg_158_reg__0[2]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[3] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[3]),
        .Q(invdar_reg_158_reg__0[3]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[4] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[4]),
        .Q(invdar_reg_158_reg__0[4]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[5] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[5]),
        .Q(invdar_reg_158_reg__0[5]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[6] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[6]),
        .Q(invdar_reg_158_reg__0[6]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[7] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[7]),
        .Q(invdar_reg_158_reg__0[7]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[8] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[8]),
        .Q(invdar_reg_158_reg__0[8]),
        .R(invdar_reg_158));
  FDRE \invdar_reg_158_reg[9] 
       (.C(ap_clk),
        .CE(invdar_reg_1580),
        .D(indvarinc_fu_273_p2[9]),
        .Q(invdar_reg_158_reg__0[9]),
        .R(invdar_reg_158));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \j2_reg_214[0]_i_1 
       (.I0(tmp1_cast_fu_398_p1[0]),
        .I1(ap_CS_fsm_state9),
        .I2(j_2_reg_595[0]),
        .I3(j2_reg_2140),
        .O(\j2_reg_214[0]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \j2_reg_214[1]_i_1 
       (.I0(tmp1_cast_fu_398_p1[1]),
        .I1(ap_CS_fsm_state9),
        .I2(j_2_reg_595[1]),
        .I3(j2_reg_2140),
        .O(\j2_reg_214[1]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \j2_reg_214[2]_i_1 
       (.I0(tmp1_cast_fu_398_p1[2]),
        .I1(ap_CS_fsm_state9),
        .I2(j_2_reg_595[2]),
        .I3(j2_reg_2140),
        .O(\j2_reg_214[2]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAA8A)) 
    \j2_reg_214[2]_i_2 
       (.I0(ap_CS_fsm_state7),
        .I1(i1_reg_203[0]),
        .I2(i1_reg_203[2]),
        .I3(i1_reg_203[1]),
        .O(j2_reg_2140));
  FDRE \j2_reg_214_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j2_reg_214[0]_i_1_n_4 ),
        .Q(tmp1_cast_fu_398_p1[0]),
        .R(1'b0));
  FDRE \j2_reg_214_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j2_reg_214[1]_i_1_n_4 ),
        .Q(tmp1_cast_fu_398_p1[1]),
        .R(1'b0));
  FDRE \j2_reg_214_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j2_reg_214[2]_i_1_n_4 ),
        .Q(tmp1_cast_fu_398_p1[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \j7_reg_238[4]_i_1 
       (.I0(ap_CS_fsm_state10),
        .I1(\^AB_address0 [7]),
        .I2(\^AB_address0 [8]),
        .I3(\^AB_address0 [6]),
        .I4(\^AB_address0 [5]),
        .I5(i6_reg_226),
        .O(j7_reg_2380));
  FDRE \j7_reg_238_reg[0] 
       (.C(ap_clk),
        .CE(AB_we0),
        .D(j_3_reg_616[0]),
        .Q(\^AB_address0 [0]),
        .R(j7_reg_2380));
  FDRE \j7_reg_238_reg[1] 
       (.C(ap_clk),
        .CE(AB_we0),
        .D(j_3_reg_616[1]),
        .Q(\^AB_address0 [1]),
        .R(j7_reg_2380));
  FDRE \j7_reg_238_reg[2] 
       (.C(ap_clk),
        .CE(AB_we0),
        .D(j_3_reg_616[2]),
        .Q(\^AB_address0 [2]),
        .R(j7_reg_2380));
  FDRE \j7_reg_238_reg[3] 
       (.C(ap_clk),
        .CE(AB_we0),
        .D(j_3_reg_616[3]),
        .Q(\^AB_address0 [3]),
        .R(j7_reg_2380));
  FDRE \j7_reg_238_reg[4] 
       (.C(ap_clk),
        .CE(AB_we0),
        .D(j_3_reg_616[4]),
        .Q(\^AB_address0 [4]),
        .R(j7_reg_2380));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \j_1_reg_559[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(ap_CS_fsm_state5),
        .I2(j_1_reg_559[0]),
        .O(\j_1_reg_559[0]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \j_1_reg_559[1]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(ap_CS_fsm_state5),
        .I3(j_1_reg_559[1]),
        .O(\j_1_reg_559[1]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \j_1_reg_559[2]_i_1 
       (.I0(p_0_in[0]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(ap_CS_fsm_state5),
        .I4(j_1_reg_559[2]),
        .O(\j_1_reg_559[2]_i_1_n_4 ));
  FDRE \j_1_reg_559_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_1_reg_559[0]_i_1_n_4 ),
        .Q(j_1_reg_559[0]),
        .R(1'b0));
  FDRE \j_1_reg_559_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_1_reg_559[1]_i_1_n_4 ),
        .Q(j_1_reg_559[1]),
        .R(1'b0));
  FDRE \j_1_reg_559_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_1_reg_559[2]_i_1_n_4 ),
        .Q(j_1_reg_559[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \j_2_reg_595[0]_i_1 
       (.I0(tmp1_cast_fu_398_p1[0]),
        .I1(ap_CS_fsm_state8),
        .I2(j_2_reg_595[0]),
        .O(\j_2_reg_595[0]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \j_2_reg_595[1]_i_1 
       (.I0(tmp1_cast_fu_398_p1[0]),
        .I1(tmp1_cast_fu_398_p1[1]),
        .I2(ap_CS_fsm_state8),
        .I3(j_2_reg_595[1]),
        .O(\j_2_reg_595[1]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \j_2_reg_595[2]_i_1 
       (.I0(tmp1_cast_fu_398_p1[0]),
        .I1(tmp1_cast_fu_398_p1[1]),
        .I2(tmp1_cast_fu_398_p1[2]),
        .I3(ap_CS_fsm_state8),
        .I4(j_2_reg_595[2]),
        .O(\j_2_reg_595[2]_i_1_n_4 ));
  FDRE \j_2_reg_595_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_2_reg_595[0]_i_1_n_4 ),
        .Q(j_2_reg_595[0]),
        .R(1'b0));
  FDRE \j_2_reg_595_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_2_reg_595[1]_i_1_n_4 ),
        .Q(j_2_reg_595[1]),
        .R(1'b0));
  FDRE \j_2_reg_595_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_2_reg_595[2]_i_1_n_4 ),
        .Q(j_2_reg_595[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \j_3_reg_616[0]_i_1 
       (.I0(\^AB_address0 [0]),
        .O(j_3_fu_444_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \j_3_reg_616[1]_i_1 
       (.I0(\^AB_address0 [0]),
        .I1(\^AB_address0 [1]),
        .O(j_3_fu_444_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \j_3_reg_616[2]_i_1 
       (.I0(\^AB_address0 [0]),
        .I1(\^AB_address0 [1]),
        .I2(\^AB_address0 [2]),
        .O(j_3_fu_444_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \j_3_reg_616[3]_i_1 
       (.I0(\^AB_address0 [1]),
        .I1(\^AB_address0 [0]),
        .I2(\^AB_address0 [2]),
        .I3(\^AB_address0 [3]),
        .O(j_3_fu_444_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \j_3_reg_616[4]_i_1 
       (.I0(\^AB_address0 [2]),
        .I1(\^AB_address0 [0]),
        .I2(\^AB_address0 [1]),
        .I3(\^AB_address0 [3]),
        .I4(\^AB_address0 [4]),
        .O(j_3_fu_444_p2[4]));
  FDRE \j_3_reg_616_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(j_3_fu_444_p2[0]),
        .Q(j_3_reg_616[0]),
        .R(1'b0));
  FDRE \j_3_reg_616_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(j_3_fu_444_p2[1]),
        .Q(j_3_reg_616[1]),
        .R(1'b0));
  FDRE \j_3_reg_616_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(j_3_fu_444_p2[2]),
        .Q(j_3_reg_616[2]),
        .R(1'b0));
  FDRE \j_3_reg_616_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(j_3_fu_444_p2[3]),
        .Q(j_3_reg_616[3]),
        .R(1'b0));
  FDRE \j_3_reg_616_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state11),
        .D(j_3_fu_444_p2[4]),
        .Q(j_3_reg_616[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00E2)) 
    \j_reg_192[0]_i_1 
       (.I0(p_0_in[0]),
        .I1(ap_CS_fsm_state6),
        .I2(j_1_reg_559[0]),
        .I3(j_reg_1920),
        .O(\j_reg_192[0]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \j_reg_192[1]_i_1 
       (.I0(p_0_in[1]),
        .I1(ap_CS_fsm_state6),
        .I2(j_1_reg_559[1]),
        .I3(j_reg_1920),
        .O(\j_reg_192[1]_i_1_n_4 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \j_reg_192[2]_i_1 
       (.I0(p_0_in[2]),
        .I1(ap_CS_fsm_state6),
        .I2(j_1_reg_559[2]),
        .I3(j_reg_1920),
        .O(\j_reg_192[2]_i_1_n_4 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA2)) 
    \j_reg_192[2]_i_2 
       (.I0(ap_CS_fsm_state4),
        .I1(\i_reg_180_reg_n_4_[2] ),
        .I2(p_0_in[5]),
        .I3(p_0_in[6]),
        .O(j_reg_1920));
  FDRE \j_reg_192_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_192[0]_i_1_n_4 ),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \j_reg_192_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_192[1]_i_1_n_4 ),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \j_reg_192_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\j_reg_192[2]_i_1_n_4 ),
        .Q(p_0_in[2]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \k_1_reg_624[0]_i_1 
       (.I0(tmp_15_fu_466_p3[0]),
        .O(k_1_fu_456_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \k_1_reg_624[1]_i_1 
       (.I0(tmp_15_fu_466_p3[0]),
        .I1(tmp_15_fu_466_p3[1]),
        .O(k_1_fu_456_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \k_1_reg_624[2]_i_1 
       (.I0(tmp_15_fu_466_p3[0]),
        .I1(tmp_15_fu_466_p3[1]),
        .I2(tmp_15_fu_466_p3[2]),
        .O(k_1_fu_456_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \k_1_reg_624[3]_i_1 
       (.I0(tmp_15_fu_466_p3[1]),
        .I1(tmp_15_fu_466_p3[0]),
        .I2(tmp_15_fu_466_p3[2]),
        .I3(tmp_15_fu_466_p3[3]),
        .O(k_1_fu_456_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \k_1_reg_624[4]_i_1 
       (.I0(tmp_15_fu_466_p3[2]),
        .I1(tmp_15_fu_466_p3[0]),
        .I2(tmp_15_fu_466_p3[1]),
        .I3(tmp_15_fu_466_p3[3]),
        .I4(tmp_15_fu_466_p3[4]),
        .O(k_1_fu_456_p2[4]));
  FDRE \k_1_reg_624_reg[0] 
       (.C(ap_clk),
        .CE(AB_ce0),
        .D(k_1_fu_456_p2[0]),
        .Q(k_1_reg_624[0]),
        .R(1'b0));
  FDRE \k_1_reg_624_reg[1] 
       (.C(ap_clk),
        .CE(AB_ce0),
        .D(k_1_fu_456_p2[1]),
        .Q(k_1_reg_624[1]),
        .R(1'b0));
  FDRE \k_1_reg_624_reg[2] 
       (.C(ap_clk),
        .CE(AB_ce0),
        .D(k_1_fu_456_p2[2]),
        .Q(k_1_reg_624[2]),
        .R(1'b0));
  FDRE \k_1_reg_624_reg[3] 
       (.C(ap_clk),
        .CE(AB_ce0),
        .D(k_1_fu_456_p2[3]),
        .Q(k_1_reg_624[3]),
        .R(1'b0));
  FDRE \k_1_reg_624_reg[4] 
       (.C(ap_clk),
        .CE(AB_ce0),
        .D(k_1_fu_456_p2[4]),
        .Q(k_1_reg_624[4]),
        .R(1'b0));
  FDRE \k_reg_262_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(k_1_reg_624[0]),
        .Q(tmp_15_fu_466_p3[0]),
        .R(k_reg_2620));
  FDRE \k_reg_262_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(k_1_reg_624[1]),
        .Q(tmp_15_fu_466_p3[1]),
        .R(k_reg_2620));
  FDRE \k_reg_262_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(k_1_reg_624[2]),
        .Q(tmp_15_fu_466_p3[2]),
        .R(k_reg_2620));
  FDRE \k_reg_262_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(k_1_reg_624[3]),
        .Q(tmp_15_fu_466_p3[3]),
        .R(k_reg_2620));
  FDRE \k_reg_262_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state14),
        .D(k_1_reg_624[4]),
        .Q(tmp_15_fu_466_p3[4]),
        .R(k_reg_2620));
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
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
    sum_reg_250_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_sum_reg_250_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_sum_reg_250_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_sum_reg_250_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_sum_reg_250_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(ap_CS_fsm_state13),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(ap_CS_fsm_state13),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(ap_CS_fsm_state14),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_sum_reg_250_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_sum_reg_250_reg_OVERFLOW_UNCONNECTED),
        .P({NLW_sum_reg_250_reg_P_UNCONNECTED[47:20],\^AB_d0 }),
        .PATTERNBDETECT(NLW_sum_reg_250_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_sum_reg_250_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_sum_reg_250_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(k_reg_2620),
        .UNDERFLOW(NLW_sum_reg_250_reg_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA2)) 
    sum_reg_250_reg_i_1
       (.I0(ap_CS_fsm_state11),
        .I1(\^AB_address0 [4]),
        .I2(\^AB_address0 [3]),
        .I3(\^AB_address0 [2]),
        .I4(\^AB_address0 [1]),
        .I5(\^AB_address0 [0]),
        .O(k_reg_2620));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDDFD8888)) 
    \tmp_5_cast_reg_587[5]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(i1_reg_203[0]),
        .I2(i1_reg_203[2]),
        .I3(i1_reg_203[1]),
        .I4(tmp_5_cast_reg_587[5]),
        .O(\tmp_5_cast_reg_587[5]_i_1_n_4 ));
  LUT5 #(
    .INIT(32'hFF75AA00)) 
    \tmp_5_cast_reg_587[6]_i_1 
       (.I0(ap_CS_fsm_state7),
        .I1(i1_reg_203[0]),
        .I2(i1_reg_203[2]),
        .I3(i1_reg_203[1]),
        .I4(tmp_5_cast_reg_587[6]),
        .O(\tmp_5_cast_reg_587[6]_i_1_n_4 ));
  FDRE \tmp_5_cast_reg_587_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_cast_reg_587[5]_i_1_n_4 ),
        .Q(tmp_5_cast_reg_587[5]),
        .R(1'b0));
  FDRE \tmp_5_cast_reg_587_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\tmp_5_cast_reg_587[6]_i_1_n_4 ),
        .Q(tmp_5_cast_reg_587[6]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hAA8A)) 
    \tmp_8_reg_564[6]_i_1 
       (.I0(ap_CS_fsm_state5),
        .I1(p_0_in[0]),
        .I2(p_0_in[2]),
        .I3(p_0_in[1]),
        .O(tmp_8_reg_5641));
  FDRE \tmp_8_reg_564_reg[0] 
       (.C(ap_clk),
        .CE(tmp_8_reg_5641),
        .D(p_0_in[0]),
        .Q(tmp_8_reg_564[0]),
        .R(1'b0));
  FDRE \tmp_8_reg_564_reg[1] 
       (.C(ap_clk),
        .CE(tmp_8_reg_5641),
        .D(p_0_in[1]),
        .Q(tmp_8_reg_564[1]),
        .R(1'b0));
  FDRE \tmp_8_reg_564_reg[2] 
       (.C(ap_clk),
        .CE(tmp_8_reg_5641),
        .D(p_0_in[2]),
        .Q(tmp_8_reg_564[2]),
        .R(1'b0));
  FDRE \tmp_8_reg_564_reg[5] 
       (.C(ap_clk),
        .CE(tmp_8_reg_5641),
        .D(p_0_in[5]),
        .Q(tmp_8_reg_564[5]),
        .R(1'b0));
  FDRE \tmp_8_reg_564_reg[6] 
       (.C(ap_clk),
        .CE(tmp_8_reg_5641),
        .D(p_0_in[6]),
        .Q(tmp_8_reg_564[6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "matrixmul_1D_rev2_A" *) 
module design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A
   (DOADO,
    ap_clk,
    Q,
    \invdar_reg_158_reg[9] ,
    \tmp_8_reg_564_reg[6] ,
    \k_reg_262_reg[4] ,
    \i6_reg_226_reg[3] ,
    Input_r_q0);
  output [7:0]DOADO;
  input ap_clk;
  input [2:0]Q;
  input [9:0]\invdar_reg_158_reg[9] ;
  input [4:0]\tmp_8_reg_564_reg[6] ;
  input [4:0]\k_reg_262_reg[4] ;
  input [3:0]\i6_reg_226_reg[3] ;
  input [7:0]Input_r_q0;

  wire [7:0]DOADO;
  wire [7:0]Input_r_q0;
  wire [2:0]Q;
  wire ap_clk;
  wire [3:0]\i6_reg_226_reg[3] ;
  wire [9:0]\invdar_reg_158_reg[9] ;
  wire [4:0]\k_reg_262_reg[4] ;
  wire [4:0]\tmp_8_reg_564_reg[6] ;

  design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A_ram_1 matrixmul_1D_rev2_A_ram_U
       (.DOADO(DOADO),
        .Input_r_q0(Input_r_q0),
        .Q(Q),
        .ap_clk(ap_clk),
        .\i6_reg_226_reg[3] (\i6_reg_226_reg[3] ),
        .\invdar_reg_158_reg[9] (\invdar_reg_158_reg[9] ),
        .\k_reg_262_reg[4] (\k_reg_262_reg[4] ),
        .\tmp_8_reg_564_reg[6] (\tmp_8_reg_564_reg[6] ));
endmodule

(* ORIG_REF_NAME = "matrixmul_1D_rev2_A" *) 
module design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A_0
   (DOADO,
    ap_clk,
    Q,
    \invdar1_reg_169_reg[9] ,
    tmp1_cast_fu_398_p1,
    \j7_reg_238_reg[4] ,
    tmp_5_cast_reg_587,
    \k_reg_262_reg[3] ,
    Input_r_q0);
  output [7:0]DOADO;
  input ap_clk;
  input [2:0]Q;
  input [9:0]\invdar1_reg_169_reg[9] ;
  input [2:0]tmp1_cast_fu_398_p1;
  input [4:0]\j7_reg_238_reg[4] ;
  input [1:0]tmp_5_cast_reg_587;
  input [3:0]\k_reg_262_reg[3] ;
  input [7:0]Input_r_q0;

  wire [7:0]DOADO;
  wire [7:0]Input_r_q0;
  wire [2:0]Q;
  wire ap_clk;
  wire [9:0]\invdar1_reg_169_reg[9] ;
  wire [4:0]\j7_reg_238_reg[4] ;
  wire [3:0]\k_reg_262_reg[3] ;
  wire [2:0]tmp1_cast_fu_398_p1;
  wire [1:0]tmp_5_cast_reg_587;

  design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A_ram matrixmul_1D_rev2_A_ram_U
       (.DOADO(DOADO),
        .Input_r_q0(Input_r_q0),
        .Q(Q),
        .ap_clk(ap_clk),
        .\invdar1_reg_169_reg[9] (\invdar1_reg_169_reg[9] ),
        .\j7_reg_238_reg[4] (\j7_reg_238_reg[4] ),
        .\k_reg_262_reg[3] (\k_reg_262_reg[3] ),
        .tmp1_cast_fu_398_p1(tmp1_cast_fu_398_p1),
        .tmp_5_cast_reg_587(tmp_5_cast_reg_587));
endmodule

(* ORIG_REF_NAME = "matrixmul_1D_rev2_A_ram" *) 
module design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A_ram
   (DOADO,
    ap_clk,
    Q,
    \invdar1_reg_169_reg[9] ,
    tmp1_cast_fu_398_p1,
    \j7_reg_238_reg[4] ,
    tmp_5_cast_reg_587,
    \k_reg_262_reg[3] ,
    Input_r_q0);
  output [7:0]DOADO;
  input ap_clk;
  input [2:0]Q;
  input [9:0]\invdar1_reg_169_reg[9] ;
  input [2:0]tmp1_cast_fu_398_p1;
  input [4:0]\j7_reg_238_reg[4] ;
  input [1:0]tmp_5_cast_reg_587;
  input [3:0]\k_reg_262_reg[3] ;
  input [7:0]Input_r_q0;

  wire [9:0]B_address0;
  wire B_ce0;
  wire [7:0]B_d0;
  wire [7:0]DOADO;
  wire [7:0]Input_r_q0;
  wire [2:0]Q;
  wire ap_clk;
  wire [9:0]\invdar1_reg_169_reg[9] ;
  wire [4:0]\j7_reg_238_reg[4] ;
  wire [3:0]\k_reg_262_reg[3] ;
  wire ram_reg_i_20__0_n_4;
  wire [2:0]tmp1_cast_fu_398_p1;
  wire [1:0]tmp_5_cast_reg_587;
  wire [15:8]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({B_address0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,B_d0}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:8],DOADO}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(B_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({ram_reg_i_20__0_n_4,ram_reg_i_20__0_n_4}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_10__0
       (.I0(\invdar1_reg_169_reg[9] [1]),
        .I1(Q[1]),
        .I2(tmp1_cast_fu_398_p1[1]),
        .I3(\j7_reg_238_reg[4] [1]),
        .I4(Q[2]),
        .O(B_address0[1]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_11__0
       (.I0(\invdar1_reg_169_reg[9] [0]),
        .I1(Q[1]),
        .I2(tmp1_cast_fu_398_p1[0]),
        .I3(\j7_reg_238_reg[4] [0]),
        .I4(Q[2]),
        .O(B_address0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_12__0
       (.I0(Q[1]),
        .I1(Input_r_q0[7]),
        .O(B_d0[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_13__0
       (.I0(Q[1]),
        .I1(Input_r_q0[6]),
        .O(B_d0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_14__0
       (.I0(Q[1]),
        .I1(Input_r_q0[5]),
        .O(B_d0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_15__0
       (.I0(Q[1]),
        .I1(Input_r_q0[4]),
        .O(B_d0[4]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_16__0
       (.I0(Q[1]),
        .I1(Input_r_q0[3]),
        .O(B_d0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_17__0
       (.I0(Q[1]),
        .I1(Input_r_q0[2]),
        .O(B_d0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_18__0
       (.I0(Q[1]),
        .I1(Input_r_q0[1]),
        .O(B_d0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_19__0
       (.I0(Q[1]),
        .I1(Input_r_q0[0]),
        .O(B_d0[0]));
  LUT3 #(
    .INIT(8'hFE)) 
    ram_reg_i_1__0
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(B_ce0));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_20__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(ram_reg_i_20__0_n_4));
  LUT3 #(
    .INIT(8'h02)) 
    ram_reg_i_2__0
       (.I0(\invdar1_reg_169_reg[9] [9]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(B_address0[9]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_3__0
       (.I0(\k_reg_262_reg[3] [3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar1_reg_169_reg[9] [8]),
        .O(B_address0[8]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_4__0
       (.I0(\k_reg_262_reg[3] [2]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar1_reg_169_reg[9] [7]),
        .O(B_address0[7]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_5__0
       (.I0(\invdar1_reg_169_reg[9] [6]),
        .I1(Q[1]),
        .I2(tmp_5_cast_reg_587[1]),
        .I3(\k_reg_262_reg[3] [1]),
        .I4(Q[2]),
        .O(B_address0[6]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_6__0
       (.I0(\invdar1_reg_169_reg[9] [5]),
        .I1(Q[1]),
        .I2(tmp_5_cast_reg_587[0]),
        .I3(\k_reg_262_reg[3] [0]),
        .I4(Q[2]),
        .O(B_address0[5]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_7__0
       (.I0(\j7_reg_238_reg[4] [4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar1_reg_169_reg[9] [4]),
        .O(B_address0[4]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_8__0
       (.I0(\j7_reg_238_reg[4] [3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar1_reg_169_reg[9] [3]),
        .O(B_address0[3]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_9__0
       (.I0(\invdar1_reg_169_reg[9] [2]),
        .I1(Q[1]),
        .I2(tmp1_cast_fu_398_p1[2]),
        .I3(\j7_reg_238_reg[4] [2]),
        .I4(Q[2]),
        .O(B_address0[2]));
endmodule

(* ORIG_REF_NAME = "matrixmul_1D_rev2_A_ram" *) 
module design_1_matrixmul_1D_rev2_0_4_matrixmul_1D_rev2_A_ram_1
   (DOADO,
    ap_clk,
    Q,
    \invdar_reg_158_reg[9] ,
    \tmp_8_reg_564_reg[6] ,
    \k_reg_262_reg[4] ,
    \i6_reg_226_reg[3] ,
    Input_r_q0);
  output [7:0]DOADO;
  input ap_clk;
  input [2:0]Q;
  input [9:0]\invdar_reg_158_reg[9] ;
  input [4:0]\tmp_8_reg_564_reg[6] ;
  input [4:0]\k_reg_262_reg[4] ;
  input [3:0]\i6_reg_226_reg[3] ;
  input [7:0]Input_r_q0;

  wire [9:0]A_address0;
  wire A_ce0;
  wire [7:0]A_d0;
  wire [7:0]DOADO;
  wire [7:0]Input_r_q0;
  wire [2:0]Q;
  wire ap_clk;
  wire [3:0]\i6_reg_226_reg[3] ;
  wire [9:0]\invdar_reg_158_reg[9] ;
  wire [4:0]\k_reg_262_reg[4] ;
  wire p_1_in;
  wire [4:0]\tmp_8_reg_564_reg[6] ;
  wire [15:8]NLW_ram_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_ram_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_ram_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "8192" *) 
  (* RTL_RAM_NAME = "ram" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    ram_reg
       (.ADDRARDADDR({A_address0,1'b1,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,A_d0}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_ram_reg_DOADO_UNCONNECTED[15:8],DOADO}),
        .DOBDO(NLW_ram_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_ram_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_ram_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(A_ce0),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({p_1_in,p_1_in}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'hFE)) 
    ram_reg_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(A_ce0));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_10
       (.I0(\invdar_reg_158_reg[9] [1]),
        .I1(Q[1]),
        .I2(\tmp_8_reg_564_reg[6] [1]),
        .I3(\k_reg_262_reg[4] [1]),
        .I4(Q[2]),
        .O(A_address0[1]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_11
       (.I0(\invdar_reg_158_reg[9] [0]),
        .I1(Q[1]),
        .I2(\tmp_8_reg_564_reg[6] [0]),
        .I3(\k_reg_262_reg[4] [0]),
        .I4(Q[2]),
        .O(A_address0[0]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_12
       (.I0(Q[1]),
        .I1(Input_r_q0[7]),
        .O(A_d0[7]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_13
       (.I0(Q[1]),
        .I1(Input_r_q0[6]),
        .O(A_d0[6]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_14
       (.I0(Q[1]),
        .I1(Input_r_q0[5]),
        .O(A_d0[5]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_15
       (.I0(Q[1]),
        .I1(Input_r_q0[4]),
        .O(A_d0[4]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_16
       (.I0(Q[1]),
        .I1(Input_r_q0[3]),
        .O(A_d0[3]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_17
       (.I0(Q[1]),
        .I1(Input_r_q0[2]),
        .O(A_d0[2]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_18
       (.I0(Q[1]),
        .I1(Input_r_q0[1]),
        .O(A_d0[1]));
  LUT2 #(
    .INIT(4'h8)) 
    ram_reg_i_19
       (.I0(Q[1]),
        .I1(Input_r_q0[0]),
        .O(A_d0[0]));
  LUT3 #(
    .INIT(8'h02)) 
    ram_reg_i_2
       (.I0(\invdar_reg_158_reg[9] [9]),
        .I1(Q[2]),
        .I2(Q[1]),
        .O(A_address0[9]));
  LUT2 #(
    .INIT(4'hE)) 
    ram_reg_i_20
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(p_1_in));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_3
       (.I0(\i6_reg_226_reg[3] [3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar_reg_158_reg[9] [8]),
        .O(A_address0[8]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_4
       (.I0(\i6_reg_226_reg[3] [2]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar_reg_158_reg[9] [7]),
        .O(A_address0[7]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_5
       (.I0(\invdar_reg_158_reg[9] [6]),
        .I1(Q[1]),
        .I2(\tmp_8_reg_564_reg[6] [4]),
        .I3(\i6_reg_226_reg[3] [1]),
        .I4(Q[2]),
        .O(A_address0[6]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_6
       (.I0(\invdar_reg_158_reg[9] [5]),
        .I1(Q[1]),
        .I2(\tmp_8_reg_564_reg[6] [3]),
        .I3(\i6_reg_226_reg[3] [0]),
        .I4(Q[2]),
        .O(A_address0[5]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_7
       (.I0(\k_reg_262_reg[4] [4]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar_reg_158_reg[9] [4]),
        .O(A_address0[4]));
  LUT4 #(
    .INIT(16'hA3A0)) 
    ram_reg_i_8
       (.I0(\k_reg_262_reg[4] [3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(\invdar_reg_158_reg[9] [3]),
        .O(A_address0[3]));
  LUT5 #(
    .INIT(32'hFF00E2E2)) 
    ram_reg_i_9
       (.I0(\invdar_reg_158_reg[9] [2]),
        .I1(Q[1]),
        .I2(\tmp_8_reg_564_reg[6] [2]),
        .I3(\k_reg_262_reg[4] [2]),
        .I4(Q[2]),
        .O(A_address0[2]));
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
