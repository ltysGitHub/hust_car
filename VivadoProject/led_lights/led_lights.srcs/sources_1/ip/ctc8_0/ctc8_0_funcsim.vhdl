-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2015.2 (win64) Build 1266856 Fri Jun 26 16:35:25 MDT 2015
-- Date        : Tue Sep 05 16:31:21 2017
-- Host        : 803-014 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               d:/VivadoProject/led_lights/led_lights.srcs/sources_1/ip/ctc8_0/ctc8_0_funcsim.vhdl
-- Design      : ctc8_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ctc8_0_ctc8 is
  port (
    count : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ctc8_0_ctc8 : entity is "ctc8";
end ctc8_0_ctc8;

architecture STRUCTURE of ctc8_0_ctc8 is
  signal \^count\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
begin
  count(2 downto 0) <= \^count\(2 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count\(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^count\(1),
      I1 => \^count\(0),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \^count\(2),
      I1 => \^count\(0),
      I2 => \^count\(1),
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \count[2]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[2]_i_2_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => \^count\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[2]_i_2_n_0\,
      D => \count[1]_i_1_n_0\,
      Q => \^count\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \count[2]_i_2_n_0\,
      D => \count[2]_i_1_n_0\,
      Q => \^count\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ctc8_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ctc8_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ctc8_0 : entity is "ctc8_0,ctc8,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ctc8_0 : entity is "ctc8_0,ctc8,{x_ipProduct=Vivado 2015.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ctc8,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ctc8_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ctc8_0 : entity is "ctc8,Vivado 2015.2";
end ctc8_0;

architecture STRUCTURE of ctc8_0 is
begin
inst: entity work.ctc8_0_ctc8
     port map (
      clk => clk,
      count(2 downto 0) => count(2 downto 0),
      resetn => resetn
    );
end STRUCTURE;
