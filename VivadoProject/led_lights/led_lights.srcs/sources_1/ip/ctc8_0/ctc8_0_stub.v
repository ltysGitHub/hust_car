// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Tue Sep 05 16:31:21 2017
// Host        : 803-014 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_stub.v
// Design      : ctc8_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ctc8,Vivado 2015.2" *)
module ctc8_0(clk, resetn, count)
/* synthesis syn_black_box black_box_pad_pin="clk,resetn,count[2:0]" */;
  input clk;
  input resetn;
  output [2:0]count;
endmodule
