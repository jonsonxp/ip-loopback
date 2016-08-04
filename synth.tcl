############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project ip-loopback
set_top ip_loopback
add_files ./src/main.cpp
add_files ./src/main.hpp
add_files -tb ./src/test.cpp
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 5 -name default
set_clock_uncertainty 5%
config_rtl -encoding onehot -reset all -reset_level high
csynth_design
#export_design -format syn_dcp
quit
