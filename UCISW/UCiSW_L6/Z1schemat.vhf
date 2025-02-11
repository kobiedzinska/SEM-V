--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Z1schemat.vhf
-- /___/   /\     Timestamp : 12/17/2024 12:16:00
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/XilinxPrj/UCiSW_L6/Z1schemat.vhf -w C:/XilinxPrj/UCiSW_L6/Z1schemat.sch
--Design Name: Z1schemat
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

entity Z1schemat is
   port ( CLK      : in    std_logic; 
          PS2_Clk  : in    std_logic; 
          PS2_Data : in    std_logic; 
          RST      : in    std_logic; 
          LCD_E    : out   std_logic; 
          LCD_RS   : out   std_logic; 
          LCD_RW   : out   std_logic; 
          LED0     : out   std_logic; 
          SF_CE    : out   std_logic; 
          LCD_D    : inout std_logic_vector (3 downto 0));
end Z1schemat;

architecture BEHAVIORAL of Z1schemat is
   signal XLXN_1   : std_logic_vector (7 downto 0);
   signal XLXN_2   : std_logic;
   signal XLXN_3   : std_logic;
   signal XLXN_4   : std_logic;
   signal XLXN_6   : std_logic_vector (63 downto 0);
   signal XLXN_7   : std_logic_vector (15 downto 0);
   component Z1
      port ( E0     : in    std_logic; 
             F0     : in    std_logic; 
             DO_RDY : in    std_logic; 
             RST    : in    std_logic; 
             CLK    : in    std_logic; 
             DO     : in    std_logic_vector (7 downto 0); 
             Y      : out   std_logic; 
             LINE   : out   std_logic_vector (63 downto 0); 
             BLANK  : out   std_logic_vector (15 downto 0));
   end component;
   
   component LCD1x64
      port ( Clk_50MHz : in    std_logic; 
             Reset     : in    std_logic; 
             Line      : in    std_logic_vector (63 downto 0); 
             Blank     : in    std_logic_vector (15 downto 0); 
             LCD_D     : inout std_logic_vector (3 downto 0); 
             LCD_E     : out   std_logic; 
             LCD_RW    : out   std_logic; 
             LCD_RS    : out   std_logic; 
             SF_CE     : out   std_logic);
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
   
begin
   XLXI_1 : Z1
      port map (CLK=>CLK,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_RDY=>XLXN_4,
                E0=>XLXN_2,
                F0=>XLXN_3,
                RST=>RST,
                BLANK(15 downto 0)=>XLXN_7(15 downto 0),
                LINE(63 downto 0)=>XLXN_6(63 downto 0),
                Y=>LED0);
   
   XLXI_2 : LCD1x64
      port map (Blank(15 downto 0)=>XLXN_7(15 downto 0),
                Clk_50MHz=>CLK,
                Line(63 downto 0)=>XLXN_6(63 downto 0),
                Reset=>RST,
                LCD_E=>LCD_E,
                LCD_RS=>LCD_RS,
                LCD_RW=>LCD_RW,
                SF_CE=>SF_CE,
                LCD_D(3 downto 0)=>LCD_D(3 downto 0));
   
   XLXI_3 : PS2_Kbd
      port map (Clk_Sys=>CLK,
                Clk_50MHz=>CLK,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_1(7 downto 0),
                DO_Rdy=>XLXN_4,
                E0=>XLXN_2,
                F0=>XLXN_3);
   
end BEHAVIORAL;


