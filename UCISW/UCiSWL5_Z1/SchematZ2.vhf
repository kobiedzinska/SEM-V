--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SchematZ2.vhf
-- /___/   /\     Timestamp : 12/10/2024 13:59:59
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xc9500xl -flat -suppress -vhdl C:/XilinxPrj/UCiSWL5_Z1/SchematZ2.vhf -w C:/XilinxPrj/UCiSWL5_Z1/SchematZ2.sch
--Design Name: SchematZ2
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

entity SchematZ2 is
   port ( CLK_XT   : in    std_logic; 
          K7       : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic; 
          LED0     : out   std_logic; 
          LED8     : out   std_logic; 
          RS_TX    : out   std_logic);
end SchematZ2;

architecture BEHAVIORAL of SchematZ2 is
   attribute BOX_TYPE   : string ;
   signal XLXN_11  : std_logic;
   signal XLXN_16  : std_logic;
   signal XLXN_18  : std_logic_vector (7 downto 0);
   signal XLXN_20  : std_logic;
   signal XLXN_22  : std_logic_vector (7 downto 0);
   component RS232_TX
      port ( RS_TX  : out   std_logic; 
             Start  : in    std_logic; 
             DI     : in    std_logic_vector (7 downto 0); 
             Clk_XT : in    std_logic; 
             Reset  : in    std_logic; 
             Busy   : out   std_logic);
   end component;
   
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
             Y      : out   std_logic; 
             start  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
begin
   XLXN_22(7 downto 0) <= x"44";
   XLXI_1 : RS232_TX
      port map (Clk_XT=>CLK_XT,
                DI(7 downto 0)=>XLXN_22(7 downto 0),
                Reset=>K7,
                Start=>XLXN_20,
                Busy=>XLXN_16,
                RS_TX=>RS_TX);
   
   XLXI_2 : PS2_RX
      port map (Clk=>CLK_XT,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                Reset=>K7,
                DO(7 downto 0)=>XLXN_18(7 downto 0),
                DO_Rdy=>XLXN_11);
   
   XLXI_3 : Z1
      port map (CLK=>CLK_XT,
                DO(7 downto 0)=>XLXN_18(7 downto 0),
                DO_Rdy=>XLXN_11,
                RST=>K7,
                start=>XLXN_20,
                Y=>LED0);
   
   XLXI_4 : INV
      port map (I=>XLXN_16,
                O=>LED8);
   
end BEHAVIORAL;


