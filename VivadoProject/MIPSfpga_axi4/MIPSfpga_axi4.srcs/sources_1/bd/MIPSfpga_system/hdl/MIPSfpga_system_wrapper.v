//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
//Date        : Tue Sep 05 17:57:27 2017
//Host        : 803-014 running 64-bit Service Pack 1  (build 7601)
//Command     : generate_target MIPSfpga_system_wrapper.bd
//Design      : MIPSfpga_system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MIPSfpga_system_wrapper
   (EJ_TCK,
    EJ_TDI,
    EJ_TDO,
    EJ_TMS,
    EJ_TRST_N,
    LED,
    SI_ClkIn,
    SI_ColdReset,
    SI_Reset);
  input EJ_TCK;
  input EJ_TDI;
  output EJ_TDO;
  input EJ_TMS;
  input EJ_TRST_N;
  output [15:0]LED;
  input SI_ClkIn;
  input SI_ColdReset;
  input SI_Reset;

  wire EJ_TCK;
  wire EJ_TDI;
  wire EJ_TDO;
  wire EJ_TMS;
  wire EJ_TRST_N;
  wire [15:0]LED;
  wire SI_ClkIn;
  wire SI_ColdReset;
  wire SI_Reset;

  MIPSfpga_system MIPSfpga_system_i
       (.EJ_TCK(EJ_TCK),
        .EJ_TDI(EJ_TDI),
        .EJ_TDO(EJ_TDO),
        .EJ_TMS(EJ_TMS),
        .EJ_TRST_N(EJ_TRST_N),
        .LED(LED),
        .SI_ClkIn(SI_ClkIn),
        .SI_ColdReset(SI_ColdReset),
        .SI_Reset(SI_Reset));
endmodule
