{
  "name": "ip-loopback",
  "type": "ip",
  "version": "0.0.1",
  "summary": "A simple loopback circuit integer numbers.",
  "description": "This ip-loopback IP is a simple circuit which reads input data, adds a value from memory port, and writes back to output port. It use Vivado_HLS for the high-level synthesis.",
  "homepage": "https://github.com/jonsonxp/ip-loopback/",
  "license": "MIT",
  "authors": {
    "jonsonxp": "ofmsmile@msn.com"
  },
  "source": {
    "git": "https://github.com/jonsonxp/ip-loopback.git",
    "tag": "0.0.1"
  },
  "code": {
    "verilog": true, 
    "verilog_generator": false,
    "vhdl": false,
    "vhdl_generator": false,
    "vivado_hls": true,
    "hls_generator": true
  },
  "ides": {
    "version": "vivado2015.3",
    "version": "vivado2015.4"
  },
  "platforms": {
    "shell-vc707-riffa2-ap_fifo32": {
      "shell": "shell-vc707-riffa2-ap_fifo32",
      "data_width": 32,
      "clk_period": 250,
      "reference": " ip_loopback_32bit ip_loopback_32bit (.ap_clk(ip_clk), .ap_rst(~ip_rst_n), .in_V_V_dout(in_r_dout), .in_V_V_empty_n(in_r_empty_n), .in_V_V_read(in_r_read), .out_V_V_din(out_r_din), .out_V_V_full_n(!out_r_full), .out_V_V_write(out_r_write));"
    },
    "shell-vc707-xillybus-ap_fifo32": {
      "shell": "shell-vc707-xillybus-ap_fifo32",
      "data_width": 32,
      "clk_period": 4,
      "reference": " ip_loopback_32bit ip_loopback_32bit (.ap_clk(ip_clk), .ap_rst(~ip_rst_n), .in_V_V_dout(in_r_dout), .in_V_V_empty_n(in_r_empty_n), .in_V_V_read(in_r_read), .out_V_V_din(out_r_din), .out_V_V_full_n(!out_r_full), .out_V_V_write(out_r_write));"
    },
    "shell-zybo-xillybus-ap_fifo32": {
      "shell": "shell-zybo-xillybus-ap_fifo32",
      "data_width": 32,
      "clk_period": 8,
      "reference": " ip_loopback_32bit ip_loopback_32bit (.ap_clk(ip_clk), .ap_rst(~ip_rst_n), .in_V_V_dout(in_r_dout), .in_V_V_empty_n(in_r_empty_n), .in_V_V_read(in_r_read), .out_V_V_din(out_r_din), .out_V_V_full_n(!out_r_full), .out_V_V_write(out_r_write));"
    }
  },
  "interfaces": {
    "host-fpga": {
        "name": "xillybus",
        "interface": {
            "protocol" : "ap-stream",
            "datawidth" : "32"
        }
    }
  }
}

