// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
// Date        : Tue Sep 05 16:31:21 2017
// Host        : 803-014 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_funcsim.v
// Design      : ctc8_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ctc8_0,ctc8,{}" *) (* CORE_GENERATION_INFO = "ctc8_0,ctc8,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ctc8,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "ctc8,Vivado 2015.2" *) 
(* NotValidForBitStream *)
module ctc8_0
   (clk,
    resetn,
    count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) input resetn;
  output [2:0]count;

  wire clk;
  wire [2:0]count;
  wire resetn;

  ctc8_0_ctc8 inst
       (.clk(clk),
        .count(count),
        .resetn(resetn));
endmodule

(* ORIG_REF_NAME = "ctc8" *) 
module ctc8_0_ctc8
   (count,
    clk,
    resetn);
  output [2:0]count;
  input clk;
  input resetn;

  wire clk;
  wire [2:0]count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire resetn;

  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[1]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \count[2]_i_1 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .O(\count[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[2]_i_2 
       (.I0(resetn),
        .O(\count[2]_i_2_n_0 ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[2]_i_2_n_0 ),
        .D(\count[0]_i_1_n_0 ),
        .Q(count[0]));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[2]_i_2_n_0 ),
        .D(\count[1]_i_1_n_0 ),
        .Q(count[1]));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\count[2]_i_2_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .Q(count[2]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
