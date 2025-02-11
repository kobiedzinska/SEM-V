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
        <signal name="XLXN_6(63:0)" />
        <signal name="XLXN_7(15:0)" />
        <signal name="LED0" />
        <signal name="RST" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_14" />
        <signal name="CLK" />
        <signal name="LCD_E" />
        <signal name="LCD_RS" />
        <signal name="LCD_RW" />
        <signal name="LCD_D(3:0)" />
        <signal name="SF_CE" />
        <port polarity="Output" name="LED0" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="SF_CE" />
        <blockdef name="Z1">
            <timestamp>2024-12-17T11:6:13</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-204" height="24" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2008-9-19T11:10:6</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
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
        <block symbolname="Z1" name="XLXI_1">
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="DO_RDY" />
            <blockpin signalname="RST" name="RST" />
            <blockpin signalname="CLK" name="CLK" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="LED0" name="Y" />
            <blockpin signalname="XLXN_6(63:0)" name="LINE(63:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="BLANK(15:0)" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_2">
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="RST" name="Reset" />
            <blockpin signalname="XLXN_6(63:0)" name="Line(63:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_3">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK" name="Clk_50MHz" />
            <blockpin signalname="XLXN_2" name="E0" />
            <blockpin signalname="XLXN_3" name="F0" />
            <blockpin signalname="XLXN_4" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="CLK" name="Clk_Sys" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1536" y="1280" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2288" y="1216" name="XLXI_2" orien="R0">
        </instance>
        <instance x="704" y="1184" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="1312" y1="960" y2="960" x1="1088" />
            <wire x2="1312" y1="960" y2="1248" x1="1312" />
            <wire x2="1536" y1="1248" y2="1248" x1="1312" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1328" y1="1024" y2="1024" x1="1088" />
            <wire x2="1328" y1="928" y2="1024" x1="1328" />
            <wire x2="1536" y1="928" y2="928" x1="1328" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1344" y1="1088" y2="1088" x1="1088" />
            <wire x2="1344" y1="992" y2="1088" x1="1344" />
            <wire x2="1536" y1="992" y2="992" x1="1344" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1360" y1="1152" y2="1152" x1="1088" />
            <wire x2="1360" y1="1056" y2="1152" x1="1360" />
            <wire x2="1536" y1="1056" y2="1056" x1="1360" />
        </branch>
        <branch name="XLXN_6(63:0)">
            <wire x2="2096" y1="1088" y2="1088" x1="1920" />
            <wire x2="2096" y1="928" y2="1088" x1="2096" />
            <wire x2="2288" y1="928" y2="928" x1="2096" />
        </branch>
        <branch name="XLXN_7(15:0)">
            <wire x2="2112" y1="1248" y2="1248" x1="1920" />
            <wire x2="2112" y1="992" y2="1248" x1="2112" />
            <wire x2="2288" y1="992" y2="992" x1="2112" />
        </branch>
        <branch name="LED0">
            <wire x2="1952" y1="928" y2="928" x1="1920" />
            <wire x2="1952" y1="816" y2="928" x1="1952" />
            <wire x2="2000" y1="816" y2="816" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="2000" y="816" name="LED0" orien="R0" />
        <branch name="RST">
            <wire x2="544" y1="1440" y2="1440" x1="512" />
            <wire x2="1440" y1="1440" y2="1440" x1="544" />
            <wire x2="1936" y1="1440" y2="1440" x1="1440" />
            <wire x2="1536" y1="1120" y2="1120" x1="1440" />
            <wire x2="1440" y1="1120" y2="1440" x1="1440" />
            <wire x2="1936" y1="1120" y2="1440" x1="1936" />
            <wire x2="2288" y1="1120" y2="1120" x1="1936" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="704" y1="960" y2="960" x1="576" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="704" y1="1024" y2="1024" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="960" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="576" y="1024" name="PS2_Data" orien="R180" />
        <branch name="CLK">
            <wire x2="544" y1="1360" y2="1360" x1="512" />
            <wire x2="704" y1="1360" y2="1360" x1="544" />
            <wire x2="1504" y1="1360" y2="1360" x1="704" />
            <wire x2="1984" y1="1360" y2="1360" x1="1504" />
            <wire x2="704" y1="1088" y2="1088" x1="544" />
            <wire x2="544" y1="1088" y2="1152" x1="544" />
            <wire x2="544" y1="1152" y2="1360" x1="544" />
            <wire x2="704" y1="1152" y2="1152" x1="544" />
            <wire x2="1536" y1="1184" y2="1184" x1="1504" />
            <wire x2="1504" y1="1184" y2="1360" x1="1504" />
            <wire x2="1984" y1="1184" y2="1360" x1="1984" />
            <wire x2="2288" y1="1184" y2="1184" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="512" y="1360" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="512" y="1440" name="RST" orien="R180" />
        <branch name="LCD_E">
            <wire x2="2736" y1="928" y2="928" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="928" name="LCD_E" orien="R0" />
        <branch name="LCD_RS">
            <wire x2="2736" y1="992" y2="992" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="992" name="LCD_RS" orien="R0" />
        <branch name="LCD_RW">
            <wire x2="2736" y1="1056" y2="1056" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1056" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2736" y1="1120" y2="1120" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1120" name="LCD_D(3:0)" orien="R0" />
        <branch name="SF_CE">
            <wire x2="2736" y1="1184" y2="1184" x1="2704" />
        </branch>
        <iomarker fontsize="28" x="2736" y="1184" name="SF_CE" orien="R0" />
    </sheet>
</drawing>