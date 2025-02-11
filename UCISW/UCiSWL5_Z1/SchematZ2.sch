<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="K7" />
        <signal name="CLK_XT" />
        <signal name="XLXN_11" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="RS_TX" />
        <signal name="XLXN_16" />
        <signal name="LED8" />
        <signal name="XLXN_18(7:0)" />
        <signal name="XLXN_20" />
        <signal name="LED0" />
        <signal name="XLXN_22(7:0)" />
        <port polarity="Input" name="K7" />
        <port polarity="Input" name="CLK_XT" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Output" name="RS_TX" />
        <port polarity="Output" name="LED8" />
        <port polarity="Output" name="LED0" />
        <blockdef name="RS232_TX">
            <timestamp>2024-12-10T11:57:46</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
        </blockdef>
        <blockdef name="PS2_RX">
            <timestamp>2024-12-10T11:22:29</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="Z1">
            <timestamp>2024-12-10T12:58:1</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <block symbolname="RS232_TX" name="XLXI_1">
            <blockpin signalname="RS_TX" name="RS_TX" />
            <blockpin signalname="XLXN_20" name="Start" />
            <blockpin signalname="XLXN_22(7:0)" name="DI(7:0)" />
            <blockpin signalname="CLK_XT" name="Clk_XT" />
            <blockpin signalname="K7" name="Reset" />
            <blockpin signalname="XLXN_16" name="Busy" />
        </block>
        <block symbolname="PS2_RX" name="XLXI_2">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK_XT" name="Clk" />
            <blockpin signalname="K7" name="Reset" />
            <blockpin signalname="XLXN_11" name="DO_Rdy" />
            <blockpin signalname="XLXN_18(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="Z1" name="XLXI_3">
            <blockpin signalname="XLXN_11" name="DO_Rdy" />
            <blockpin signalname="CLK_XT" name="CLK" />
            <blockpin signalname="K7" name="RST" />
            <blockpin signalname="XLXN_18(7:0)" name="DO(7:0)" />
            <blockpin signalname="LED0" name="Y" />
            <blockpin signalname="XLXN_20" name="start" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="XLXN_16" name="I" />
            <blockpin signalname="LED8" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_5">
            <attr value="44" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_22(7:0)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2672" y="1136" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1264" y="1104" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1872" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <branch name="K7">
            <wire x2="1200" y1="1472" y2="1472" x1="1024" />
            <wire x2="1760" y1="1472" y2="1472" x1="1200" />
            <wire x2="2544" y1="1472" y2="1472" x1="1760" />
            <wire x2="1264" y1="1008" y2="1008" x1="1200" />
            <wire x2="1200" y1="1008" y2="1472" x1="1200" />
            <wire x2="1872" y1="1056" y2="1056" x1="1760" />
            <wire x2="1760" y1="1056" y2="1472" x1="1760" />
            <wire x2="2672" y1="1040" y2="1040" x1="2544" />
            <wire x2="2544" y1="1040" y2="1472" x1="2544" />
        </branch>
        <branch name="CLK_XT">
            <wire x2="1264" y1="1296" y2="1296" x1="1040" />
            <wire x2="1808" y1="1296" y2="1296" x1="1264" />
            <wire x2="2672" y1="1296" y2="1296" x1="1808" />
            <wire x2="1264" y1="1072" y2="1072" x1="1184" />
            <wire x2="1184" y1="1072" y2="1168" x1="1184" />
            <wire x2="1264" y1="1168" y2="1168" x1="1184" />
            <wire x2="1264" y1="1168" y2="1296" x1="1264" />
            <wire x2="1872" y1="992" y2="992" x1="1808" />
            <wire x2="1808" y1="992" y2="1296" x1="1808" />
            <wire x2="2672" y1="1104" y2="1104" x1="2592" />
            <wire x2="2592" y1="1104" y2="1216" x1="2592" />
            <wire x2="2672" y1="1216" y2="1216" x1="2592" />
            <wire x2="2672" y1="1216" y2="1296" x1="2672" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1664" y1="944" y2="944" x1="1648" />
            <wire x2="1760" y1="944" y2="944" x1="1664" />
            <wire x2="1760" y1="928" y2="944" x1="1760" />
            <wire x2="1872" y1="928" y2="928" x1="1760" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="1264" y1="880" y2="880" x1="880" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="1248" y1="944" y2="944" x1="864" />
            <wire x2="1264" y1="944" y2="944" x1="1248" />
        </branch>
        <branch name="RS_TX">
            <wire x2="3312" y1="912" y2="912" x1="3056" />
            <wire x2="3312" y1="832" y2="912" x1="3312" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="3088" y1="1008" y2="1008" x1="3056" />
        </branch>
        <iomarker fontsize="28" x="3312" y="832" name="RS_TX" orien="R270" />
        <iomarker fontsize="28" x="880" y="880" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="1040" y="1296" name="CLK_XT" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1472" name="K7" orien="R180" />
        <iomarker fontsize="28" x="864" y="944" name="PS2_Data" orien="R180" />
        <instance x="3088" y="1040" name="XLXI_4" orien="R0" />
        <branch name="LED8">
            <wire x2="3344" y1="1008" y2="1008" x1="3312" />
        </branch>
        <iomarker fontsize="28" x="3344" y="1008" name="LED8" orien="R0" />
        <branch name="XLXN_18(7:0)">
            <wire x2="1664" y1="880" y2="880" x1="1648" />
            <wire x2="1744" y1="880" y2="880" x1="1664" />
            <wire x2="1744" y1="880" y2="1120" x1="1744" />
            <wire x2="1872" y1="1120" y2="1120" x1="1744" />
        </branch>
        <branch name="XLXN_20">
            <wire x2="2464" y1="1248" y2="1248" x1="2256" />
            <wire x2="2464" y1="976" y2="1248" x1="2464" />
            <wire x2="2672" y1="976" y2="976" x1="2464" />
        </branch>
        <branch name="LED0">
            <wire x2="2288" y1="928" y2="928" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="2288" y="928" name="LED0" orien="R0" />
        <branch name="XLXN_22(7:0)">
            <wire x2="2672" y1="912" y2="912" x1="2576" />
        </branch>
        <instance x="2432" y="880" name="XLXI_5" orien="R0">
        </instance>
    </sheet>
</drawing>