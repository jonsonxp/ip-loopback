#include "main.hpp"
using namespace hls;

void ip_loopback_32bit(
		stream<uint32_t> &in,
		stream<uint32_t> &out,
		ap_uint<256> mem
	){
	#pragma HLS PIPELINE II=0 enable_flush
	#pragma HLS LATENCY max=0
	#pragma HLS INTERFACE ap_fifo depth=100 port=in
	#pragma HLS INTERFACE ap_fifo depth=100 port=out
	#pragma AP interface ap_ctrl_none port=return

	uint32_t value;

	in.read(value);
	value = value + mem&0xFFFF; //add the first 32bit(uint32) from mem
	out.write(value);
}
