<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="X(3:0)" />
        <signal name="X(0)" />
        <signal name="X(2)" />
        <signal name="X(3)" />
        <signal name="X(1)" />
        <signal name="XLXN_23" />
        <signal name="XLXN_2" />
        <signal name="XLXN_8" />
        <signal name="XLXN_61" />
        <signal name="Y(3:0)" />
        <signal name="Y(3)" />
        <signal name="Y(2)" />
        <signal name="Y(1)" />
        <signal name="Y(0)" />
        <port polarity="Input" name="X(3:0)" />
        <port polarity="Output" name="Y(3:0)" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <line x2="208" y1="-96" y2="-96" x1="256" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="xnor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="60" y1="-128" y2="-128" x1="0" />
            <arc ex="44" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <arc ex="64" ey="-144" sx="64" sy="-48" r="56" cx="32" cy="-96" />
            <line x2="64" y1="-144" y2="-144" x1="128" />
            <line x2="64" y1="-48" y2="-48" x1="128" />
            <arc ex="128" ey="-144" sx="208" sy="-96" r="88" cx="132" cy="-56" />
            <arc ex="208" ey="-96" sx="128" sy="-48" r="88" cx="132" cy="-136" />
            <circle r="8" cx="220" cy="-96" />
            <line x2="256" y1="-96" y2="-96" x1="228" />
            <line x2="60" y1="-28" y2="-28" x1="60" />
        </blockdef>
        <block symbolname="and2" name="XLXI_27">
            <blockpin signalname="X(3)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_1">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="X(1)" name="I1" />
            <blockpin signalname="Y(1)" name="O" />
        </block>
        <block symbolname="xor2" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="Y(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="X(1)" name="I0" />
            <blockpin signalname="X(0)" name="I1" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_19">
            <blockpin signalname="X(1)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="X(3)" name="I2" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_6">
            <blockpin signalname="X(0)" name="I0" />
            <blockpin signalname="XLXN_8" name="I1" />
            <blockpin signalname="Y(0)" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_59">
            <blockpin signalname="X(0)" name="I0" />
            <blockpin signalname="X(2)" name="I1" />
            <blockpin signalname="X(1)" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="xnor2" name="XLXI_60">
            <blockpin signalname="X(3)" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="Y(3)" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="X(3:0)">
            <wire x2="656" y1="976" y2="976" x1="480" />
            <wire x2="656" y1="976" y2="1072" x1="656" />
            <wire x2="656" y1="1072" y2="1120" x1="656" />
            <wire x2="656" y1="1120" y2="1136" x1="656" />
            <wire x2="656" y1="1136" y2="1200" x1="656" />
            <wire x2="656" y1="1200" y2="1264" x1="656" />
        </branch>
        <bustap x2="752" y1="1136" y2="1136" x1="656" />
        <bustap x2="752" y1="1200" y2="1200" x1="656" />
        <bustap x2="752" y1="1264" y2="1264" x1="656" />
        <bustap x2="752" y1="1072" y2="1072" x1="656" />
        <branch name="X(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1072" type="branch" />
            <wire x2="768" y1="1072" y2="1072" x1="752" />
            <wire x2="992" y1="1072" y2="1072" x1="768" />
            <wire x2="992" y1="1072" y2="1584" x1="992" />
            <wire x2="1648" y1="1584" y2="1584" x1="992" />
            <wire x2="992" y1="1584" y2="2016" x1="992" />
            <wire x2="1696" y1="2016" y2="2016" x1="992" />
            <wire x2="1952" y1="1072" y2="1072" x1="992" />
            <wire x2="1952" y1="848" y2="1072" x1="1952" />
            <wire x2="1968" y1="848" y2="848" x1="1952" />
        </branch>
        <branch name="X(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1200" type="branch" />
            <wire x2="768" y1="1200" y2="1200" x1="752" />
            <wire x2="1360" y1="1200" y2="1200" x1="768" />
            <wire x2="1616" y1="1200" y2="1200" x1="1360" />
            <wire x2="1360" y1="1200" y2="1552" x1="1360" />
            <wire x2="1936" y1="1552" y2="1552" x1="1360" />
            <wire x2="1360" y1="1552" y2="1952" x1="1360" />
            <wire x2="1696" y1="1952" y2="1952" x1="1360" />
            <wire x2="1680" y1="784" y2="784" x1="1360" />
            <wire x2="1360" y1="784" y2="1200" x1="1360" />
        </branch>
        <branch name="X(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1264" type="branch" />
            <wire x2="768" y1="1264" y2="1264" x1="752" />
            <wire x2="1312" y1="1264" y2="1264" x1="768" />
            <wire x2="1616" y1="1264" y2="1264" x1="1312" />
            <wire x2="1312" y1="1264" y2="2064" x1="1312" />
            <wire x2="1984" y1="2064" y2="2064" x1="1312" />
            <wire x2="1680" y1="720" y2="720" x1="1312" />
            <wire x2="1312" y1="720" y2="1264" x1="1312" />
        </branch>
        <branch name="X(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="768" y="1136" type="branch" />
            <wire x2="768" y1="1136" y2="1136" x1="752" />
            <wire x2="1408" y1="1136" y2="1136" x1="768" />
            <wire x2="1936" y1="1136" y2="1136" x1="1408" />
            <wire x2="1408" y1="1136" y2="1648" x1="1408" />
            <wire x2="1648" y1="1648" y2="1648" x1="1408" />
            <wire x2="1408" y1="1648" y2="1888" x1="1408" />
            <wire x2="1696" y1="1888" y2="1888" x1="1408" />
            <wire x2="1680" y1="848" y2="848" x1="1408" />
            <wire x2="1408" y1="848" y2="1136" x1="1408" />
        </branch>
        <text style="fontsize:24;fontname:Arial" x="2240" y="632">Y0</text>
        <instance x="1616" y="1328" name="XLXI_27" orien="R0" />
        <instance x="1936" y="1264" name="XLXI_1" orien="R0" />
        <branch name="XLXN_23">
            <wire x2="1920" y1="1232" y2="1232" x1="1872" />
            <wire x2="1936" y1="1200" y2="1200" x1="1920" />
            <wire x2="1920" y1="1200" y2="1232" x1="1920" />
        </branch>
        <rect width="612" x="1636" y="1064" height="308" />
        <text style="fontsize:24;fontname:Arial" x="1864" y="1044">Y1</text>
        <instance x="1936" y="1680" name="XLXI_3" orien="R0" />
        <branch name="XLXN_2">
            <wire x2="1936" y1="1616" y2="1616" x1="1904" />
        </branch>
        <instance x="1648" y="1712" name="XLXI_4" orien="R0" />
        <rect width="624" x="1628" y="1464" height="288" />
        <text style="fontsize:24;fontname:Arial" x="1864" y="1444">Y2</text>
        <instance x="1680" y="912" name="XLXI_19" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1968" y1="784" y2="784" x1="1936" />
        </branch>
        <instance x="1968" y="912" name="XLXI_6" orien="R0" />
        <rect width="676" x="1580" y="652" height="292" />
        <instance x="1696" y="2080" name="XLXI_59" orien="R0" />
        <instance x="1984" y="2128" name="XLXI_60" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="1968" y1="1952" y2="1952" x1="1952" />
            <wire x2="1968" y1="1952" y2="2000" x1="1968" />
            <wire x2="1984" y1="2000" y2="2000" x1="1968" />
        </branch>
        <rect width="632" x="1632" y="1836" height="324" />
        <text style="fontsize:24;fontname:Arial" x="1904" y="1820">Y3</text>
        <bustap x2="2896" y1="1120" y2="1120" x1="2800" />
        <bustap x2="2896" y1="1184" y2="1184" x1="2800" />
        <bustap x2="2896" y1="1248" y2="1248" x1="2800" />
        <bustap x2="2896" y1="1312" y2="1312" x1="2800" />
        <branch name="Y(3:0)">
            <wire x2="2800" y1="1040" y2="1120" x1="2800" />
            <wire x2="2800" y1="1120" y2="1184" x1="2800" />
            <wire x2="2800" y1="1184" y2="1248" x1="2800" />
            <wire x2="2800" y1="1248" y2="1312" x1="2800" />
            <wire x2="2800" y1="1312" y2="1344" x1="2800" />
        </branch>
        <branch name="Y(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1312" type="branch" />
            <wire x2="2976" y1="2032" y2="2032" x1="2240" />
            <wire x2="2912" y1="1312" y2="1312" x1="2896" />
            <wire x2="2976" y1="1312" y2="1312" x1="2912" />
            <wire x2="2976" y1="1312" y2="2032" x1="2976" />
        </branch>
        <branch name="Y(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1248" type="branch" />
            <wire x2="2960" y1="1584" y2="1584" x1="2192" />
            <wire x2="2912" y1="1248" y2="1248" x1="2896" />
            <wire x2="2960" y1="1248" y2="1248" x1="2912" />
            <wire x2="2960" y1="1248" y2="1584" x1="2960" />
        </branch>
        <branch name="Y(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1184" type="branch" />
            <wire x2="2256" y1="1168" y2="1168" x1="2192" />
            <wire x2="2256" y1="1152" y2="1168" x1="2256" />
            <wire x2="2976" y1="1152" y2="1152" x1="2256" />
            <wire x2="2976" y1="1152" y2="1184" x1="2976" />
            <wire x2="2912" y1="1184" y2="1184" x1="2896" />
            <wire x2="2976" y1="1184" y2="1184" x1="2912" />
        </branch>
        <branch name="Y(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2912" y="1120" type="branch" />
            <wire x2="2992" y1="816" y2="816" x1="2224" />
            <wire x2="2992" y1="816" y2="1120" x1="2992" />
            <wire x2="2912" y1="1120" y2="1120" x1="2896" />
            <wire x2="2992" y1="1120" y2="1120" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="480" y="976" name="X(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2800" y="1040" name="Y(3:0)" orien="R0" />
    </sheet>
</drawing>