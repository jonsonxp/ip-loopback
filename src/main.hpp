#include <stdio.h>
#include <iostream>
#include <fstream>
#include <stdint.h>
#include <cstdlib>
#include <hls_stream.h>
#include "ap_int.h"

using namespace hls;

void ip_loopback_32bit(
		stream<uint32_t> &inData,
		stream<uint32_t> &outData,
		ap_uint<256> mem);
