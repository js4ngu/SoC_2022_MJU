// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_wrapper(FIXED_IO_0_ddr_vrn, FIXED_IO_0_ddr_vrp, 
  FIXED_IO_0_mio, FIXED_IO_0_ps_clk, FIXED_IO_0_ps_porb, FIXED_IO_0_ps_srstb);
  inout FIXED_IO_0_ddr_vrn;
  inout FIXED_IO_0_ddr_vrp;
  inout [53:0]FIXED_IO_0_mio;
  inout FIXED_IO_0_ps_clk;
  inout FIXED_IO_0_ps_porb;
  inout FIXED_IO_0_ps_srstb;
endmodule
