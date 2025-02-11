<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(7:0)" />
        <signal name="XLXN_2" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="K7" />
        <signal name="CLK_XT" />
        <signal name="LED0" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="Input" name="K7" />
        <port polarity="Input" name="CLK_XT" />
        <port polarity="Output" name="LED0" />
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
            <timestamp>2024-12-10T11:29:27</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="PS2_RX" name="XLXI_1">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="CLK_XT" name="Clk" />
            <blockpin signalname="K7" name="Reset" />
            <blockpin signalname="XLXN_2" name="DO_Rdy" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
        </block>
        <block symbolname="Z1" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="DO_Rdy" />
            <blockpin signalname="CLK_XT" name="CLK" />
            <blockpin signalname="K7" name="RST" />
            <blockpin signalname="XLXN_1(7:0)" name="DO(7:0)" />
            <blockpin signalname="LED0" name="Y" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1088" y="960" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_1(7:0)">
            <wire x2="1008" y1="752" y2="752" x1="928" />
            <wire x2="1008" y1="752" y2="928" x1="1008" />
            <wire x2="1072" y1="928" y2="928" x1="1008" />
            <wire x2="1088" y1="928" y2="928" x1="1072" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1024" y1="816" y2="816" x1="928" />
            <wire x2="1072" y1="736" y2="736" x1="1024" />
            <wire x2="1088" y1="736" y2="736" x1="1072" />
            <wire x2="1024" y1="736" y2="816" x1="1024" />
        </branch>
        <instance x="544" y="976" name="XLXI_1" orien="R0">
        </instance>
        <branch name="PS2_Data">
            <wire x2="544" y1="816" y2="816" x1="416" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="544" y1="752" y2="752" x1="416" />
        </branch>
        <branch name="K7">
            <wire x2="368" y1="1088" y2="1088" x1="320" />
            <wire x2="480" y1="1072" y2="1072" x1="368" />
            <wire x2="496" y1="1072" y2="1072" x1="480" />
            <wire x2="1040" y1="1072" y2="1072" x1="496" />
            <wire x2="480" y1="1072" y2="1104" x1="480" />
            <wire x2="368" y1="1072" y2="1088" x1="368" />
            <wire x2="480" y1="880" y2="880" x1="464" />
            <wire x2="544" y1="880" y2="880" x1="480" />
            <wire x2="464" y1="880" y2="1104" x1="464" />
            <wire x2="480" y1="1104" y2="1104" x1="464" />
            <wire x2="1088" y1="864" y2="864" x1="1040" />
            <wire x2="1040" y1="864" y2="1072" x1="1040" />
        </branch>
        <branch name="CLK_XT">
            <wire x2="368" y1="1008" y2="1008" x1="320" />
            <wire x2="368" y1="1008" y2="1040" x1="368" />
            <wire x2="544" y1="1040" y2="1040" x1="368" />
            <wire x2="992" y1="1040" y2="1040" x1="544" />
            <wire x2="544" y1="944" y2="944" x1="480" />
            <wire x2="480" y1="944" y2="1024" x1="480" />
            <wire x2="544" y1="1024" y2="1024" x1="480" />
            <wire x2="544" y1="1024" y2="1040" x1="544" />
            <wire x2="1088" y1="800" y2="800" x1="992" />
            <wire x2="992" y1="800" y2="1040" x1="992" />
        </branch>
        <branch name="LED0">
            <wire x2="1568" y1="736" y2="736" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1568" y="736" name="LED0" orien="R0" />
        <iomarker fontsize="28" x="416" y="752" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="416" y="816" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="320" y="1008" name="CLK_XT" orien="R180" />
        <iomarker fontsize="28" x="320" y="1088" name="K7" orien="R180" />
    </sheet>
</drawing>