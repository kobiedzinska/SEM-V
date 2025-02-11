--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Z1schemat.vhf
-- /___/   /\     Timestamp : 12/10/2024 12:42:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/XilinxPrj/UCiSWL5_Z1/Z1schemat.vhf -w C:/XilinxPrj/UCiSWL5_Z1/Z1schemat.sch
--Design Name: Z1schemat
--Device: xc9500xl
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Z1schemat is
   port ( CLK_XT   : in    std_logic; 
          K7       : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic; 
          LED0     : out   std_logic);
end Z1schemat;

architecture BEHAVIORAL of Z1schemat is
   signal XLXN_1   : std_logic_vector (7 downto 0);
   signal XLXN_2   : std_logic;
   component PS2_RX
      port ( PS2_Clk  : in    std_logic; 
             PS2_Data : in    std_logic; 
             Clk      : in    std_logic; 
             Reset    : in    std_logic; 
             DO_Rdy   : out   std_logic; 
             DO       : out   std_logic_vector (7 downto 0));
   end component;
   
   component Z1
      port ( DO_Rdy : in    std_logic; 
             CLK    : in    std_logic; 
             RST    : in    std_logic; 
             DO     : in    std_logic_vector (7 downto 0); 
             Y      : out   std_logic);
   end component;
   
begin
   XLXI_1 : PS2_RX
      port map (Clk=>CLK_XT,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                Reset=>K7,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_2);
   
   XLXI_2 : Z1
      port map (CLK=>CLK_XT,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_2,
                RST=>K7,
                Y=>LED0);
   
end BEHAVIORAL;


