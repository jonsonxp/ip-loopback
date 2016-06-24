#ip-loopback-32bit
ip-loopback-32bit is a simple circuit which reads input data, adds a value from memory port, and writes back to output port. It use Vivado_HLS for the high-level synthesis.

This project is a demo project of [hCODE](https://github.com/hCODE-FPGA/hCODE), which is an repository platform open-sourced hardware.

## Installation
[Standalone]

git clone https://github.com/jonsonxp/ip-loopback-32bit.git

[hCODE]

hcode ip get ip-loopback-32bit

## Usage
[standalone]

1) ./configuration.sh board clock_period sorter_size [fifo_depth]

  - board        : vc707|zybo
  - clock_period : peroid in ms
  - sorter_size  : the input size of a merge tree
  - fifo_depth   : the fifo_depth of the input channel

2) ./make.sh --no-driver

Then synthesized verilog codes can be found in output folder.

[hCODE]
hcode ip get ip-loopback-32bit
 

The hCODE can automaticlly synthesis the IP according to your hardware environment.

## License
This project is licenced under the MIT license.
