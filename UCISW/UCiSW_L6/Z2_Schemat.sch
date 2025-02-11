<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="LED0" />
        <signal name="XLXN_10" />
        <signal name="CLK" />
        <signal name="XLXN_13" />
        <signal name="RST" />
        <signal name="PS2_CLK" />
        <signal name="PS2_Data" />
        <signal name="XLXN_17" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_29(7:0)">
        </signal>
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="PS2_CLK" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="LCDWrite">
            <timestamp>2008-9-18T10:4:40</timestamp>
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-364" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2008-9-19T9:9:36</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="Z2">
            <timestamp>2024-12-17T12:6:42</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="LCDWrite" name="XLXI_1">
            <blockpin signalname="XLXN_31" name="WE" />
            <blockpin signalname="XLXN_24" name="DnI" />
            <blockpin signalname="RST" name="Reset" />
            <blockpin signalname="XLXN_24" name="Cursor" />
            <blockpin signalname="XLXN_24" name="Blink" />
            <blockpin signalname="XLXN_29(7:0)" name="DI(7:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="SF_CE" name="SF_CE" />
            <blockpin name="Busy" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="CLK" name="Clk_Sys" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_3">
            <blockpin signalname="PS2_CLK" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="CLK" name="Clk_Sys" />
        </block>
        <block symbolname="Z2" name="XLXI_8">
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="DO_RDY" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="LED0" name="Y" />
            <blockpin signalname="XLXN_31" name="WE" />
            <blockpin name="D(7:0)" />
        </block>
        <block symbolname="constant" name="XLXI_9">
            <attr value="1" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_12">
            <attr value="42" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_29(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2672" y="1296" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1056" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="1632" y1="928" y2="928" x1="1440" />
            <wire x2="1632" y1="928" y2="1184" x1="1632" />
            <wire x2="1808" y1="1184" y2="1184" x1="1632" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1648" y1="992" y2="992" x1="1440" />
            <wire x2="1648" y1="864" y2="992" x1="1648" />
            <wire x2="1808" y1="864" y2="864" x1="1648" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1664" y1="1056" y2="1056" x1="1440" />
            <wire x2="1664" y1="928" y2="1056" x1="1664" />
            <wire x2="1808" y1="928" y2="928" x1="1664" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1680" y1="1120" y2="1120" x1="1440" />
            <wire x2="1680" y1="992" y2="1120" x1="1680" />
            <wire x2="1808" y1="992" y2="992" x1="1680" />
        </branch>
        <branch name="LED0">
            <wire x2="2224" y1="864" y2="864" x1="2192" />
            <wire x2="2224" y1="656" y2="656" x1="2208" />
            <wire x2="2224" y1="656" y2="752" x1="2224" />
            <wire x2="2224" y1="752" y2="864" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2208" y="656" name="LED0" orien="R180" />
        <instance x="1808" y="1216" name="XLXI_8" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="928" y1="1408" y2="1408" x1="784" />
            <wire x2="1688" y1="1408" y2="1408" x1="928" />
            <wire x2="1696" y1="1408" y2="1408" x1="1688" />
            <wire x2="2272" y1="1408" y2="1408" x1="1696" />
            <wire x2="1056" y1="1056" y2="1056" x1="928" />
            <wire x2="928" y1="1056" y2="1120" x1="928" />
            <wire x2="1056" y1="1120" y2="1120" x1="928" />
            <wire x2="928" y1="1120" y2="1136" x1="928" />
            <wire x2="928" y1="1136" y2="1408" x1="928" />
            <wire x2="1696" y1="1120" y2="1408" x1="1696" />
            <wire x2="1808" y1="1120" y2="1120" x1="1696" />
            <wire x2="2672" y1="1200" y2="1200" x1="2272" />
            <wire x2="2272" y1="1200" y2="1264" x1="2272" />
            <wire x2="2272" y1="1264" y2="1408" x1="2272" />
            <wire x2="2672" y1="1264" y2="1264" x1="2272" />
        </branch>
        <branch name="RST">
            <wire x2="1776" y1="1344" y2="1344" x1="800" />
            <wire x2="2256" y1="1344" y2="1344" x1="1776" />
            <wire x2="1808" y1="1056" y2="1056" x1="1776" />
            <wire x2="1776" y1="1056" y2="1344" x1="1776" />
            <wire x2="2256" y1="1136" y2="1344" x1="2256" />
            <wire x2="2672" y1="1136" y2="1136" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="784" y="1408" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="800" y="1344" name="RST" orien="R180" />
        <branch name="PS2_CLK">
            <wire x2="1056" y1="928" y2="928" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="928" name="PS2_CLK" orien="R180" />
        <branch name="PS2_Data">
            <wire x2="1056" y1="992" y2="992" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="1024" y="992" name="PS2_Data" orien="R180" />
        <branch name="LCD_E">
            <wire x2="3088" y1="816" y2="816" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="816" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="3072" y1="880" y2="880" x1="3056" />
            <wire x2="3088" y1="880" y2="880" x1="3072" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="3088" y1="944" y2="944" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="944" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="3088" y1="1008" y2="1008" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1008" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="3088" y1="1072" y2="1072" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3088" y="1072" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="3088" y="880" name="LCD_RS" orien="R0" />
        <instance x="2272" y="848" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_24">
            <wire x2="2528" y1="880" y2="880" x1="2416" />
            <wire x2="2672" y1="880" y2="880" x1="2528" />
            <wire x2="2528" y1="880" y2="1008" x1="2528" />
            <wire x2="2672" y1="1008" y2="1008" x1="2528" />
            <wire x2="2528" y1="1008" y2="1072" x1="2528" />
            <wire x2="2672" y1="1072" y2="1072" x1="2528" />
        </branch>
        <branch name="XLXN_29(7:0)">
            <wire x2="2640" y1="1056" y2="1056" x1="2448" />
            <wire x2="2672" y1="944" y2="944" x1="2640" />
            <wire x2="2640" y1="944" y2="1056" x1="2640" />
        </branch>
        <instance x="2304" y="1024" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_31">
            <wire x2="2256" y1="1024" y2="1024" x1="2192" />
            <wire x2="2256" y1="688" y2="1024" x1="2256" />
            <wire x2="2400" y1="688" y2="688" x1="2256" />
            <wire x2="2400" y1="688" y2="816" x1="2400" />
            <wire x2="2672" y1="816" y2="816" x1="2400" />
        </branch>
    </sheet>
</drawing>