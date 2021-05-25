-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.2
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mul_Matrix is
generic (
    C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER := 6;
    C_S_AXI_AXILITES_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    arrayA_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    arrayA_TVALID : IN STD_LOGIC;
    arrayA_TREADY : OUT STD_LOGIC;
    arrayB_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    arrayB_TVALID : IN STD_LOGIC;
    arrayB_TREADY : OUT STD_LOGIC;
    arrayR_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    arrayR_TVALID : OUT STD_LOGIC;
    arrayR_TREADY : IN STD_LOGIC;
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH/8-1 downto 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of mul_Matrix is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "mul_Matrix,hls_ip_2018_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.380000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=1,HLS_SYN_FF=607,HLS_SYN_LUT=617,HLS_VERSION=2018_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv31_0 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000000";
    constant ap_const_lv31_1 : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000000000001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal useLM : STD_LOGIC_VECTOR (31 downto 0);
    signal useLM_0_data_reg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal useLM_0_vld_reg : STD_LOGIC := '0';
    signal useLM_0_ack_out : STD_LOGIC;
    signal useLN : STD_LOGIC_VECTOR (31 downto 0);
    signal useLN_0_data_reg : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    signal useLN_0_vld_reg : STD_LOGIC := '0';
    signal useLN_0_ack_out : STD_LOGIC;
    signal useLP : STD_LOGIC_VECTOR (31 downto 0);
    signal arrayA_0_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal arrayA_0_vld_in : STD_LOGIC;
    signal arrayA_0_vld_out : STD_LOGIC;
    signal arrayA_0_ack_in : STD_LOGIC;
    signal arrayA_0_ack_out : STD_LOGIC;
    signal arrayA_0_payload_A : STD_LOGIC_VECTOR (7 downto 0);
    signal arrayA_0_payload_B : STD_LOGIC_VECTOR (7 downto 0);
    signal arrayA_0_sel_rd : STD_LOGIC := '0';
    signal arrayA_0_sel_wr : STD_LOGIC := '0';
    signal arrayA_0_sel : STD_LOGIC;
    signal arrayA_0_load_A : STD_LOGIC;
    signal arrayA_0_load_B : STD_LOGIC;
    signal arrayA_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal arrayA_0_state_cmp_full : STD_LOGIC;
    signal arrayB_0_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal arrayB_0_vld_in : STD_LOGIC;
    signal arrayB_0_vld_out : STD_LOGIC;
    signal arrayB_0_ack_in : STD_LOGIC;
    signal arrayB_0_ack_out : STD_LOGIC;
    signal arrayB_0_payload_A : STD_LOGIC_VECTOR (7 downto 0);
    signal arrayB_0_payload_B : STD_LOGIC_VECTOR (7 downto 0);
    signal arrayB_0_sel_rd : STD_LOGIC := '0';
    signal arrayB_0_sel_wr : STD_LOGIC := '0';
    signal arrayB_0_sel : STD_LOGIC;
    signal arrayB_0_load_A : STD_LOGIC;
    signal arrayB_0_load_B : STD_LOGIC;
    signal arrayB_0_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal arrayB_0_state_cmp_full : STD_LOGIC;
    signal arrayR_1_data_out : STD_LOGIC_VECTOR (31 downto 0);
    signal arrayR_1_vld_in : STD_LOGIC;
    signal arrayR_1_vld_out : STD_LOGIC;
    signal arrayR_1_ack_in : STD_LOGIC;
    signal arrayR_1_ack_out : STD_LOGIC;
    signal arrayR_1_payload_A : STD_LOGIC_VECTOR (31 downto 0);
    signal arrayR_1_payload_B : STD_LOGIC_VECTOR (31 downto 0);
    signal arrayR_1_sel_rd : STD_LOGIC := '0';
    signal arrayR_1_sel_wr : STD_LOGIC := '0';
    signal arrayR_1_sel : STD_LOGIC;
    signal arrayR_1_load_A : STD_LOGIC;
    signal arrayR_1_load_B : STD_LOGIC;
    signal arrayR_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal arrayR_1_state_cmp_full : STD_LOGIC;
    signal arrayA_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal arrayB_TDATA_blk_n : STD_LOGIC;
    signal arrayR_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal tmp_4_fu_150_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal useLN_read_reg_177 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal useLM_read_reg_183 : STD_LOGIC_VECTOR (31 downto 0);
    signal r_1_fu_129_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal r_1_reg_191 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal c_1_fu_140_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal c_1_reg_199 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal k_1_fu_155_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_1_reg_207 : STD_LOGIC_VECTOR (30 downto 0);
    signal ap_block_state5_io : BOOLEAN;
    signal grp_fu_169_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_state6 : BOOLEAN;
    signal r_reg_73 : STD_LOGIC_VECTOR (30 downto 0);
    signal exitcond_fu_135_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_reg_84 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_fu_124_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal sum_reg_95 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_reg_109 : STD_LOGIC_VECTOR (30 downto 0);
    signal r_cast_fu_120_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_cast_fu_146_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_169_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_169_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal grp_fu_169_p00 : STD_LOGIC_VECTOR (15 downto 0);
    signal grp_fu_169_p10 : STD_LOGIC_VECTOR (15 downto 0);

    component mul_Matrix_mac_mubkb IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (31 downto 0);
        dout : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component mul_Matrix_AXILiteS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        useLM : OUT STD_LOGIC_VECTOR (31 downto 0);
        useLN : OUT STD_LOGIC_VECTOR (31 downto 0);
        useLP : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;



begin
    mul_Matrix_AXILiteS_s_axi_U : component mul_Matrix_AXILiteS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_AXILITES_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_AXILITES_DATA_WIDTH)
    port map (
        AWVALID => s_axi_AXILiteS_AWVALID,
        AWREADY => s_axi_AXILiteS_AWREADY,
        AWADDR => s_axi_AXILiteS_AWADDR,
        WVALID => s_axi_AXILiteS_WVALID,
        WREADY => s_axi_AXILiteS_WREADY,
        WDATA => s_axi_AXILiteS_WDATA,
        WSTRB => s_axi_AXILiteS_WSTRB,
        ARVALID => s_axi_AXILiteS_ARVALID,
        ARREADY => s_axi_AXILiteS_ARREADY,
        ARADDR => s_axi_AXILiteS_ARADDR,
        RVALID => s_axi_AXILiteS_RVALID,
        RREADY => s_axi_AXILiteS_RREADY,
        RDATA => s_axi_AXILiteS_RDATA,
        RRESP => s_axi_AXILiteS_RRESP,
        BVALID => s_axi_AXILiteS_BVALID,
        BREADY => s_axi_AXILiteS_BREADY,
        BRESP => s_axi_AXILiteS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        useLM => useLM,
        useLN => useLN,
        useLP => useLP);

    mul_Matrix_mac_mubkb_U1 : component mul_Matrix_mac_mubkb
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 32,
        dout_WIDTH => 32)
    port map (
        din0 => grp_fu_169_p0,
        din1 => grp_fu_169_p1,
        din2 => sum_reg_95,
        dout => grp_fu_169_p3);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    arrayA_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayA_0_sel_rd <= ap_const_logic_0;
            else
                if (((arrayA_0_ack_out = ap_const_logic_1) and (arrayA_0_vld_out = ap_const_logic_1))) then 
                                        arrayA_0_sel_rd <= not(arrayA_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    arrayA_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayA_0_sel_wr <= ap_const_logic_0;
            else
                if (((arrayA_0_ack_in = ap_const_logic_1) and (arrayA_0_vld_in = ap_const_logic_1))) then 
                                        arrayA_0_sel_wr <= not(arrayA_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    arrayA_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayA_0_state <= ap_const_lv2_0;
            else
                if ((((arrayA_0_vld_in = ap_const_logic_0) and (arrayA_0_state = ap_const_lv2_2)) or ((arrayA_0_vld_in = ap_const_logic_0) and (arrayA_0_ack_out = ap_const_logic_1) and (arrayA_0_state = ap_const_lv2_3)))) then 
                    arrayA_0_state <= ap_const_lv2_2;
                elsif ((((arrayA_0_ack_out = ap_const_logic_0) and (arrayA_0_state = ap_const_lv2_1)) or ((arrayA_0_ack_out = ap_const_logic_0) and (arrayA_0_vld_in = ap_const_logic_1) and (arrayA_0_state = ap_const_lv2_3)))) then 
                    arrayA_0_state <= ap_const_lv2_1;
                elsif (((not(((arrayA_0_vld_in = ap_const_logic_0) and (arrayA_0_ack_out = ap_const_logic_1))) and not(((arrayA_0_ack_out = ap_const_logic_0) and (arrayA_0_vld_in = ap_const_logic_1))) and (arrayA_0_state = ap_const_lv2_3)) or ((arrayA_0_ack_out = ap_const_logic_1) and (arrayA_0_state = ap_const_lv2_1)) or ((arrayA_0_vld_in = ap_const_logic_1) and (arrayA_0_state = ap_const_lv2_2)))) then 
                    arrayA_0_state <= ap_const_lv2_3;
                else 
                    arrayA_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    arrayB_0_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayB_0_sel_rd <= ap_const_logic_0;
            else
                if (((arrayB_0_ack_out = ap_const_logic_1) and (arrayB_0_vld_out = ap_const_logic_1))) then 
                                        arrayB_0_sel_rd <= not(arrayB_0_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    arrayB_0_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayB_0_sel_wr <= ap_const_logic_0;
            else
                if (((arrayB_0_ack_in = ap_const_logic_1) and (arrayB_0_vld_in = ap_const_logic_1))) then 
                                        arrayB_0_sel_wr <= not(arrayB_0_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    arrayB_0_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayB_0_state <= ap_const_lv2_0;
            else
                if ((((arrayB_0_vld_in = ap_const_logic_0) and (arrayB_0_state = ap_const_lv2_2)) or ((arrayB_0_vld_in = ap_const_logic_0) and (arrayB_0_ack_out = ap_const_logic_1) and (arrayB_0_state = ap_const_lv2_3)))) then 
                    arrayB_0_state <= ap_const_lv2_2;
                elsif ((((arrayB_0_ack_out = ap_const_logic_0) and (arrayB_0_state = ap_const_lv2_1)) or ((arrayB_0_ack_out = ap_const_logic_0) and (arrayB_0_vld_in = ap_const_logic_1) and (arrayB_0_state = ap_const_lv2_3)))) then 
                    arrayB_0_state <= ap_const_lv2_1;
                elsif (((not(((arrayB_0_vld_in = ap_const_logic_0) and (arrayB_0_ack_out = ap_const_logic_1))) and not(((arrayB_0_ack_out = ap_const_logic_0) and (arrayB_0_vld_in = ap_const_logic_1))) and (arrayB_0_state = ap_const_lv2_3)) or ((arrayB_0_ack_out = ap_const_logic_1) and (arrayB_0_state = ap_const_lv2_1)) or ((arrayB_0_vld_in = ap_const_logic_1) and (arrayB_0_state = ap_const_lv2_2)))) then 
                    arrayB_0_state <= ap_const_lv2_3;
                else 
                    arrayB_0_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    arrayR_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayR_1_sel_rd <= ap_const_logic_0;
            else
                if (((arrayR_1_ack_out = ap_const_logic_1) and (arrayR_1_vld_out = ap_const_logic_1))) then 
                                        arrayR_1_sel_rd <= not(arrayR_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    arrayR_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayR_1_sel_wr <= ap_const_logic_0;
            else
                if (((arrayR_1_ack_in = ap_const_logic_1) and (arrayR_1_vld_in = ap_const_logic_1))) then 
                                        arrayR_1_sel_wr <= not(arrayR_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    arrayR_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                arrayR_1_state <= ap_const_lv2_0;
            else
                if ((((arrayR_1_vld_in = ap_const_logic_0) and (arrayR_1_state = ap_const_lv2_2)) or ((arrayR_1_vld_in = ap_const_logic_0) and (arrayR_1_ack_out = ap_const_logic_1) and (arrayR_1_state = ap_const_lv2_3)))) then 
                    arrayR_1_state <= ap_const_lv2_2;
                elsif ((((arrayR_1_ack_out = ap_const_logic_0) and (arrayR_1_state = ap_const_lv2_1)) or ((arrayR_1_ack_out = ap_const_logic_0) and (arrayR_1_vld_in = ap_const_logic_1) and (arrayR_1_state = ap_const_lv2_3)))) then 
                    arrayR_1_state <= ap_const_lv2_1;
                elsif (((not(((arrayR_1_vld_in = ap_const_logic_0) and (arrayR_1_ack_out = ap_const_logic_1))) and not(((arrayR_1_ack_out = ap_const_logic_0) and (arrayR_1_vld_in = ap_const_logic_1))) and (arrayR_1_state = ap_const_lv2_3)) or ((arrayR_1_ack_out = ap_const_logic_1) and (arrayR_1_state = ap_const_lv2_1)) or ((arrayR_1_vld_in = ap_const_logic_1) and (arrayR_1_state = ap_const_lv2_2)))) then 
                    arrayR_1_state <= ap_const_lv2_3;
                else 
                    arrayR_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    c_reg_84_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((arrayR_1_ack_in = ap_const_logic_1)) then
                if (((ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_1))) then 
                    c_reg_84 <= ap_const_lv32_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state7)) then 
                    c_reg_84 <= c_1_reg_199;
                end if;
            end if; 
        end if;
    end process;

    k_reg_109_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_135_p2 = ap_const_lv1_0))) then 
                k_reg_109 <= ap_const_lv31_0;
            elsif ((not(((arrayB_0_vld_out = ap_const_logic_0) or (arrayA_0_vld_out = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                k_reg_109 <= k_1_reg_207;
            end if; 
        end if;
    end process;

    r_reg_73_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_135_p2 = ap_const_lv1_1))) then 
                r_reg_73 <= r_1_reg_191;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                r_reg_73 <= ap_const_lv31_0;
            end if; 
        end if;
    end process;

    sum_reg_95_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_135_p2 = ap_const_lv1_0))) then 
                sum_reg_95 <= ap_const_lv32_0;
            elsif ((not(((arrayB_0_vld_out = ap_const_logic_0) or (arrayA_0_vld_out = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                sum_reg_95 <= grp_fu_169_p3;
            end if; 
        end if;
    end process;

    useLM_0_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
        end if;
    end process;

    useLN_0_vld_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((arrayA_0_load_A = ap_const_logic_1)) then
                arrayA_0_payload_A <= arrayA_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((arrayA_0_load_B = ap_const_logic_1)) then
                arrayA_0_payload_B <= arrayA_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((arrayB_0_load_A = ap_const_logic_1)) then
                arrayB_0_payload_A <= arrayB_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((arrayB_0_load_B = ap_const_logic_1)) then
                arrayB_0_payload_B <= arrayB_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((arrayR_1_load_A = ap_const_logic_1)) then
                arrayR_1_payload_A <= sum_reg_95;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((arrayR_1_load_B = ap_const_logic_1)) then
                arrayR_1_payload_B <= sum_reg_95;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                c_1_reg_199 <= c_1_fu_140_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state5_io) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                k_1_reg_207 <= k_1_fu_155_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                r_1_reg_191 <= r_1_fu_129_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (useLM_0_vld_reg = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)) or (not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (useLM_0_ack_out = ap_const_logic_1) and (ap_const_logic_1 = ap_const_logic_1) and (useLM_0_vld_reg = ap_const_logic_1)))) then
                useLM_0_data_reg <= useLM;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                useLM_read_reg_183 <= useLM_0_data_reg;
                useLN_read_reg_177 <= useLN_0_data_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (useLN_0_vld_reg = ap_const_logic_0) and (ap_const_logic_1 = ap_const_logic_1)) or (not(((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) and (useLN_0_ack_out = ap_const_logic_1) and (ap_const_logic_1 = ap_const_logic_1) and (useLN_0_vld_reg = ap_const_logic_1)))) then
                useLN_0_data_reg <= useLN;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, arrayA_0_vld_out, arrayB_0_vld_out, arrayR_1_ack_in, ap_CS_fsm_state6, ap_CS_fsm_state5, tmp_4_fu_150_p2, ap_CS_fsm_state7, ap_CS_fsm_state3, ap_CS_fsm_state4, ap_block_state5_io, exitcond_fu_135_p2, tmp_fu_124_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (exitcond_fu_135_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if (((ap_const_boolean_0 = ap_block_state5_io) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_4_fu_150_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                elsif (((ap_const_boolean_0 = ap_block_state5_io) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_4_fu_150_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if ((not(((arrayB_0_vld_out = ap_const_logic_0) or (arrayA_0_vld_out = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);

    ap_block_state5_io_assign_proc : process(arrayR_1_ack_in, tmp_4_fu_150_p2)
    begin
                ap_block_state5_io <= ((arrayR_1_ack_in = ap_const_logic_0) and (tmp_4_fu_150_p2 = ap_const_lv1_0));
    end process;


    ap_block_state6_assign_proc : process(arrayA_0_vld_out, arrayB_0_vld_out)
    begin
                ap_block_state6 <= ((arrayB_0_vld_out = ap_const_logic_0) or (arrayA_0_vld_out = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(arrayR_1_ack_in, ap_CS_fsm_state3, tmp_fu_124_p2)
    begin
        if (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(arrayR_1_ack_in, ap_CS_fsm_state3, tmp_fu_124_p2)
    begin
        if (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    arrayA_0_ack_in <= arrayA_0_state(1);

    arrayA_0_ack_out_assign_proc : process(arrayA_0_vld_out, arrayB_0_vld_out, ap_CS_fsm_state6)
    begin
        if ((not(((arrayB_0_vld_out = ap_const_logic_0) or (arrayA_0_vld_out = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            arrayA_0_ack_out <= ap_const_logic_1;
        else 
            arrayA_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    arrayA_0_data_out_assign_proc : process(arrayA_0_payload_A, arrayA_0_payload_B, arrayA_0_sel)
    begin
        if ((arrayA_0_sel = ap_const_logic_1)) then 
            arrayA_0_data_out <= arrayA_0_payload_B;
        else 
            arrayA_0_data_out <= arrayA_0_payload_A;
        end if; 
    end process;

    arrayA_0_load_A <= (not(arrayA_0_sel_wr) and arrayA_0_state_cmp_full);
    arrayA_0_load_B <= (arrayA_0_state_cmp_full and arrayA_0_sel_wr);
    arrayA_0_sel <= arrayA_0_sel_rd;
    arrayA_0_state_cmp_full <= '0' when (arrayA_0_state = ap_const_lv2_1) else '1';
    arrayA_0_vld_in <= arrayA_TVALID;
    arrayA_0_vld_out <= arrayA_0_state(0);

    arrayA_TDATA_blk_n_assign_proc : process(arrayA_0_state, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arrayA_TDATA_blk_n <= arrayA_0_state(0);
        else 
            arrayA_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    arrayA_TREADY <= arrayA_0_state(1);
    arrayB_0_ack_in <= arrayB_0_state(1);

    arrayB_0_ack_out_assign_proc : process(arrayA_0_vld_out, arrayB_0_vld_out, ap_CS_fsm_state6)
    begin
        if ((not(((arrayB_0_vld_out = ap_const_logic_0) or (arrayA_0_vld_out = ap_const_logic_0))) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
            arrayB_0_ack_out <= ap_const_logic_1;
        else 
            arrayB_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    arrayB_0_data_out_assign_proc : process(arrayB_0_payload_A, arrayB_0_payload_B, arrayB_0_sel)
    begin
        if ((arrayB_0_sel = ap_const_logic_1)) then 
            arrayB_0_data_out <= arrayB_0_payload_B;
        else 
            arrayB_0_data_out <= arrayB_0_payload_A;
        end if; 
    end process;

    arrayB_0_load_A <= (not(arrayB_0_sel_wr) and arrayB_0_state_cmp_full);
    arrayB_0_load_B <= (arrayB_0_state_cmp_full and arrayB_0_sel_wr);
    arrayB_0_sel <= arrayB_0_sel_rd;
    arrayB_0_state_cmp_full <= '0' when (arrayB_0_state = ap_const_lv2_1) else '1';
    arrayB_0_vld_in <= arrayB_TVALID;
    arrayB_0_vld_out <= arrayB_0_state(0);

    arrayB_TDATA_blk_n_assign_proc : process(arrayB_0_state, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            arrayB_TDATA_blk_n <= arrayB_0_state(0);
        else 
            arrayB_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    arrayB_TREADY <= arrayB_0_state(1);
    arrayR_1_ack_in <= arrayR_1_state(1);
    arrayR_1_ack_out <= arrayR_TREADY;

    arrayR_1_data_out_assign_proc : process(arrayR_1_payload_A, arrayR_1_payload_B, arrayR_1_sel)
    begin
        if ((arrayR_1_sel = ap_const_logic_1)) then 
            arrayR_1_data_out <= arrayR_1_payload_B;
        else 
            arrayR_1_data_out <= arrayR_1_payload_A;
        end if; 
    end process;

    arrayR_1_load_A <= (not(arrayR_1_sel_wr) and arrayR_1_state_cmp_full);
    arrayR_1_load_B <= (arrayR_1_state_cmp_full and arrayR_1_sel_wr);
    arrayR_1_sel <= arrayR_1_sel_rd;
    arrayR_1_state_cmp_full <= '0' when (arrayR_1_state = ap_const_lv2_1) else '1';

    arrayR_1_vld_in_assign_proc : process(ap_CS_fsm_state5, tmp_4_fu_150_p2, ap_block_state5_io)
    begin
        if (((ap_const_boolean_0 = ap_block_state5_io) and (ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_4_fu_150_p2 = ap_const_lv1_0))) then 
            arrayR_1_vld_in <= ap_const_logic_1;
        else 
            arrayR_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    arrayR_1_vld_out <= arrayR_1_state(0);
    arrayR_TDATA <= arrayR_1_data_out;

    arrayR_TDATA_blk_n_assign_proc : process(arrayR_1_state, ap_CS_fsm_state5, tmp_4_fu_150_p2, ap_CS_fsm_state7)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state7) or ((ap_const_logic_1 = ap_CS_fsm_state5) and (tmp_4_fu_150_p2 = ap_const_lv1_0)))) then 
            arrayR_TDATA_blk_n <= arrayR_1_state(1);
        else 
            arrayR_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    arrayR_TVALID <= arrayR_1_state(0);
    c_1_fu_140_p2 <= std_logic_vector(unsigned(c_reg_84) + unsigned(ap_const_lv32_1));
    exitcond_fu_135_p2 <= "1" when (c_reg_84 = useLN_read_reg_177) else "0";
    grp_fu_169_p0 <= grp_fu_169_p00(8 - 1 downto 0);
    grp_fu_169_p00 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(arrayA_0_data_out),16));
    grp_fu_169_p1 <= grp_fu_169_p10(8 - 1 downto 0);
    grp_fu_169_p10 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(arrayB_0_data_out),16));
    k_1_fu_155_p2 <= std_logic_vector(unsigned(k_reg_109) + unsigned(ap_const_lv31_1));
    k_cast_fu_146_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(k_reg_109),32));
    r_1_fu_129_p2 <= std_logic_vector(unsigned(r_reg_73) + unsigned(ap_const_lv31_1));
    r_cast_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(r_reg_73),32));
    tmp_4_fu_150_p2 <= "1" when (signed(k_cast_fu_146_p1) < signed(useLM_read_reg_183)) else "0";
    tmp_fu_124_p2 <= "1" when (signed(r_cast_fu_120_p1) < signed(useLN_read_reg_177)) else "0";

    useLM_0_ack_out_assign_proc : process(arrayR_1_ack_in, ap_CS_fsm_state3, tmp_fu_124_p2)
    begin
        if (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0))) then 
            useLM_0_ack_out <= ap_const_logic_1;
        else 
            useLM_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;


    useLN_0_ack_out_assign_proc : process(arrayR_1_ack_in, ap_CS_fsm_state3, tmp_fu_124_p2)
    begin
        if (((arrayR_1_ack_in = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3) and (tmp_fu_124_p2 = ap_const_lv1_0))) then 
            useLN_0_ack_out <= ap_const_logic_1;
        else 
            useLN_0_ack_out <= ap_const_logic_0;
        end if; 
    end process;

end behav;