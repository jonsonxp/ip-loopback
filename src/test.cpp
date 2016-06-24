#include "main.hpp"
#include "ap_int.h"
#include <stdio.h>
#include <stdint.h>

using namespace hls;
using namespace std;

int main(){
	stream<uint32_t> in;
	stream<uint32_t> out;
	ap_uint<256> mem;
	uint32_t v;

	mem = 1;
	//send sortlength to IP
	in.write(1);
	ip_loopback_32bit(in, out, mem);
	out.read(v);
	std::cout << v << std::endl;
}
