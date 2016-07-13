#ip-loopback
ip-loopback is a simple circuit which reads input data and writes back to output port. It use Vivado_HLS for the high-level synthesis.

This project is a demo project of [hCODE](https://github.com/hCODE-FPGA/hCODE), which is an repository platform open-sourced hardware.

## Installation
[Standalone]

git clone https://github.com/jonsonxp/ip-loopback.git

[hCODE]

hcode ip get ip-loopback

## Usage
[standalone]

1) ./configure -data_width NUMBER -CLK NUMBER -device STRING

  -data_width NUMBER		: the data width of the interface (like 32, 64, or 128 ).
  -device NAME			: the FPGA device model name (like vc707 is xc7vx485tffg1761-2).
  -clk NUMBER	 		: the frequency of clock (MHz) (100, 150, 200 or 250).

2) ./make

Then synthesized verilog codes can be found in output folder.

The hCODE can automaticlly synthesis the IP according to your hardware environment.

## License
This project is licenced under the MIT license.
