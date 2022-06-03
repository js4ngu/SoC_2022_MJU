vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_3
vlib activehdl/axi_vip_v1_1_3
vlib activehdl/processing_system7_vip_v1_0_5
vlib activehdl/lib_pkg_v1_0_2
vlib activehdl/fifo_generator_v13_2_2
vlib activehdl/lib_fifo_v1_0_11
vlib activehdl/lib_srl_fifo_v1_0_2
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/axi_datamover_v5_1_19
vlib activehdl/axi_sg_v4_1_10
vlib activehdl/axi_dma_v7_1_18
vlib activehdl/xlconstant_v1_1_5
vlib activehdl/proc_sys_reset_v5_0_12
vlib activehdl/xlconcat_v2_1_1
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_17
vlib activehdl/axi_data_fifo_v2_1_16
vlib activehdl/axi_crossbar_v2_1_18
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/axi_timer_v2_0_19
vlib activehdl/axi_protocol_converter_v2_1_17

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 activehdl/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 activehdl/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 activehdl/processing_system7_vip_v1_0_5
vmap lib_pkg_v1_0_2 activehdl/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_2 activehdl/fifo_generator_v13_2_2
vmap lib_fifo_v1_0_11 activehdl/lib_fifo_v1_0_11
vmap lib_srl_fifo_v1_0_2 activehdl/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_19 activehdl/axi_datamover_v5_1_19
vmap axi_sg_v4_1_10 activehdl/axi_sg_v4_1_10
vmap axi_dma_v7_1_18 activehdl/axi_dma_v7_1_18
vmap xlconstant_v1_1_5 activehdl/xlconstant_v1_1_5
vmap proc_sys_reset_v5_0_12 activehdl/proc_sys_reset_v5_0_12
vmap xlconcat_v2_1_1 activehdl/xlconcat_v2_1_1
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_17 activehdl/axi_register_slice_v2_1_17
vmap axi_data_fifo_v2_1_16 activehdl/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 activehdl/axi_crossbar_v2_1_18
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap axi_timer_v2_0_19 activehdl/axi_timer_v2_0_19
vmap axi_protocol_converter_v2_1_17 activehdl/axi_protocol_converter_v2_1_17

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_11 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/6078/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_19 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec8a/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_10 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/6e5f/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_18 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/6bfe/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5160/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/acc2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/28cb/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00e_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/afa8/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_s01mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/4521/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_s01tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/d1fc/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/4e7b/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work proc_sys_reset_v5_0_12 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_timer_v2_0_19 -93 \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/0a2c/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_timer_0_0/sim/design_1_axi_timer_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/cd73/hdl/verilog/matrixmul_1D_rev2_A.v" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/cd73/hdl/verilog/matrixmul_1D_rev2bkb.v" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/cd73/hdl/verilog/matrixmul_1D_rev2.v" \
"../../../bd/design_1/ip/design_1_matrixmul_1D_rev2_0_4/sim/design_1_matrixmul_1D_rev2_0_4.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/5bb9/hdl/verilog" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/70fd/hdl" "+incdir+../../../../HW2_rev3.srcs/sources_1/bd/design_1/ipshared/f90c/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

