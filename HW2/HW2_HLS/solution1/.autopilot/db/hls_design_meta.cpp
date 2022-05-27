#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("lm", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("ln", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("lp", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("in_r_address0", 15, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("in_r_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("in_r_q0", 8, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("c_address0", 14, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("c_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("c_we0", 1, hls_out, 4, "ap_memory", "mem_we", 1),
	Port_Property("c_d0", 32, hls_out, 4, "ap_memory", "mem_din", 1),
};
const char* HLS_Design_Meta::dut_name = "matrixMul";
