--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Z2_Schemat.vhf
-- /___/   /\     Timestamp : 12/17/2024 13:41:40
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/XilinxPrj/UCiSW_L6/Z2_Schemat.vhf -w C:/XilinxPrj/UCiSW_L6/Z2_Schemat.sch
--Design Name: Z2_Schemat
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Z2_Schemat is
   port ( CLK      : in    std_logic; 
          PS2_CLK  : in    std_logic; 
          PS2_Data : in    std_logic; 
          RST      : in    std_logic; 
          LCD_E    : out   std_logic; 
          LCD_RS   : out   std_logic; 
          LCD_RW   : out   std_logic; 
          LED0     : out   std_logic; 
          SF_CE    : out   std_logic; 
          LCD_D    : inout std_logic_vector (3 downto 0));
end Z2_Schemat;

architecture BEHAVIORAL of Z2_Schemat is
   signal XLXN_1   : std_logic_vector (7 downto 0);
   signal XLXN_2   : std_logic;
   signal XLXN_3   : std_logic;
   signal XLXN_4   : std_logic;
   signal XLXN_24  : std_logic;
   signal XLXN_29  : std_logic_vector (7 downto 0);
   signal XLXN_31  : std_logic;
   component LCDWrite
      port ( WE        : in    std_logic; 
             DnI       : in    std_logic; 
             Reset     : in    std_logic; 
             Cursor    : in    std_logic; 
             Blink     : in    std_logic; 
             DI        : in    std_logic_vector (7 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RS    : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             SF_CE     : out   std_logic; 
             Busy      : out   std_logic; 
             Clk_50MHz : in    std_logic; 
             Clk_Sys   : in    std_logic);
   end component;
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component Z2
      port ( E0     : in    std_logic; 
             F0     : in    std_logic; 
             DO_RDY : in    std_logic; 
             RST    : in    std_logic; 
             CLK    : in    std_logic; 
             DO     : in    std_logic_vector (7 downto 0); 
             Y      : out   std_logic; 
             WE     : out   std_logic; 
             D      : out   std_logic_vector (7 downto 0));
   end component;
   
begin
   XLXN_24 <= '1';
   XLXN_29(7 downto 0) <= x"42";
   XLXI_1 : LCDWrite
      port map (Blink=>XLXN_24,
                Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                Cursor=>XLXN_24,
                DI(7 downto 0)=>XLXN_29(7 downto 0),
                DnI=>XLXN_24,
                Reset=>RST,
                WE=>XLXN_31,
                Busy=>open,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_3 : PS2_Kbd
      port map (Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                PS2_Clk=>PS2_CLK,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_4,
                E0=>XLXN_2,
                F0=>XLXN_3);
   
   XLXI_8 : Z2
      port map (CLK=>CLK,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_RDY=>XLXN_4,
                E0=>XLXN_2,
                F0=>XLXN_3,
                RST=>RST,
                D=>open,
                WE=>XLXN_31,
                Y=>LED0);
   
end BEHAVIORAL;


