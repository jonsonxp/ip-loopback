set C_TypeInfoList {{ 
"ip_loopback" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in": [[], {"reference": "0"}] }, {"out": [[], {"reference": "0"}] }],[],""], 
"0": [ "stream<ap_int<128> >", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_int<128>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 128}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName ip_loopback
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 1
set C_modelName {ip_loopback}
set C_modelType { void 0 }
set C_modelArgList { 
	{ in_V_V int 128 regular {fifo 0 volatile }  }
	{ out_V_V int 128 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "in.V.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} , 
 	{ "Name" : "out_V_V", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":127,"cElement": [{"cName": "out.V.V","cData": "int128","bit_use": { "low": 0,"up": 127},"cArray": [{"low" : 0,"up" : 99,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ in_V_V_dout sc_in sc_lv 128 signal 0 } 
	{ in_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_V_V_read sc_out sc_logic 1 signal 0 } 
	{ out_V_V_din sc_out sc_lv 128 signal 1 } 
	{ out_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_V_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "in_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "in_V_V", "role": "dout" }} , 
 	{ "name": "in_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "empty_n" }} , 
 	{ "name": "in_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_V_V", "role": "read" }} , 
 	{ "name": "out_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "out_V_V", "role": "din" }} , 
 	{ "name": "out_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "full_n" }} , 
 	{ "name": "out_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_V_V", "role": "write" }}  ]}
set Spec2ImplPortList { 
	in_V_V { ap_fifo {  { in_V_V_dout fifo_data 0 128 }  { in_V_V_empty_n fifo_status 0 1 }  { in_V_V_read fifo_update 1 1 } } }
	out_V_V { ap_fifo {  { out_V_V_din fifo_data 1 128 }  { out_V_V_full_n fifo_status 0 1 }  { out_V_V_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in_V_V { fifo_read 1 no_conditional }
	out_V_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
