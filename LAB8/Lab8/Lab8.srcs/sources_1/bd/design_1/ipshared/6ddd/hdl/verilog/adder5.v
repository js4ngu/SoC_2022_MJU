// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="adder5,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.552000,HLS_SYN_LAT=151,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=152,HLS_SYN_LUT=191,HLS_VERSION=2018_2}" *)

module adder5 (
        ap_clk,
        ap_rst_n,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        A_TDATA,
        A_TVALID,
        A_TREADY,
        B_TDATA,
        B_TVALID,
        B_TREADY
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;

input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_TDATA;
input   A_TVALID;
output   A_TREADY;
output  [31:0] B_TDATA;
output   B_TVALID;
input   B_TREADY;

reg ap_done;
reg ap_idle;
reg ap_ready;

 reg    ap_rst_n_inv;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [31:0] A_0_data_out;
wire    A_0_vld_in;
wire    A_0_vld_out;
wire    A_0_ack_in;
reg    A_0_ack_out;
reg   [31:0] A_0_payload_A;
reg   [31:0] A_0_payload_B;
reg    A_0_sel_rd;
reg    A_0_sel_wr;
wire    A_0_sel;
wire    A_0_load_A;
wire    A_0_load_B;
reg   [1:0] A_0_state;
wire    A_0_state_cmp_full;
reg   [31:0] B_1_data_out;
reg    B_1_vld_in;
wire    B_1_vld_out;
wire    B_1_ack_in;
wire    B_1_ack_out;
reg   [31:0] B_1_payload_A;
reg   [31:0] B_1_payload_B;
reg    B_1_sel_rd;
reg    B_1_sel_wr;
wire    B_1_sel;
wire    B_1_load_A;
wire    B_1_load_B;
reg   [1:0] B_1_state;
wire    B_1_state_cmp_full;
reg    A_TDATA_blk_n;
wire    ap_CS_fsm_state3;
reg    B_TDATA_blk_n;
wire    ap_CS_fsm_state4;
wire   [5:0] i_1_fu_68_p2;
reg   [5:0] i_1_reg_84;
wire    ap_CS_fsm_state2;
wire   [31:0] tmp_1_fu_74_p2;
reg   [5:0] i_reg_51;
wire   [0:0] exitcond_fu_62_p2;
reg   [3:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 4'd1;
#0 A_0_sel_rd = 1'b0;
#0 A_0_sel_wr = 1'b0;
#0 A_0_state = 2'd0;
#0 B_1_sel_rd = 1'b0;
#0 B_1_sel_wr = 1'b0;
#0 B_1_state = 2'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        A_0_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == A_0_ack_out) & (1'b1 == A_0_vld_out))) begin
            A_0_sel_rd <= ~A_0_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        A_0_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == A_0_ack_in) & (1'b1 == A_0_vld_in))) begin
            A_0_sel_wr <= ~A_0_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        A_0_state <= 2'd0;
    end else begin
        if ((((2'd2 == A_0_state) & (1'b0 == A_0_vld_in)) | ((2'd3 == A_0_state) & (1'b0 == A_0_vld_in) & (1'b1 == A_0_ack_out)))) begin
            A_0_state <= 2'd2;
        end else if ((((2'd1 == A_0_state) & (1'b0 == A_0_ack_out)) | ((2'd3 == A_0_state) & (1'b0 == A_0_ack_out) & (1'b1 == A_0_vld_in)))) begin
            A_0_state <= 2'd1;
        end else if (((~((1'b0 == A_0_vld_in) & (1'b1 == A_0_ack_out)) & ~((1'b0 == A_0_ack_out) & (1'b1 == A_0_vld_in)) & (2'd3 == A_0_state)) | ((2'd1 == A_0_state) & (1'b1 == A_0_ack_out)) | ((2'd2 == A_0_state) & (1'b1 == A_0_vld_in)))) begin
            A_0_state <= 2'd3;
        end else begin
            A_0_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        B_1_sel_rd <= 1'b0;
    end else begin
        if (((1'b1 == B_1_ack_out) & (1'b1 == B_1_vld_out))) begin
            B_1_sel_rd <= ~B_1_sel_rd;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        B_1_sel_wr <= 1'b0;
    end else begin
        if (((1'b1 == B_1_vld_in) & (1'b1 == B_1_ack_in))) begin
            B_1_sel_wr <= ~B_1_sel_wr;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        B_1_state <= 2'd0;
    end else begin
        if ((((2'd2 == B_1_state) & (1'b0 == B_1_vld_in)) | ((2'd3 == B_1_state) & (1'b0 == B_1_vld_in) & (1'b1 == B_1_ack_out)))) begin
            B_1_state <= 2'd2;
        end else if ((((2'd1 == B_1_state) & (1'b0 == B_1_ack_out)) | ((2'd3 == B_1_state) & (1'b0 == B_1_ack_out) & (1'b1 == B_1_vld_in)))) begin
            B_1_state <= 2'd1;
        end else if (((~((1'b0 == B_1_vld_in) & (1'b1 == B_1_ack_out)) & ~((1'b0 == B_1_ack_out) & (1'b1 == B_1_vld_in)) & (2'd3 == B_1_state)) | ((2'd1 == B_1_state) & (1'b1 == B_1_ack_out)) | ((2'd2 == B_1_state) & (1'b1 == B_1_vld_in)))) begin
            B_1_state <= 2'd3;
        end else begin
            B_1_state <= 2'd2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == B_1_ack_in))) begin
        i_reg_51 <= i_1_reg_84;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_51 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == A_0_load_A)) begin
        A_0_payload_A <= A_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == A_0_load_B)) begin
        A_0_payload_B <= A_TDATA;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == B_1_load_A)) begin
        B_1_payload_A <= tmp_1_fu_74_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == B_1_load_B)) begin
        B_1_payload_B <= tmp_1_fu_74_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (1'b1 == B_1_ack_in))) begin
        i_1_reg_84 <= i_1_fu_68_p2;
    end
end

always @ (*) begin
    if ((~((1'b0 == A_0_vld_out) | (1'b0 == B_1_ack_in)) & (1'b1 == ap_CS_fsm_state3))) begin
        A_0_ack_out = 1'b1;
    end else begin
        A_0_ack_out = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == A_0_sel)) begin
        A_0_data_out = A_0_payload_B;
    end else begin
        A_0_data_out = A_0_payload_A;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        A_TDATA_blk_n = A_0_state[1'd0];
    end else begin
        A_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((1'b1 == B_1_sel)) begin
        B_1_data_out = B_1_payload_B;
    end else begin
        B_1_data_out = B_1_payload_A;
    end
end

always @ (*) begin
    if ((~((1'b0 == A_0_vld_out) | (1'b0 == B_1_ack_in)) & (1'b1 == ap_CS_fsm_state3))) begin
        B_1_vld_in = 1'b1;
    end else begin
        B_1_vld_in = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        B_TDATA_blk_n = B_1_state[1'd1];
    end else begin
        B_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((exitcond_fu_62_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b1 == B_1_ack_in))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((exitcond_fu_62_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b1 == B_1_ack_in))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((exitcond_fu_62_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2) & (1'b1 == B_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((exitcond_fu_62_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2) & (1'b1 == B_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((~((1'b0 == A_0_vld_out) | (1'b0 == B_1_ack_in)) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b1 == B_1_ack_in))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_0_ack_in = A_0_state[1'd1];

assign A_0_load_A = (~A_0_sel_wr & A_0_state_cmp_full);

assign A_0_load_B = (A_0_state_cmp_full & A_0_sel_wr);

assign A_0_sel = A_0_sel_rd;

assign A_0_state_cmp_full = ((A_0_state != 2'd1) ? 1'b1 : 1'b0);

assign A_0_vld_in = A_TVALID;

assign A_0_vld_out = A_0_state[1'd0];

assign A_TREADY = A_0_state[1'd1];

assign B_1_ack_in = B_1_state[1'd1];

assign B_1_ack_out = B_TREADY;

assign B_1_load_A = (~B_1_sel_wr & B_1_state_cmp_full);

assign B_1_load_B = (B_1_state_cmp_full & B_1_sel_wr);

assign B_1_sel = B_1_sel_rd;

assign B_1_state_cmp_full = ((B_1_state != 2'd1) ? 1'b1 : 1'b0);

assign B_1_vld_out = B_1_state[1'd0];

assign B_TDATA = B_1_data_out;

assign B_TVALID = B_1_state[1'd0];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign exitcond_fu_62_p2 = ((i_reg_51 == 6'd50) ? 1'b1 : 1'b0);

assign i_1_fu_68_p2 = (i_reg_51 + 6'd1);

assign tmp_1_fu_74_p2 = (A_0_data_out + 32'd5);

endmodule //adder5
