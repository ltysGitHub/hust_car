-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Tue Sep 05 16:31:21 2017
-- Host        : 803-014 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_stub.vhdl
-- Design      : ctc8_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ctc8_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end ctc8_0;

architecture stub of ctc8_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,resetn,count[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ctc8,Vivado 2015.2";
begin
end;
