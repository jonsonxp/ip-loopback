#!/bin/bash

#cleaning
rm -rf ip-loopback-32bit
rm -rf output

#execute the vivado_hls synthesis
vivado_hls -f synth.tcl

#copy the dcp and verilog to output folder
mkdir output
mkdir output/dcp
mkdir output/verilog
cp ip-loopback-32bit/solution1/impl/ip/ip_loopback_32bit.dcp ./output/dcp
cp ip-loopback-32bit/solution1/syn/verilog/* ./output/verilog/
