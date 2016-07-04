#include "main.hpp"
#include "ap_int.h"
#include <stdio.h>
#include <stdint.h>

using namespace hls;
using namespace std;

int main(){
	stream<MYINT> in;
	stream<MYINT> out;
	MYINT v;

	//send sortlength to IP
	in.write(1);
	ip_loopback_32bit(in, outm);
	out.read(v);
	std::cout << v << std::endl;
}
