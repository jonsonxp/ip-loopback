#include "main.hpp"
using namespace hls;

void ip_loopback(
		stream<MYINT> &in,
		stream<MYINT> &out
	){
	#pragma HLS PIPELINE II=0 enable_flush
	#pragma HLS LATENCY max=0
        #pragma HLS STREAM variable=in depth=100 dim=1
        #pragma HLS STREAM variable=out depth=100 dim=1
	#pragma AP interface ap_ctrl_none port=return

	MYINT value;

	in.read(value);
	out.write(value);
}
