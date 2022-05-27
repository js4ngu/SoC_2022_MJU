############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project HW2_HLS
set_top matrixMul
add_files HW2_HLS/Matrix_MUL.cpp
add_files -tb HW2_HLS/test_matrixMul.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./HW2_HLS/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
