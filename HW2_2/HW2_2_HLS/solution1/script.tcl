############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HW2_2_HLS
set_top matrixmul_1D_rev2
add_files HW2_2_HLS/1DmatrixMul_rev2.cpp
add_files -tb HW2_2_HLS/TB_1DmatrixMul_rev2.cpp -cflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./HW2_2_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
