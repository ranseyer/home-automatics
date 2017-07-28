<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<!--Created by TARGET 3001! Version: 18.9.0.22-->
<!--DateTime: 2017.07.27 19:33:54-->
<eagle version="7.3.0">
	<drawing>
		<settings>
			<setting alwaysvectorfont="no"/>
			<setting verticaltext="up"/>
		</settings>
		<grid distance="0.635" unitdist="mm" unit="mm" style="lines" multiple="2" display="no" altdistance="0.635" altunitdist="mm" altunit="mm"/>
		<layers>
			<layer number="1" name="Top" color="4" fill="1" visible="yes" active="yes"/>
			<layer number="16" name="Bottom" color="1" fill="1" visible="yes" active="yes"/>
			<layer number="17" name="Pads" color="2" fill="1" visible="yes" active="yes"/>
			<layer number="18" name="Vias" color="2" fill="1" visible="yes" active="yes"/>
			<layer number="19" name="Unrouted" color="6" fill="1" visible="yes" active="yes"/>
			<layer number="20" name="Dimension" color="15" fill="1" visible="yes" active="yes"/>
			<layer number="21" name="tPlace" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="yes"/>
			<layer number="23" name="tOrigins" color="15" fill="1" visible="yes" active="yes"/>
			<layer number="24" name="bOrigins" color="15" fill="1" visible="yes" active="yes"/>
			<layer number="25" name="tNames" color="7" fill="1" visible="no" active="yes"/>
			<layer number="26" name="bNames" color="7" fill="1" visible="no" active="yes"/>
			<layer number="27" name="tValues" color="7" fill="1" visible="no" active="yes"/>
			<layer number="28" name="bValues" color="7" fill="1" visible="no" active="yes"/>
			<layer number="29" name="tStop" color="7" fill="3" visible="no" active="yes"/>
			<layer number="30" name="bStop" color="7" fill="6" visible="no" active="yes"/>
			<layer number="31" name="tCream" color="7" fill="4" visible="no" active="yes"/>
			<layer number="32" name="bCream" color="7" fill="5" visible="no" active="yes"/>
			<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="yes"/>
			<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="yes"/>
			<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="yes"/>
			<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="yes"/>
			<layer number="37" name="tTest" color="7" fill="1" visible="no" active="yes"/>
			<layer number="38" name="bTest" color="7" fill="1" visible="no" active="yes"/>
			<layer number="39" name="tKeepout" color="4" fill="11" visible="yes" active="yes"/>
			<layer number="40" name="bKeepout" color="1" fill="11" visible="yes" active="yes"/>
			<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="yes"/>
			<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="yes"/>
			<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="yes"/>
			<layer number="44" name="Drills" color="7" fill="1" visible="no" active="yes"/>
			<layer number="45" name="Holes" color="7" fill="1" visible="no" active="yes"/>
			<layer number="46" name="Milling" color="3" fill="1" visible="no" active="yes"/>
			<layer number="47" name="Measures" color="7" fill="1" visible="no" active="yes"/>
			<layer number="48" name="Document" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="49" name="Reference" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="51" name="tDocu" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="52" name="bDocu" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
			<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
			<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
			<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
			<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
			<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
			<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
		</layers>
		<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
			<libraries>
				<library name="TARGET3001!_V18.9.0.22">
					<packages>
						<package name="DIL14_0">
							<wire x1="0.635" y1="-8.89" x2="-0.635" y2="-8.89" width="0.3" layer="21" curve="180" cap="round"/>
							<wire x1="2.54" y1="-8.89" x2="-2.54" y2="-8.89" width="0.3" layer="21"/>
							<circle x="1.27" y="-7.62" radius="0.5" width="0" layer="21"/>
							<pad name="1" x="3.81" y="-7.62" drill="0.8" shape="square" diameter="1.27" rot="R90"/>
							<pad name="2" x="3.81" y="-5.08" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="3" x="3.81" y="-2.54" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="4" x="3.81" y="0" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="5" x="3.81" y="2.54" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="6" x="3.81" y="5.08" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="7" x="3.81" y="7.62" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="8" x="-3.81" y="7.62" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="9" x="-3.81" y="5.08" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="10" x="-3.81" y="2.54" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="11" x="-3.81" y="0" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="12" x="-3.81" y="-2.54" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="13" x="-3.81" y="-5.08" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="14" x="-3.81" y="-7.62" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<wire x1="2.54" y1="8.89" x2="2.54" y2="-8.89" width="0.3" layer="21"/>
							<wire x1="2.54" y1="8.89" x2="-2.54" y2="8.89" width="0.3" layer="21"/>
							<wire x1="-2.54" y1="8.89" x2="-2.54" y2="-8.89" width="0.3" layer="21"/>
							<text x="-5.461" y="-8.89" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="6.985" y="-8.89" size="2" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="0204_1">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<pad name="2" x="0" y="2.54" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="-1.905" y="0" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="3.81" y="0" size="2" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="0204_STEHEND_2">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="2" x="-2.54" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="-3.36" y="-3.905" size="2" layer="25">&gt;NAME</text>
							<text x="-3.26" y="1.81" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="0204_3">
							<wire x1="0" y1="1.6" x2="0" y2="3.81" width="0.3" layer="21"/>
							<wire x1="0" y1="-3.81" x2="0" y2="-1.6" width="0.3" layer="21"/>
							<pad name="1" x="0" y="-3.81" drill="0.8" shape="octagon" diameter="1.7" rot="R180"/>
							<pad name="2" x="0" y="3.81" drill="0.8" shape="octagon" diameter="1.7" rot="R180"/>
							<wire x1="-0.85" y1="1.6" x2="-0.85" y2="-1.6" width="0.3" layer="21"/>
							<wire x1="-0.85" y1="-1.6" x2="0.85" y2="-1.6" width="0.3" layer="21"/>
							<wire x1="0.85" y1="-1.6" x2="0.85" y2="1.6" width="0.3" layer="21"/>
							<wire x1="0.85" y1="1.6" x2="-0.85" y2="1.6" width="0.3" layer="21"/>
							<text x="-1.702" y="-2.311" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="3.175" y="-2.54" size="2" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="0204_STEHEND_4">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<pad name="2" x="0" y="2.54" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="-1.905" y="0" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="3.81" y="0" size="2" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="0204_5">
							<wire x1="-1.6" y1="0" x2="-3.81" y2="0" width="0.3" layer="21"/>
							<wire x1="3.81" y1="0" x2="1.6" y2="0" width="0.3" layer="21"/>
							<pad name="1" x="3.81" y="0" drill="0.8" shape="octagon" diameter="1.7" rot="R270"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="octagon" diameter="1.7" rot="R270"/>
							<wire x1="-1.6" y1="-0.85" x2="1.6" y2="-0.85" width="0.3" layer="21"/>
							<wire x1="1.6" y1="-0.85" x2="1.6" y2="0.85" width="0.3" layer="21"/>
							<wire x1="1.6" y1="0.85" x2="-1.6" y2="0.85" width="0.3" layer="21"/>
							<wire x1="-1.6" y1="0.85" x2="-1.6" y2="-0.85" width="0.3" layer="21"/>
							<text x="-0.229" y="-3.702" size="2" layer="25">&gt;NAME</text>
							<text x="-1.9" y="1.175" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="0204_6">
							<wire x1="0" y1="-1.6" x2="0" y2="-3.81" width="0.3" layer="21"/>
							<wire x1="0" y1="3.81" x2="0" y2="1.6" width="0.3" layer="21"/>
							<pad name="1" x="0" y="3.81" drill="0.8" shape="octagon" diameter="1.7"/>
							<pad name="2" x="0" y="-3.81" drill="0.8" shape="octagon" diameter="1.7"/>
							<wire x1="0.85" y1="-1.6" x2="0.85" y2="1.6" width="0.3" layer="21"/>
							<wire x1="0.85" y1="1.6" x2="-0.85" y2="1.6" width="0.3" layer="21"/>
							<wire x1="-0.85" y1="1.6" x2="-0.85" y2="-1.6" width="0.3" layer="21"/>
							<wire x1="-0.85" y1="-1.6" x2="0.85" y2="-1.6" width="0.3" layer="21"/>
							<text x="3.702" y="-0.229" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="-1.175" y="-1.9" size="2" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="TRIMMER_70WTD-K-P-C_7">
							<wire x1="4.75" y1="-2.4" x2="4.75" y2="2.4" width="0.3" layer="21"/>
							<wire x1="4.75" y1="2.4" x2="-4.75" y2="2.4" width="0.3" layer="21"/>
							<wire x1="-4.75" y1="2.4" x2="-4.75" y2="-2.4" width="0.3" layer="21"/>
							<wire x1="-4.75" y1="-2.4" x2="4.75" y2="-2.4" width="0.3" layer="21"/>
							<pad name="1" x="2.5" y="1.27" drill="1.3" shape="octagon" diameter="2.3" rot="R180"/>
							<pad name="2" x="-2.5" y="1.27" drill="1.3" shape="octagon" diameter="2.3" rot="R180"/>
							<pad name="3" x="0" y="-1.27" drill="1.3" shape="octagon" diameter="2.3" rot="R180"/>
							<text x="2.54" y="-5.175" size="2" layer="25">&gt;NAME</text>
						</package>
						<package name="0204_STEHEND_8">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R270"/>
							<pad name="2" x="0" y="-2.54" drill="0.8" shape="octagon" diameter="1.8" rot="R270"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="3.905" y="-3.36" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="-1.81" y="-4.44" size="2" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="3X5R2,54_9">
							<wire x1="-1.5" y1="-2.5" x2="1.5" y2="-2.5" width="0.3" layer="21"/>
							<wire x1="1.5" y1="-2.5" x2="1.5" y2="2.5" width="0.3" layer="21"/>
							<wire x1="1.5" y1="2.5" x2="-1.5" y2="2.5" width="0.3" layer="21"/>
							<wire x1="-1.5" y1="2.5" x2="-1.5" y2="-2.5" width="0.3" layer="21"/>
							<text x="-1.905" y="-3.175" size="1.5" layer="25" rot="R90">&gt;NAME</text>
							<pad name="1" x="0" y="-1.27" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
							<pad name="2" x="0" y="1.27" drill="0.8" shape="long" diameter="0.235" rot="R180"/>
						</package>
						<package name="3X5R2,54_10">
							<wire x1="2.5" y1="-1.5" x2="2.5" y2="1.5" width="0.3" layer="21"/>
							<wire x1="2.5" y1="1.5" x2="-2.5" y2="1.5" width="0.3" layer="21"/>
							<wire x1="-2.5" y1="1.5" x2="-2.5" y2="-1.5" width="0.3" layer="21"/>
							<wire x1="-2.5" y1="-1.5" x2="2.5" y2="-1.5" width="0.3" layer="21"/>
							<text x="1.27" y="-3.405" size="1.5" layer="25">&gt;NAME</text>
							<pad name="1" x="1.27" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="2" x="-1.27" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
						</package>
						<package name="DO35_11">
							<wire x1="2.2" y1="-0.95" x2="2.2" y2="0.95" width="0.3" layer="21"/>
							<wire x1="2.2" y1="0.95" x2="-2.2" y2="0.95" width="0.3" layer="21"/>
							<wire x1="-2.2" y1="0.95" x2="-2.2" y2="-0.95" width="0.3" layer="21"/>
							<wire x1="-2.2" y1="-0.95" x2="2.2" y2="-0.95" width="0.3" layer="21"/>
							<pad name="1" x="3.81" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<wire x1="3.81" y1="0" x2="2.2" y2="0" width="0.3" layer="21"/>
							<wire x1="-3.81" y1="0" x2="-2.2" y2="0" width="0.3" layer="21"/>
							<wire x1="-1.39" y1="0.95" x2="-1.39" y2="-0.95" width="0.3" layer="21"/>
							<text x="0.635" y="-3.27" size="2" layer="25">&gt;NAME</text>
							<text x="-3.365" y="1.175" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="3X5R2,54_12">
							<wire x1="-1.5" y1="-2.5" x2="1.5" y2="-2.5" width="0.3" layer="21"/>
							<wire x1="1.5" y1="-2.5" x2="1.5" y2="2.5" width="0.3" layer="21"/>
							<wire x1="1.5" y1="2.5" x2="-1.5" y2="2.5" width="0.3" layer="21"/>
							<wire x1="-1.5" y1="2.5" x2="-1.5" y2="-2.5" width="0.3" layer="21"/>
							<text x="-1.905" y="-3.175" size="1.5" layer="25" rot="R90">&gt;NAME</text>
							<pad name="1" x="0" y="-1.27" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
							<pad name="2" x="0" y="1.27" drill="0.8" shape="octagon" diameter="1.8" rot="R90"/>
						</package>
						<package name="Schraubklemme_5POLx5.08_21">
							<pad name="1" x="0" y="-10.16" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="-10.16" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.905" y1="-10.63625" x2="1.905" y2="-9.68375" layer="21" rot="R90"/>
							<pad name="2" x="0" y="-5.08" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="-5.08" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.99196" y1="-5.666559" x2="1.81804" y2="-4.714059" layer="21" rot="R135"/>
							<pad name="3" x="0" y="0" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="0" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.905" y1="-0.47625" x2="1.905" y2="0.47625" layer="21" rot="R90"/>
							<pad name="4" x="0" y="5.08" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="5.08" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.99196" y1="4.493441" x2="1.81804" y2="5.445941" layer="21" rot="R135"/>
							<pad name="5" x="0" y="10.16" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="10.16" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.905" y1="9.68375" x2="1.905" y2="10.63625" layer="21" rot="R90"/>
							<wire x1="4.5" y1="-13.1" x2="-4.5" y2="-13.1" width="0.3" layer="21"/>
							<wire x1="-4.5" y1="-13.1" x2="-4.5" y2="13.1" width="0.3" layer="21"/>
							<wire x1="-4.5" y1="13.1" x2="4.5" y2="13.1" width="0.3" layer="21"/>
							<wire x1="4.5" y1="13.1" x2="4.5" y2="-13.1" width="0.3" layer="21"/>
							<text x="-5" y="-12.8" size="1.5" layer="25" rot="R90">&gt;NAME</text>
							<text x="6.5" y="-12.8" size="1.5" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="Schraubklemme_5POLx5.08_22">
							<pad name="1" x="0" y="-10.16" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="-10.16" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.905" y1="-10.63625" x2="1.905" y2="-9.68375" layer="21" rot="R90"/>
							<pad name="2" x="0" y="-5.08" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="-5.08" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.99196" y1="-5.666559" x2="1.81804" y2="-4.714059" layer="21" rot="R135"/>
							<pad name="3" x="0" y="0" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="0" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.905" y1="-0.47625" x2="1.905" y2="0.47625" layer="21" rot="R90"/>
							<pad name="4" x="0" y="5.08" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="5.08" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.99196" y1="4.493441" x2="1.81804" y2="5.445941" layer="21" rot="R135"/>
							<pad name="5" x="0" y="10.16" drill="1.2" shape="octagon" diameter="2.5" rot="R90"/>
							<circle x="0" y="10.16" radius="1.905" width="0.3" layer="21"/>
							<rectangle x1="-1.905" y1="9.68375" x2="1.905" y2="10.63625" layer="21" rot="R90"/>
							<wire x1="4.5" y1="-13.1" x2="-4.5" y2="-13.1" width="0.3" layer="21"/>
							<wire x1="-4.5" y1="-13.1" x2="-4.5" y2="13.1" width="0.3" layer="21"/>
							<wire x1="-4.5" y1="13.1" x2="4.5" y2="13.1" width="0.3" layer="21"/>
							<wire x1="4.5" y1="13.1" x2="4.5" y2="-13.1" width="0.3" layer="21"/>
							<text x="-5" y="-12.8" size="1.5" layer="25" rot="R90">&gt;NAME</text>
							<text x="6.5" y="-12.8" size="1.5" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="D4R2,54_ELKO_23">
							<text x="-3.175" y="-2.54" size="1.5" layer="21">+</text>
							<circle x="0" y="0" radius="2" width="0.2" layer="21"/>
							<pad name="1" x="-1.27" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="1.27" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<text x="-2.54" y="2.54" size="1.5" layer="25">&gt;NAME</text>
						</package>
						<package name="D4R2,54_ELKO_25">
							<text x="2.155" y="1.04" size="1.5" layer="21">+</text>
							<circle x="0" y="0" radius="2" width="0.2" layer="21"/>
							<pad name="1" x="1.27" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="2" x="-1.27" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<text x="0.635" y="-4.04" size="1.5" layer="25">&gt;NAME</text>
						</package>
						<package name="D4R2,54_ELKO_26">
							<text x="2.155" y="1.04" size="1.5" layer="21">+</text>
							<circle x="0" y="0" radius="2" width="0.2" layer="21"/>
							<pad name="1" x="1.27" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="2" x="-1.27" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<text x="0.635" y="-4.04" size="1.5" layer="25">&gt;NAME</text>
						</package>
						<package name="3X5R2,54_27">
							<wire x1="-2.5" y1="1.5" x2="-2.5" y2="-1.5" width="0.3" layer="21"/>
							<wire x1="-2.5" y1="-1.5" x2="2.5" y2="-1.5" width="0.3" layer="21"/>
							<wire x1="2.5" y1="-1.5" x2="2.5" y2="1.5" width="0.3" layer="21"/>
							<wire x1="2.5" y1="1.5" x2="-2.5" y2="1.5" width="0.3" layer="21"/>
							<text x="-3.175" y="1.905" size="1.5" layer="25">&gt;NAME</text>
							<pad name="1" x="-1.27" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="1.27" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
						</package>
						<package name="D_RM12,7_DM3_28">
							<wire x1="-3.175" y1="1.5" x2="-3.175" y2="-1.5" width="0.3" layer="21"/>
							<wire x1="-3.175" y1="-1.5" x2="3.175" y2="-1.5" width="0.3" layer="21"/>
							<wire x1="3.175" y1="-1.5" x2="3.175" y2="1.5" width="0.3" layer="21"/>
							<wire x1="3.175" y1="1.5" x2="-3.175" y2="1.5" width="0.3" layer="21"/>
							<pad name="1" x="-6.35" y="0" drill="1" shape="octagon" diameter="2"/>
							<pad name="2" x="6.35" y="0" drill="1" shape="octagon" diameter="2"/>
							<text x="-3.4925" y="-3.33375" size="2" layer="27">&gt;VALUE</text>
							<text x="-3.81" y="1.905" size="2" layer="25">&gt;NAME</text>
							<wire x1="6.35" y1="0" x2="3.25" y2="0" width="0.3" layer="21"/>
							<wire x1="-6.35" y1="0" x2="-3.25" y2="0" width="0.3" layer="21"/>
							<wire x1="1.905" y1="1.5" x2="1.905" y2="-1.5" width="0.3" layer="21"/>
						</package>
						<package name="5X8R5,08_29">
							<wire x1="-2.5" y1="-4" x2="2.5" y2="-4" width="0.3" layer="21"/>
							<wire x1="2.5" y1="-4" x2="2.5" y2="4" width="0.3" layer="21"/>
							<wire x1="2.5" y1="4" x2="-2.5" y2="4" width="0.3" layer="21"/>
							<wire x1="-2.5" y1="4" x2="-2.5" y2="-4" width="0.3" layer="21"/>
							<pad name="1" x="0" y="-2.54" drill="1.4" shape="octagon" diameter="2.4" rot="R90"/>
							<pad name="2" x="0" y="2.54" drill="1.4" shape="octagon" diameter="2.4" rot="R90"/>
							<text x="-3.175" y="-3.175" size="2" layer="25" rot="R90">&gt;NAME</text>
						</package>
						<package name="0204_STEHEND_30">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="2.54" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="0" y="1.905" size="2" layer="25">&gt;NAME</text>
							<text x="0" y="-3.81" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="0204_STEHEND_31">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="2.54" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="0" y="1.905" size="2" layer="25">&gt;NAME</text>
							<text x="0" y="-3.81" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="0204_32">
							<wire x1="0" y1="-1.6" x2="0" y2="-3.81" width="0.3" layer="21"/>
							<wire x1="0" y1="3.81" x2="0" y2="1.6" width="0.3" layer="21"/>
							<pad name="1" x="0" y="3.81" drill="0.8" shape="octagon" diameter="1.7"/>
							<pad name="2" x="0" y="-3.81" drill="0.8" shape="octagon" diameter="1.7"/>
							<wire x1="0.85" y1="-1.6" x2="0.85" y2="1.6" width="0.3" layer="21"/>
							<wire x1="0.85" y1="1.6" x2="-0.85" y2="1.6" width="0.3" layer="21"/>
							<wire x1="-0.85" y1="1.6" x2="-0.85" y2="-1.6" width="0.3" layer="21"/>
							<wire x1="-0.85" y1="-1.6" x2="0.85" y2="-1.6" width="0.3" layer="21"/>
							<text x="3.702" y="-1.409" size="2" layer="25" rot="R90">&gt;NAME</text>
							<text x="-1.175" y="-1.08" size="2" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="0204_STEHEND_33">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="2.54" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="0" y="1.905" size="2" layer="25">&gt;NAME</text>
							<text x="0" y="-3.81" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="0204_STEHEND_34">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="2.54" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="0" y="1.905" size="2" layer="25">&gt;NAME</text>
							<text x="0" y="-3.81" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="0204_STEHEND_35">
							<pad name="1" x="0" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<pad name="2" x="-2.54" y="0" drill="0.8" shape="octagon" diameter="1.8" rot="R180"/>
							<circle x="0" y="0" radius="0.85" width="0.15" layer="21"/>
							<text x="-3.36" y="-3.905" size="2" layer="25">&gt;NAME</text>
							<text x="-3.62" y="1.81" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="0204_36">
							<wire x1="-1.6" y1="0" x2="-3.81" y2="0" width="0.3" layer="21"/>
							<wire x1="3.81" y1="0" x2="1.6" y2="0" width="0.3" layer="21"/>
							<pad name="1" x="3.81" y="0" drill="0.8" shape="octagon" diameter="1.7" rot="R270"/>
							<pad name="2" x="-3.81" y="0" drill="0.8" shape="octagon" diameter="1.7" rot="R270"/>
							<wire x1="-1.6" y1="-0.85" x2="1.6" y2="-0.85" width="0.3" layer="21"/>
							<wire x1="1.6" y1="-0.85" x2="1.6" y2="0.85" width="0.3" layer="21"/>
							<wire x1="1.6" y1="0.85" x2="-1.6" y2="0.85" width="0.3" layer="21"/>
							<wire x1="-1.6" y1="0.85" x2="-1.6" y2="-0.85" width="0.3" layer="21"/>
							<text x="-1.409" y="-3.702" size="2" layer="25">&gt;NAME</text>
							<text x="0.46" y="1.175" size="2" layer="27">&gt;VALUE</text>
						</package>
						<package name="LED_5MM_ROT_37">
							<wire x1="-2.06375" y1="-1.411005" x2="-2.06375" y2="1.411005" width="0.3" layer="21"/>
							<wire x1="-1.499243" y1="-2.620259" x2="-3.095313" y2="-4.69599" width="0.3" layer="21"/>
							<polygon width="0" layer="21">
								<vertex x="-3.892438" y="-5.734259"/>
								<vertex x="-3.006409" y="-3.69655"/>
								<vertex x="-2.150683" y="-4.271446"/>
							</polygon>
							<wire x1="-0.17067" y1="-3.5447" x2="-1.765832" y2="-5.620839" width="0.3" layer="21"/>
							<polygon width="0" layer="21">
								<vertex x="-2.563867" y="-6.658685"/>
								<vertex x="-1.677843" y="-4.620974"/>
								<vertex x="-0.820715" y="-5.255377"/>
							</polygon>
							<pad name="1" x="1.27" y="0" drill="0.8" shape="octagon" diameter="1.5" rot="R180"/>
							<pad name="2" x="-1.27" y="0" drill="0.8" shape="octagon" diameter="1.5" rot="R180"/>
							<text x="0.487" y="-8.274" size="2" layer="25">&gt;NAME</text>
							<text x="-6.56" y="3.08" size="2" layer="27">&gt;VALUE</text>
							<wire x1="-2.06375" y1="-1.411005" x2="-2.06375" y2="1.411005" width="0.3" layer="21" curve="291.278442382812" cap="round"/>
						</package>
						<package name="D4R2,54_ELKO_43">
							<text x="-1.04" y="2.155" size="1.5" layer="21" rot="R90">+</text>
							<circle x="0" y="0" radius="2" width="0.2" layer="21"/>
							<pad name="1" x="0" y="1.27" drill="0.8" shape="octagon" diameter="1.8" rot="R270"/>
							<pad name="2" x="0" y="-1.27" drill="0.8" shape="octagon" diameter="1.8" rot="R270"/>
							<text x="4.04" y="0.635" size="1.5" layer="25" rot="R90">&gt;NAME</text>
						</package>
						<package name="TO92_45">
							<pad name="1" x="0" y="-1.905" drill="0.7" shape="octagon" diameter="1.1" rot="R90"/>
							<pad name="2" x="0" y="0" drill="0.7" shape="octagon" diameter="1.1" rot="R90"/>
							<pad name="3" x="0" y="1.905" drill="0.7" shape="octagon" diameter="1.1" rot="R90"/>
							<wire x1="1.697056" y1="1.697056" x2="1.697056" y2="-1.697056" width="0.3" layer="21" curve="270" cap="round"/>
							<wire x1="1.697056" y1="-1.697056" x2="1.697056" y2="1.697056" width="0.3" layer="21"/>
							<text x="-2.8575" y="-2.54" size="1.5" layer="25" rot="R90">&gt;NAME</text>
							<text x="3.81" y="-2.54" size="1.5" layer="27" rot="R90">&gt;VALUE</text>
						</package>
						<package name="3X5R2,54_52">
							<wire x1="-2.5" y1="1.5" x2="-2.5" y2="-1.5" width="0.3" layer="21"/>
							<wire x1="-2.5" y1="-1.5" x2="2.5" y2="-1.5" width="0.3" layer="21"/>
							<wire x1="2.5" y1="-1.5" x2="2.5" y2="1.5" width="0.3" layer="21"/>
							<wire x1="2.5" y1="1.5" x2="-2.5" y2="1.5" width="0.3" layer="21"/>
							<text x="-3.175" y="1.905" size="1.5" layer="25">&gt;NAME</text>
							<pad name="1" x="-1.27" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
							<pad name="2" x="1.27" y="0" drill="0.8" shape="octagon" diameter="1.8"/>
						</package>
						<package name="StepDown_66">
							<wire x1="0" y1="0" x2="-16.748125" y2="0" width="0.3" layer="22"/>
							<wire x1="-16.748125" y1="0" x2="-16.748125" y2="-22.06625" width="0.3" layer="22"/>
							<wire x1="-16.748125" y1="-22.06625" x2="0" y2="-22.06625" width="0.3" layer="22"/>
							<wire x1="0" y1="-22.06625" x2="0" y2="0" width="0.3" layer="22"/>
							<pad name="1" x="-14.9225" y="-1.74625" drill="0.8" shape="round" diameter="2.159" rot="R270"/>
							<pad name="2" x="-4.445" y="-1.74625" drill="0.8" shape="round" diameter="2.159" rot="R270"/>
							<pad name="3" x="-14.9225" y="-20.32" drill="0.8" shape="round" diameter="2.159" rot="R270"/>
							<pad name="4" x="-4.445" y="-20.32" drill="0.8" shape="round" diameter="2.159" rot="R270"/>
							<wire x1="-14.9225" y1="-1.74625" x2="-12.3825" y2="-1.74625" width="1E-6" layer="22"/>
							<wire x1="-4.445" y1="-1.74625" x2="-1.905" y2="-1.74625" width="1E-6" layer="22"/>
							<wire x1="-14.9225" y1="-20.32" x2="-12.3825" y2="-20.32" width="1E-6" layer="22"/>
							<wire x1="-4.445" y1="-20.32" x2="-1.905" y2="-20.32" width="1E-6" layer="22"/>
						</package>
					</packages>
					<symbols>
						<symbol name="LM239N_0_1">
							<pin name="-" x="7.62" y="-2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="+" x="7.62" y="2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="OUT" x="-7.62" y="0" visible="pad" length="short" direction="out" rot="R0"/>
							<text x="1.06" y="-7.715" size="2" layer="95">&gt;NAME</text>
							<text x="-3.463333" y="5.62" size="2" layer="96">&gt;VALUE</text>
							<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.3" layer="94"/>
							<wire x1="5.08" y1="5.08" x2="-5.08" y2="0" width="0.3" layer="94"/>
							<wire x1="-5.08" y1="0" x2="5.08" y2="-5.08" width="0.3" layer="94"/>
						</symbol>
						<symbol name="LM239N_0_2">
							<pin name="-" x="7.62" y="-2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="+" x="7.62" y="2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="OUT" x="-7.62" y="0" visible="pad" length="short" direction="out" rot="R0"/>
							<text x="1.06" y="-7.715" size="2" layer="95">&gt;NAME</text>
							<text x="-3.463333" y="5.62" size="2" layer="96">&gt;VALUE</text>
							<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.3" layer="94"/>
							<wire x1="5.08" y1="5.08" x2="-5.08" y2="0" width="0.3" layer="94"/>
							<wire x1="-5.08" y1="0" x2="5.08" y2="-5.08" width="0.3" layer="94"/>
						</symbol>
						<symbol name="LM239N_0_3">
							<pin name="-" x="7.62" y="-2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="+" x="7.62" y="2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="OUT" x="-7.62" y="0" visible="pad" length="short" direction="out" rot="R0"/>
							<text x="1.186667" y="-7.715" size="2" layer="95">&gt;NAME</text>
							<text x="-3.463333" y="5.62" size="2" layer="96">&gt;VALUE</text>
							<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.3" layer="94"/>
							<wire x1="5.08" y1="5.08" x2="-5.08" y2="0" width="0.3" layer="94"/>
							<wire x1="-5.08" y1="0" x2="5.08" y2="-5.08" width="0.3" layer="94"/>
						</symbol>
						<symbol name="LM239N_0_4">
							<pin name="-" x="7.62" y="-2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="+" x="7.62" y="2.54" visible="both" length="short" direction="in" rot="R180"/>
							<pin name="OUT" x="-7.62" y="0" visible="pad" length="short" direction="out" rot="R0"/>
							<text x="1.06" y="-7.715" size="2" layer="95">&gt;NAME</text>
							<text x="-0.923333" y="-0.73" size="2" layer="96">&gt;VALUE</text>
							<wire x1="5.08" y1="-5.08" x2="5.08" y2="5.08" width="0.3" layer="94"/>
							<wire x1="5.08" y1="5.08" x2="-5.08" y2="0" width="0.3" layer="94"/>
							<wire x1="-5.08" y1="0" x2="5.08" y2="-5.08" width="0.3" layer="94"/>
						</symbol>
						<symbol name="LM239N_0_5">
							<text x="-0.635" y="7.62" size="2" layer="95">&gt;NAME</text>
							<text x="-0.635" y="-9.525" size="2" layer="96">&gt;VALUE</text>
							<pin name="VCC-" x="0" y="-6.35" visible="both" length="short" direction="pwr" rot="R90"/>
							<pin name="VCC+" x="0" y="6.35" visible="both" length="short" direction="pwr" rot="R270"/>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_1">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-2.54" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.54" y="-3.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_2">
							<pin name="1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
							<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.3" layer="94"/>
							<text x="-1.905" y="-2.54" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="3.81" y="-2.54" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_3">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-2.54" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.54" y="-3.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_4">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-4.445" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="0" y="1.905" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_5">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-3.81" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="1.905" y="1.905" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_6">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-4.445" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="0.635" y="1.905" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="TRIMMER-70UHWTD-K-P-C_47-KOHM_7">
							<wire x1="-0.02" y1="4.445" x2="-2.54" y2="4.445" width="0.3" layer="94"/>
							<wire x1="-2.543" y1="1.27" x2="-2.543" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.543" y1="-1.27" x2="2.537" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.537" y1="-1.27" x2="2.537" y2="1.27" width="0.3" layer="94"/>
							<pin name="A" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="E" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.537" y1="1.27" x2="-2.543" y2="1.27" width="0.3" layer="94"/>
							<text x="0.917" y="-3.81" size="2" layer="95">&gt;NAME</text>
							<text x="-5.293" y="-3.81" size="2" layer="96">&gt;VALUE</text>
							<polygon width="0" layer="94">
								<vertex x="0" y="1.25"/>
								<vertex x="0.624" y="3.75"/>
								<vertex x="-0.626" y="3.75"/>
							</polygon>
							<wire x1="-0.02" y1="3.55" x2="-0.02" y2="4.445" width="0.3" layer="94"/>
							<pin name="S" x="-5.08" y="4.445" visible="pad" length="short" direction="pas" rot="R0"/>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_8">
							<pin name="1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
							<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.3" layer="94"/>
							<text x="-1.905" y="-2.54" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="3.81" y="-2.54" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="222268034478_9">
							<pin name="1" x="-3.81" y="0" visible="pad" length="middle" direction="pas" rot="R0"/>
							<pin name="2" x="3.81" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
							<rectangle x1="-0.952" y1="-1.905" x2="-0.318" y2="1.905" layer="94"/>
							<rectangle x1="0.318" y1="-1.905" x2="0.952" y2="1.905" layer="94"/>
							<text x="-4.128" y="3.175" size="2" layer="95">&gt;NAME</text>
							<text x="1.587" y="3.175" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="B37982-N5104-M_10">
							<pin name="1" x="0" y="-3.81" visible="pad" length="middle" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="3.81" visible="pad" length="middle" direction="pas" rot="R270"/>
							<rectangle x1="-0.317" y1="-2.54" x2="0.317" y2="1.27" layer="94" rot="R90"/>
							<rectangle x1="-0.317" y1="-1.27" x2="0.317" y2="2.54" layer="94" rot="R90"/>
							<text x="4.445" y="-4.763" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="4.445" y="0.317" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="1N4148_11">
							<wire x1="1.27" y1="0" x2="-2.54" y2="0" width="0.3" layer="94"/>
							<pin name="A" x="3.81" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="K" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="1.27" y1="1.905" x2="-2.54" y2="0" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="0" x2="1.27" y2="-1.905" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-1.905" x2="1.27" y2="1.905" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="1.905" width="0.3" layer="94"/>
							<text x="1.555" y="-5.175" size="2" layer="95">&gt;NAME</text>
							<text x="-3.471667" y="3.715" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="222268034229_12">
							<pin name="1" x="-3.81" y="0" visible="pad" length="middle" direction="pas" rot="R0"/>
							<pin name="2" x="3.81" y="0" visible="pad" length="middle" direction="pas" rot="R180"/>
							<rectangle x1="-0.952" y1="-1.905" x2="-0.318" y2="1.905" layer="94"/>
							<rectangle x1="0.318" y1="-1.905" x2="0.952" y2="1.905" layer="94"/>
							<text x="-3.493" y="-5.08" size="2" layer="95">&gt;NAME</text>
							<text x="2.222" y="-5.08" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="+5V_13">
							<text x="6.215" y="-0.75" size="1.5" layer="96">&gt;VALUE</text>
							<pin name="+5V" x="0" y="0" visible="off" length="short" direction="sup" rot="R0"/>
							<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.3" layer="94"/>
							<wire x1="4.445" y1="0" x2="3.175" y2="0" width="0.3" layer="94"/>
							<circle x="3.81" y="0" radius="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="+5V_14">
							<text x="-9.481667" y="-0.75" size="1.5" layer="96">&gt;VALUE</text>
							<pin name="+5V" x="0" y="0" visible="off" length="short" direction="sup" rot="R180"/>
							<wire x1="-3.81" y1="-0.635" x2="-3.81" y2="0.635" width="0.3" layer="94"/>
							<wire x1="-4.445" y1="0" x2="-3.175" y2="0" width="0.3" layer="94"/>
							<circle x="-3.81" y="0" radius="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="GND_15">
							<rectangle x1="0.9525" y1="-0.3175" x2="4.7625" y2="0.3175" layer="94" rot="R90"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R0"/>
						</symbol>
						<symbol name="GND_16">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_17">
							<rectangle x1="0.9525" y1="-0.3175" x2="4.7625" y2="0.3175" layer="94" rot="R90"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R0"/>
						</symbol>
						<symbol name="GND_18">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_19">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_20">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="AKZ350/5-5.08-V-GRÜN_21">
							<wire x1="1.27" y1="6.35" x2="1.27" y2="-8.255" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="-8.255" x2="1.27" y2="-8.255" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="6.35" x2="-1.27" y2="-8.255" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="6.35" x2="1.27" y2="6.35" width="0.3" layer="94"/>
							<text x="5.61" y="8.16" size="2" layer="96">&gt;VALUE</text>
							<pin name="1" x="-3.81" y="-6.35" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="-3.81" y="-3.81" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="3" x="-3.81" y="-1.27" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="4" x="-3.81" y="1.27" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="5" x="-3.81" y="3.81" visible="pad" length="short" direction="pas" rot="R0"/>
							<text x="-0.858333" y="-10.89" size="2" layer="95">&gt;NAME</text>
						</symbol>
						<symbol name="AKZ350/5-5.08-V-GRÜN_22">
							<wire x1="-1.27" y1="-6.35" x2="-1.27" y2="8.255" width="0.3" layer="94"/>
							<wire x1="1.27" y1="8.255" x2="-1.27" y2="8.255" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-6.35" x2="1.27" y2="8.255" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-6.35" x2="-1.27" y2="-6.35" width="0.3" layer="94"/>
							<text x="-28.575" y="-10.795" size="2" layer="96">&gt;VALUE</text>
							<pin name="1" x="3.81" y="6.35" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="3.81" y="3.81" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="3" x="3.81" y="1.27" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="4" x="3.81" y="-1.27" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="5" x="3.81" y="-3.81" visible="pad" length="short" direction="pas" rot="R180"/>
							<text x="-1.905" y="8.89" size="2" layer="95">&gt;NAME</text>
						</symbol>
						<symbol name="489D_25V_1,5µF_23">
							<wire x1="2.8575" y1="-2.54" x2="-2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-2.54" x2="-2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-4.1275" x2="2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-4.1275" x2="2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-5.08" x2="-2.8575" y2="-5.08" width="0.3" layer="94"/>
							<pin name="+" x="0" y="0" visible="pad" length="short" direction="pas" rot="R270"/>
							<pin name="-" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
							<text x="3.27" y="-0.685" size="2" layer="97" rot="R90">+</text>
							<text x="5.175" y="-3.207" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="-3.715" y="-6.140333" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="GND_24">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="489D_25V_1,5µF_25">
							<wire x1="2.8575" y1="-2.54" x2="-2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-2.54" x2="-2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-4.1275" x2="2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-4.1275" x2="2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-5.08" x2="-2.8575" y2="-5.08" width="0.3" layer="94"/>
							<pin name="+" x="0" y="0" visible="pad" length="short" direction="pas" rot="R270"/>
							<pin name="-" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
							<text x="3.27" y="-0.685" size="2" layer="97" rot="R90">+</text>
							<text x="5.175" y="-3.207" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="-3.715" y="-6.140333" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="489D_25V_1,5µF_26">
							<wire x1="2.8575" y1="-2.54" x2="-2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-2.54" x2="-2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-4.1275" x2="2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-4.1275" x2="2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-5.08" x2="-2.8575" y2="-5.08" width="0.3" layer="94"/>
							<pin name="+" x="0" y="0" visible="pad" length="short" direction="pas" rot="R270"/>
							<pin name="-" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
							<text x="3.27" y="-0.685" size="2" layer="97" rot="R90">+</text>
							<text x="5.175" y="-3.207" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="-3.715" y="-6.140333" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="B37982-N5104-M_27">
							<pin name="1" x="0" y="-3.81" visible="pad" length="middle" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="3.81" visible="pad" length="middle" direction="pas" rot="R270"/>
							<rectangle x1="-0.317" y1="-2.54" x2="0.317" y2="1.27" layer="94" rot="R90"/>
							<rectangle x1="-0.317" y1="-1.27" x2="0.317" y2="2.54" layer="94" rot="R90"/>
							<text x="-3.175" y="-4.128" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="5.08" y="-3.493" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="1N4007_28">
							<wire x1="-1.27" y1="0" x2="2.54" y2="0" width="0.3" layer="94"/>
							<pin name="A" x="-3.81" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="K" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-1.27" y1="-1.905" x2="2.54" y2="0" width="0.3" layer="94"/>
							<wire x1="2.54" y1="0" x2="-1.27" y2="1.905" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="1.905" x2="-1.27" y2="-1.905" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.905" x2="2.54" y2="-1.905" width="0.3" layer="94"/>
							<text x="-4.445" y="3.175" size="2" layer="95">&gt;NAME</text>
							<text x="-4.445" y="-5.715" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="L-1MH_29">
							<rectangle x1="-2.54" y1="3.81" x2="2.54" y2="6.35" layer="94" rot="R90"/>
							<pin name="2" x="0" y="10.16" visible="pad" length="short" direction="pas" rot="R270"/>
							<text x="-1.905" y="0" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="3.81" y="0" size="2" layer="96" rot="R90">&gt;VALUE</text>
							<pin name="1" x="0" y="0" visible="pad" length="short" direction="pas" rot="R90"/>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_30">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-2.54" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.54" y="-3.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_31">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-2.54" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.54" y="-3.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_32">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-2.54" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.54" y="-3.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_33">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-2.54" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.54" y="-3.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_34">
							<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<text x="-2.54" y="1.905" size="2" layer="95">&gt;NAME</text>
							<text x="-2.54" y="-3.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_35">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.103333" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_36">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.48" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="LED_ROT_5MM_37">
							<wire x1="1.27" y1="0" x2="-2.54" y2="0" width="0.3" layer="94"/>
							<wire x1="-1.253344" y1="-1.604946" x2="-2.812946" y2="-3.708213" width="0.3" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-3.591824" y="-4.76023"/>
								<vertex x="-2.741501" y="-2.707369"/>
								<vertex x="-1.875867" y="-3.267252"/>
							</polygon>
							<pin name="A" x="3.81" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="K" x="-5.715" y="0" visible="pad" length="middle" direction="pas" rot="R0"/>
							<wire x1="1.27" y1="1.905" x2="-2.54" y2="0" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="0" x2="1.27" y2="-1.905" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-1.905" x2="1.27" y2="1.905" width="0.3" layer="94"/>
							<wire x1="-2.508" y1="-1.905" x2="-2.508" y2="1.905" width="0.3" layer="94"/>
							<wire x1="0.091161" y1="-2.506056" x2="-1.467518" y2="-4.609708" width="0.3" layer="94"/>
							<text x="1.555" y="-7.715" size="2" layer="95">&gt;NAME</text>
							<text x="-3.371667" y="3.715" size="2" layer="96">&gt;VALUE</text>
							<polygon width="0" layer="94">
								<vertex x="-2.247318" y="-5.661342"/>
								<vertex x="-1.396997" y="-3.60848"/>
								<vertex x="-0.528931" y="-4.227822"/>
							</polygon>
						</symbol>
						<symbol name="LED_ROT_5MM_38">
							<wire x1="1.27" y1="0" x2="-2.54" y2="0" width="0.3" layer="94"/>
							<wire x1="-1.253344" y1="-1.604946" x2="-2.812946" y2="-3.708213" width="0.3" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="-3.591824" y="-4.76023"/>
								<vertex x="-2.741501" y="-2.707369"/>
								<vertex x="-1.875867" y="-3.267252"/>
							</polygon>
							<pin name="A" x="3.81" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="K" x="-5.715" y="0" visible="pad" length="middle" direction="pas" rot="R0"/>
							<wire x1="1.27" y1="1.905" x2="-2.54" y2="0" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="0" x2="1.27" y2="-1.905" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-1.905" x2="1.27" y2="1.905" width="0.3" layer="94"/>
							<wire x1="-2.508" y1="-1.905" x2="-2.508" y2="1.905" width="0.3" layer="94"/>
							<wire x1="0.091161" y1="-2.506056" x2="-1.467518" y2="-4.609708" width="0.3" layer="94"/>
							<text x="1.555" y="-7.715" size="2" layer="95">&gt;NAME</text>
							<text x="-0.196667" y="2.445" size="2" layer="96">&gt;VALUE</text>
							<polygon width="0" layer="94">
								<vertex x="-2.247318" y="-5.661342"/>
								<vertex x="-1.396997" y="-3.60848"/>
								<vertex x="-0.528931" y="-4.227822"/>
							</polygon>
						</symbol>
						<symbol name="GND_39">
							<rectangle x1="0.9525" y1="-0.3175" x2="4.7625" y2="0.3175" layer="94" rot="R90"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R0"/>
						</symbol>
						<symbol name="GND_40">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="+5V_41">
							<text x="6.215" y="-0.75" size="1.5" layer="96">&gt;VALUE</text>
							<pin name="+5V" x="0" y="0" visible="off" length="short" direction="sup" rot="R0"/>
							<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.3" layer="94"/>
							<wire x1="4.445" y1="0" x2="3.175" y2="0" width="0.3" layer="94"/>
							<circle x="3.81" y="0" radius="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="+5V_42">
							<text x="-2.04" y="5.6" size="1.5" layer="96">&gt;VALUE</text>
							<pin name="+5V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
							<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.3" layer="94"/>
							<wire x1="0" y1="4.445" x2="0" y2="3.175" width="0.3" layer="94"/>
							<circle x="0" y="3.81" radius="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="489D_25V_1,5µF_43">
							<wire x1="2.8575" y1="-2.54" x2="-2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-2.54" x2="-2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="-2.8575" y1="-4.1275" x2="2.8575" y2="-4.1275" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-4.1275" x2="2.8575" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="2.8575" y1="-5.08" x2="-2.8575" y2="-5.08" width="0.3" layer="94"/>
							<pin name="+" x="0" y="0" visible="pad" length="short" direction="pas" rot="R270"/>
							<pin name="-" x="0" y="-7.62" visible="pad" length="short" direction="pas" rot="R90"/>
							<text x="3.27" y="-0.685" size="2" layer="97" rot="R90">+</text>
							<text x="5.175" y="-3.207" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="-3.715" y="-6.140333" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="GND_44">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="BC547_45">
							<wire x1="3.81" y1="0.635" x2="5.715" y2="2.54" width="0.3" layer="94"/>
							<wire x1="3.81" y1="-0.635" x2="5.715" y2="-2.54" width="0.3" layer="94"/>
							<rectangle x1="3.528744" y1="-1.905" x2="4.028744" y2="1.905" layer="94"/>
							<polygon width="0" layer="94">
								<vertex x="5.411464" y="-2.21309"/>
								<vertex x="5.411464" y="-0.94309"/>
								<vertex x="4.141464" y="-2.21309"/>
							</polygon>
							<pin name="B" x="0" y="0" visible="pad" length="middle" direction="pas" rot="R0"/>
							<pin name="E" x="5.715" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
							<pin name="C" x="5.715" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
							<text x="7.317" y="-3.718" size="2" layer="96">&gt;VALUE</text>
							<text x="7.317" y="1.87" size="2" layer="95">&gt;NAME</text>
						</symbol>
						<symbol name="+5V_46">
							<text x="1.77" y="4.33" size="1.5" layer="96">&gt;VALUE</text>
							<pin name="+5V" x="0" y="0" visible="off" length="short" direction="sup" rot="R90"/>
							<wire x1="-0.635" y1="3.81" x2="0.635" y2="3.81" width="0.3" layer="94"/>
							<wire x1="0" y1="4.445" x2="0" y2="3.175" width="0.3" layer="94"/>
							<circle x="0" y="3.81" radius="1.27" width="0.3" layer="94"/>
						</symbol>
						<symbol name="GND_47">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_48">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_49">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_50">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_51">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="B37982-N5104-M_52">
							<pin name="1" x="0" y="-3.81" visible="pad" length="middle" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="3.81" visible="pad" length="middle" direction="pas" rot="R270"/>
							<rectangle x1="-0.317" y1="-2.54" x2="0.317" y2="1.27" layer="94" rot="R90"/>
							<rectangle x1="-0.317" y1="-1.27" x2="0.317" y2="2.54" layer="94" rot="R90"/>
							<text x="-3.175" y="-4.128" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="5.08" y="-3.493" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="GND_53">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_54">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_55">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_56">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_57">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_58">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_59">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_60">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_61">
							<pin name="1" x="5.08" y="0" visible="pad" length="short" direction="pas" rot="R180"/>
							<pin name="2" x="-5.08" y="0" visible="pad" length="short" direction="pas" rot="R0"/>
							<wire x1="2.54" y1="-1.27" x2="2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="2.54" y1="1.27" x2="-2.54" y2="1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="1.27" x2="-2.54" y2="-1.27" width="0.3" layer="94"/>
							<wire x1="-2.54" y1="-1.27" x2="2.54" y2="-1.27" width="0.3" layer="94"/>
							<text x="-1.606667" y="-3.905" size="2" layer="95">&gt;NAME</text>
							<text x="-1.23" y="1.81" size="2" layer="96">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_62">
							<pin name="1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
							<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.3" layer="94"/>
							<text x="-1.905" y="-2.54" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="3.81" y="-2.54" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="R_KOHLE_10K_0204_63">
							<pin name="1" x="0" y="-5.08" visible="pad" length="short" direction="pas" rot="R90"/>
							<pin name="2" x="0" y="5.08" visible="pad" length="short" direction="pas" rot="R270"/>
							<wire x1="-1.27" y1="-2.54" x2="1.27" y2="-2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="-2.54" x2="1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="1.27" y1="2.54" x2="-1.27" y2="2.54" width="0.3" layer="94"/>
							<wire x1="-1.27" y1="2.54" x2="-1.27" y2="-2.54" width="0.3" layer="94"/>
							<text x="-1.905" y="-2.54" size="2" layer="95" rot="R90">&gt;NAME</text>
							<text x="3.81" y="-2.54" size="2" layer="96" rot="R90">&gt;VALUE</text>
						</symbol>
						<symbol name="GND_64">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="GND_65">
							<rectangle x1="-1.905" y1="-3.175" x2="1.905" y2="-2.54" layer="94"/>
							<pin name="GND" x="0" y="0" visible="off" length="short" direction="sup" rot="R270"/>
						</symbol>
						<symbol name="StepDown_66">
							<pin name="Pin1" x="-8.89" y="-3.81" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="Pin2" x="-8.89" y="3.81" visible="both" length="short" direction="pas" rot="R0"/>
							<pin name="Pin3" x="8.89" y="-3.81" visible="both" length="short" direction="pas" rot="R180"/>
							<pin name="Pin4" x="8.89" y="3.81" visible="both" length="short" direction="pas" rot="R180"/>
							<wire x1="-6.35" y1="6.35" x2="-6.35" y2="-6.35" width="0.3" layer="94"/>
							<wire x1="-6.35" y1="6.35" x2="6.35" y2="6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="6.35" x2="6.35" y2="-6.35" width="0.3" layer="94"/>
							<wire x1="6.35" y1="-6.35" x2="-6.35" y2="-6.35" width="0.3" layer="94"/>
						</symbol>
					</symbols>
					<devicesets>
						<deviceset name="LM239N_0" prefix="X">
							<description/>
							<gates>
								<gate name="a" symbol="LM239N_0_1" x="-18.415" y="-30.48" swaplevel="1"/>
								<gate name="b" symbol="LM239N_0_2" x="1.27" y="29.21" swaplevel="1"/>
								<gate name="c" symbol="LM239N_0_3" x="62.865" y="-88.9" swaplevel="1"/>
								<gate name="d" symbol="LM239N_0_4" x="0.635" y="66.04" swaplevel="1"/>
								<gate name="p" symbol="LM239N_0_5" x="23.495" y="-90.17"/>
							</gates>
							<devices>
								<device name="" package="DIL14_0">
									<connects>
										<connect gate="a" pin="-" pad="4"/>
										<connect gate="a" pin="+" pad="5"/>
										<connect gate="a" pin="OUT" pad="2"/>
										<connect gate="b" pin="-" pad="6"/>
										<connect gate="b" pin="+" pad="7"/>
										<connect gate="b" pin="OUT" pad="1"/>
										<connect gate="c" pin="-" pad="8"/>
										<connect gate="c" pin="+" pad="9"/>
										<connect gate="c" pin="OUT" pad="14"/>
										<connect gate="d" pin="-" pad="10"/>
										<connect gate="d" pin="+" pad="11"/>
										<connect gate="d" pin="OUT" pad="13"/>
										<connect gate="p" pin="VCC-" pad="12"/>
										<connect gate="p" pin="VCC+" pad="3"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_1" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_1" x="-22.86" y="66.04"/>
							</gates>
							<devices>
								<device name="" package="0204_1">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_2" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_2" x="11.43" y="8.89"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_2">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_3" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_3" x="1.27" y="16.51"/>
							</gates>
							<devices>
								<device name="" package="0204_3">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_4" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_4" x="1.27" y="76.2"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_4">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_5" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_5" x="25.4" y="76.2"/>
							</gates>
							<devices>
								<device name="" package="0204_5">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_6" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_6" x="25.4" y="68.58"/>
							</gates>
							<devices>
								<device name="" package="0204_6">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="TRIMMER-70UHWTD-K-P-C_47-KOHM_7" prefix="R">
							<description>Cermet-Trimmer, 70 WTD-K-P-C, Trimmpotentiometer            , 70UHWTD-K-P-C [47KOHM]</description>
							<gates>
								<gate name="G$1" symbol="TRIMMER-70UHWTD-K-P-C_47-KOHM_7" x="1.27" y="49.53"/>
							</gates>
							<devices>
								<device name="" package="TRIMMER_70WTD-K-P-C_7">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="E" pad="3"/>
										<connect gate="G$1" pin="S" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_8" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_8" x="20.32" y="13.97"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_8">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="222268034478_9" prefix="C">
							<description>Keramischer Rechteckkondensator</description>
							<gates>
								<gate name="G$1" symbol="222268034478_9" x="1.27" y="83.82"/>
							</gates>
							<devices>
								<device name="" package="3X5R2,54_9">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="B37982-N5104-M_10" prefix="C">
							<description>Bedrahtete Keramikkondensatoren, X7R/Z5U/Y5U, Kondensator  50V             , B37982-N5104-M [100NF]</description>
							<gates>
								<gate name="G$1" symbol="B37982-N5104-M_10" x="29.845" y="13.97"/>
							</gates>
							<devices>
								<device name="" package="3X5R2,54_10">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="1N4148_11" prefix="D">
							<description>Universal-Diode  75V, 200mA, trr:4ns</description>
							<gates>
								<gate name="G$1" symbol="1N4148_11" x="43.815" y="31.75"/>
							</gates>
							<devices>
								<device name="" package="DO35_11">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="K" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="222268034229_12" prefix="C">
							<description>Keramischer Rechteckkondensator</description>
							<gates>
								<gate name="G$1" symbol="222268034229_12" x="25.4" y="63.5"/>
							</gates>
							<devices>
								<device name="" package="3X5R2,54_12">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="+5V_13" prefix="Ref">
							<description>Referenz +5V</description>
							<gates>
								<gate name="G$1" symbol="+5V_13" x="36.83" y="68.58"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="+5V_14" prefix="Ref">
							<description>Referenz +5V</description>
							<gates>
								<gate name="G$1" symbol="+5V_14" x="-31.75" y="66.04"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_15" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_15" x="34.29" y="63.5"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_16" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_16" x="11.43" y="0.635"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_17" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_17" x="33.655" y="76.2"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_18" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_18" x="20.32" y="0.635"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_19" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_19" x="29.845" y="0.635"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_20" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_20" x="54.61" y="0.635"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="AKZ350/5-5.08-V-GRÜN_21" prefix="K">
							<description>Schraubklemme 5-polig RM5,08</description>
							<gates>
								<gate name="G$1" symbol="AKZ350/5-5.08-V-GRÜN_21" x="99.695" y="27.94"/>
							</gates>
							<devices>
								<device name="" package="Schraubklemme_5POLx5.08_21">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="AKZ350/5-5.08-V-GRÜN_22" prefix="K">
							<description>Schraubklemme 5-polig RM5,08</description>
							<gates>
								<gate name="G$1" symbol="AKZ350/5-5.08-V-GRÜN_22" x="-78.105" y="-34.29"/>
							</gates>
							<devices>
								<device name="" package="Schraubklemme_5POLx5.08_22">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="3" pad="3"/>
										<connect gate="G$1" pin="4" pad="4"/>
										<connect gate="G$1" pin="5" pad="5"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="489D_25V_1,5µF_23" prefix="C">
							<description>Tantalkondensatoren tropfenförmig, 489 D, Tantal-Elko 1,5uF  25V       , 489D155X0025B1V [1,5UF]</description>
							<gates>
								<gate name="G$1" symbol="489D_25V_1,5µF_23" x="-19.05" y="17.145"/>
							</gates>
							<devices>
								<device name="" package="D4R2,54_ELKO_23">
									<connects>
										<connect gate="G$1" pin="+" pad="1"/>
										<connect gate="G$1" pin="-" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_24" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_24" x="-19.05" y="0.635"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="489D_25V_1,5µF_25" prefix="C">
							<description>Tantalkondensatoren tropfenförmig, 489 D, Tantal-Elko 1,5uF  25V       , 489D155X0025B1V [1,5UF]</description>
							<gates>
								<gate name="G$1" symbol="489D_25V_1,5µF_25" x="-42.545" y="-88.9"/>
							</gates>
							<devices>
								<device name="" package="D4R2,54_ELKO_25">
									<connects>
										<connect gate="G$1" pin="+" pad="1"/>
										<connect gate="G$1" pin="-" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="489D_25V_1,5µF_26" prefix="C">
							<description>Tantalkondensatoren tropfenförmig, 489 D, Tantal-Elko 1,5uF  25V       , 489D155X0025B1V [1,5UF]</description>
							<gates>
								<gate name="G$1" symbol="489D_25V_1,5µF_26" x="3.175" y="-88.9"/>
							</gates>
							<devices>
								<device name="" package="D4R2,54_ELKO_26">
									<connects>
										<connect gate="G$1" pin="+" pad="1"/>
										<connect gate="G$1" pin="-" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="B37982-N5104-M_27" prefix="C">
							<description>Bedrahtete Keramikkondensatoren, X7R/Z5U/Y5U, Kondensator  50V             , B37982-N5104-M [100NF]</description>
							<gates>
								<gate name="G$1" symbol="B37982-N5104-M_27" x="12.065" y="-92.71"/>
							</gates>
							<devices>
								<device name="" package="3X5R2,54_27">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="1N4007_28" prefix="D">
							<description>Universal-Diode 1000V, 1A</description>
							<gates>
								<gate name="G$1" symbol="1N4007_28" x="-51.435" y="-82.55"/>
							</gates>
							<devices>
								<device name="" package="D_RM12,7_DM3_28">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="K" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="L-1MH_29" prefix="L">
							<description>DROSSEL 1MH Miniatur-Festinduktivitäten Anwendung: Entkopplung, Entzerrung bzw. Entstörung im HF/NF-Bereich und in selektiven Schaltungen. Ferritkern im Kunststoffgehäuse, radiale Anschlussdrähte im Raster 5 mm. Toleranz: ±5%. Zulässige Verlustleistung bei 40 °C/240 mW. Abm. 7,5 x 10,5 x 4,8 mm. Wert 1 mH ; Q bei 65 ; f MHz 0,6 ; R Ohm 14 ; I mA 130 ; F&lt;sub&gt;res&lt;/sub&gt; MHz 1,</description>
							<gates>
								<gate name="G$1" symbol="L-1MH_29" x="54.61" y="17.78"/>
							</gates>
							<devices>
								<device name="" package="5X8R5,08_29">
									<connects>
										<connect gate="G$1" pin="2" pad="2"/>
										<connect gate="G$1" pin="1" pad="1"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_30" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_30" x="10.16" y="-19.05"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_30">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_31" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_31" x="10.16" y="-27.94"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_31">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_32" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_32" x="10.16" y="-45.72"/>
							</gates>
							<devices>
								<device name="" package="0204_32">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_33" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_33" x="55.245" y="-27.94"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_33">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_34" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_34" x="55.245" y="-36.83"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_34">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_35" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_35" x="-35.56" y="-20.32"/>
							</gates>
							<devices>
								<device name="" package="0204_STEHEND_35">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_36" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_36" x="-48.26" y="-20.32"/>
							</gates>
							<devices>
								<device name="" package="0204_36">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="LED_ROT_5MM_37" prefix="D">
							<description>Leuchtdiode 5mm, Rot</description>
							<gates>
								<gate name="G$1" symbol="LED_ROT_5MM_37" x="-59.69" y="-20.32"/>
							</gates>
							<devices>
								<device name="" package="LED_5MM_ROT_37">
									<connects>
										<connect gate="G$1" pin="A" pad="1"/>
										<connect gate="G$1" pin="K" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="LED_ROT_5MM_38" prefix="D">
							<description>Leuchtdiode 5mm, Rot</description>
							<gates>
								<gate name="G$1" symbol="LED_ROT_5MM_38" x="111.125" y="26.67"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_39" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_39" x="19.05" y="-27.94"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_40" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_40" x="26.67" y="-53.975"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="+5V_41" prefix="Ref">
							<description>Referenz +5V</description>
							<gates>
								<gate name="G$1" symbol="+5V_41" x="19.05" y="-19.05"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="+5V_42" prefix="Ref">
							<description>Referenz +5V</description>
							<gates>
								<gate name="G$1" symbol="+5V_42" x="-41.91" y="-15.24"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="489D_25V_1,5µF_43" prefix="C">
							<description>Tantalkondensatoren tropfenförmig, 489 D, Tantal-Elko 1,5uF  25V       , 489D155X0025B1V [1,5UF]</description>
							<gates>
								<gate name="G$1" symbol="489D_25V_1,5µF_43" x="-41.91" y="-34.29"/>
							</gates>
							<devices>
								<device name="" package="D4R2,54_ELKO_43">
									<connects>
										<connect gate="G$1" pin="+" pad="1"/>
										<connect gate="G$1" pin="-" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_44" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_44" x="-41.91" y="-46.99"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="BC547_45" prefix="T">
							<description>Bipolar-Standard-Leistungstransistor  UCE:45V, ICE:0,2A, max800</description>
							<gates>
								<gate name="G$1" symbol="BC547_45" x="20.955" y="-45.72"/>
							</gates>
							<devices>
								<device name="" package="TO92_45">
									<connects>
										<connect gate="G$1" pin="B" pad="2"/>
										<connect gate="G$1" pin="E" pad="3"/>
										<connect gate="G$1" pin="C" pad="1"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="+5V_46" prefix="Ref">
							<description>Referenz +5V</description>
							<gates>
								<gate name="G$1" symbol="+5V_46" x="12.065" y="-80.01"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_47" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_47" x="-42.545" y="-101.6"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_48" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_48" x="-20.32" y="-101.6"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_49" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_49" x="3.175" y="-101.6"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_50" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_50" x="12.065" y="-101.6"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_51" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_51" x="23.495" y="-101.6"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="B37982-N5104-M_52" prefix="C">
							<description>Bedrahtete Keramikkondensatoren, X7R/Z5U/Y5U, Kondensator  50V             , B37982-N5104-M [100NF]</description>
							<gates>
								<gate name="G$1" symbol="B37982-N5104-M_52" x="28.575" y="-90.17"/>
							</gates>
							<devices>
								<device name="" package="3X5R2,54_52">
									<connects>
										<connect gate="G$1" pin="1" pad="1"/>
										<connect gate="G$1" pin="2" pad="2"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_53" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_53" x="-55.245" y="-40.64"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_54" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_54" x="135.255" y="11.43"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_55" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_55" x="147.955" y="11.43"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_56" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_56" x="160.655" y="11.43"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_57" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_57" x="173.355" y="11.43"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_58" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_58" x="135.255" y="26.67"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_59" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_59" x="147.955" y="26.67"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_60" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_60" x="160.655" y="26.67"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_61" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_61" x="173.355" y="26.67"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_62" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_62" x="119.38" y="19.05"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="R_KOHLE_10K_0204_63" prefix="R">
							<description>Kohleschichtwiderstand 10K-Ohm, 0,1W, 5%</description>
							<gates>
								<gate name="G$1" symbol="R_KOHLE_10K_0204_63" x="125.73" y="19.05"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_64" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_64" x="74.93" y="-101.6"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="GND_65" prefix="Ref">
							<description>Referenz GND</description>
							<gates>
								<gate name="G$1" symbol="GND_65" x="52.07" y="-101.6"/>
							</gates>
							<devices>
								<device name="">
									<connects/>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
						<deviceset name="StepDown_66" prefix="IC">
							<description/>
							<gates>
								<gate name="G$1" symbol="StepDown_66" x="-20.32" y="-86.36"/>
							</gates>
							<devices>
								<device name="" package="StepDown_66">
									<connects>
										<connect gate="G$1" pin="Pin1" pad="1"/>
										<connect gate="G$1" pin="Pin2" pad="2"/>
										<connect gate="G$1" pin="Pin3" pad="3"/>
										<connect gate="G$1" pin="Pin4" pad="4"/>
									</connects>
									<technologies>
										<technology name=""/>
									</technologies>
								</device>
							</devices>
						</deviceset>
					</devicesets>
				</library>
			</libraries>
			<attributes/>
			<variantdefs/>
			<classes>
				<class number="0" name="default" width="0" drill="0"/>
			</classes>
			<parts>
				<part name="X1" library="TARGET3001!_V18.9.0.22" deviceset="LM239N_0" device="" value="LM239N"/>
				<part name="R4" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_1" device="" value="4k7"/>
				<part name="R18" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_2" device="" value="10k"/>
				<part name="R12" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_3" device="" value="47k"/>
				<part name="R1" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_4" device="" value="100k"/>
				<part name="R2" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_5" device="" value="100k"/>
				<part name="R3" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_6" device="" value="100k"/>
				<part name="R5" library="TARGET3001!_V18.9.0.22" deviceset="TRIMMER-70UHWTD-K-P-C_47-KOHM_7" device="" value="47K"/>
				<part name="R13" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_8" device="" value="100k"/>
				<part name="C1" library="TARGET3001!_V18.9.0.22" deviceset="222268034478_9" device="" value="5pF"/>
				<part name="C4" library="TARGET3001!_V18.9.0.22" deviceset="B37982-N5104-M_10" device="" value="100nF"/>
				<part name="D3" library="TARGET3001!_V18.9.0.22" deviceset="1N4148_11" device="" value="1N4148"/>
				<part name="C2" library="TARGET3001!_V18.9.0.22" deviceset="222268034229_12" device="" value="22pF"/>
				<part name="Ref16" library="TARGET3001!_V18.9.0.22" deviceset="+5V_13" device="" value="+5V"/>
				<part name="Ref17" library="TARGET3001!_V18.9.0.22" deviceset="+5V_14" device="" value="+5V"/>
				<part name="Ref15" library="TARGET3001!_V18.9.0.22" deviceset="GND_15" device="" value="GND"/>
				<part name="Ref13" library="TARGET3001!_V18.9.0.22" deviceset="GND_16" device="" value="GND"/>
				<part name="Ref14" library="TARGET3001!_V18.9.0.22" deviceset="GND_17" device="" value="GND"/>
				<part name="Ref18" library="TARGET3001!_V18.9.0.22" deviceset="GND_18" device="" value="GND"/>
				<part name="Ref22" library="TARGET3001!_V18.9.0.22" deviceset="GND_19" device="" value="GND"/>
				<part name="Ref23" library="TARGET3001!_V18.9.0.22" deviceset="GND_20" device="" value="GND"/>
				<part name="K2" library="TARGET3001!_V18.9.0.22" deviceset="AKZ350/5-5.08-V-GRÜN_21" device="" value="AKZ350/5-5.08-V-GRÜN"/>
				<part name="K1" library="TARGET3001!_V18.9.0.22" deviceset="AKZ350/5-5.08-V-GRÜN_22" device="" value="AKZ350/5-5.08-V-GRÜN"/>
				<part name="C3" library="TARGET3001!_V18.9.0.22" deviceset="489D_25V_1,5µF_23" device="" value="1,5µF"/>
				<part name="Ref21" library="TARGET3001!_V18.9.0.22" deviceset="GND_24" device="" value="GND"/>
				<part name="C6" library="TARGET3001!_V18.9.0.22" deviceset="489D_25V_1,5µF_25" device="" value="1,5µF"/>
				<part name="C7" library="TARGET3001!_V18.9.0.22" deviceset="489D_25V_1,5µF_26" device="" value="1,5µF"/>
				<part name="C9" library="TARGET3001!_V18.9.0.22" deviceset="B37982-N5104-M_27" device="" value="100nF"/>
				<part name="D4" library="TARGET3001!_V18.9.0.22" deviceset="1N4007_28" device="" value="1N4007"/>
				<part name="L1" library="TARGET3001!_V18.9.0.22" deviceset="L-1MH_29" device="" value="1mH"/>
				<part name="R19" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_30" device="" value="4k7"/>
				<part name="R22" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_31" device="" value="2k7"/>
				<part name="R25" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_32" device="" value="4k7"/>
				<part name="R23" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_33" device="" value="270"/>
				<part name="R24" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_34" device="" value="100"/>
				<part name="R21" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_35" device="" value="4k7"/>
				<part name="R20" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_36" device="" value="1k"/>
				<part name="D1" library="TARGET3001!_V18.9.0.22" deviceset="LED_ROT_5MM_37" device="" value="LED gelb"/>
				<part name="D2" library="TARGET3001!_V18.9.0.22" deviceset="LED_ROT_5MM_38" device="" value="LED rot"/>
				<part name="Ref19" library="TARGET3001!_V18.9.0.22" deviceset="GND_39" device="" value="GND"/>
				<part name="Ref20" library="TARGET3001!_V18.9.0.22" deviceset="GND_40" device="" value="GND"/>
				<part name="Ref12" library="TARGET3001!_V18.9.0.22" deviceset="+5V_41" device="" value="+5V"/>
				<part name="Ref4" library="TARGET3001!_V18.9.0.22" deviceset="+5V_42" device="" value="+5V"/>
				<part name="C5" library="TARGET3001!_V18.9.0.22" deviceset="489D_25V_1,5µF_43" device="" value="1,5µF"/>
				<part name="Ref5" library="TARGET3001!_V18.9.0.22" deviceset="GND_44" device="" value="GND"/>
				<part name="T2" library="TARGET3001!_V18.9.0.22" deviceset="BC547_45" device="" value="BC547"/>
				<part name="Ref3" library="TARGET3001!_V18.9.0.22" deviceset="+5V_46" device="" value="+5V"/>
				<part name="Ref1" library="TARGET3001!_V18.9.0.22" deviceset="GND_47" device="" value="GND"/>
				<part name="Ref2" library="TARGET3001!_V18.9.0.22" deviceset="GND_48" device="" value="GND"/>
				<part name="Ref6" library="TARGET3001!_V18.9.0.22" deviceset="GND_49" device="" value="GND"/>
				<part name="Ref10" library="TARGET3001!_V18.9.0.22" deviceset="GND_50" device="" value="GND"/>
				<part name="Ref11" library="TARGET3001!_V18.9.0.22" deviceset="GND_51" device="" value="GND"/>
				<part name="C8" library="TARGET3001!_V18.9.0.22" deviceset="B37982-N5104-M_52" device="" value="100nF"/>
				<part name="Ref9" library="TARGET3001!_V18.9.0.22" deviceset="GND_53" device="" value="GND"/>
				<part name="R14" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_54" device="" value="100"/>
				<part name="R15" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_55" device="" value="100"/>
				<part name="R16" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_56" device="" value="100"/>
				<part name="R17" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_57" device="" value="100"/>
				<part name="R6" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_58" device="" value="100"/>
				<part name="R7" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_59" device="" value="100"/>
				<part name="R8" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_60" device="" value="100"/>
				<part name="R9" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_61" device="" value="100"/>
				<part name="R10" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_62" device="" value="6k8"/>
				<part name="R11" library="TARGET3001!_V18.9.0.22" deviceset="R_KOHLE_10K_0204_63" device="" value="6k8"/>
				<part name="Ref7" library="TARGET3001!_V18.9.0.22" deviceset="GND_64" device="" value="GND"/>
				<part name="Ref8" library="TARGET3001!_V18.9.0.22" deviceset="GND_65" device="" value="GND"/>
				<part name="IC1" library="TARGET3001!_V18.9.0.22" deviceset="StepDown_66" device="" value="StepDown"/>
			</parts>
			<sheets>
				<sheet>
					<description>&lt;unbenannt&gt;</description>
					<plain/>
					<instances>
						<instance part="X1" gate="a" x="-18.415" y="-30.48"/>
						<instance part="X1" gate="b" x="1.27" y="29.21"/>
						<instance part="X1" gate="c" x="62.865" y="-88.9"/>
						<instance part="X1" gate="d" x="0.635" y="66.04"/>
						<instance part="X1" gate="p" x="23.495" y="-90.17"/>
						<instance part="R4" gate="G$1" x="-22.86" y="66.04"/>
						<instance part="R18" gate="G$1" x="11.43" y="8.89"/>
						<instance part="R12" gate="G$1" x="1.27" y="16.51"/>
						<instance part="R1" gate="G$1" x="1.27" y="76.2"/>
						<instance part="R2" gate="G$1" x="25.4" y="76.2"/>
						<instance part="R3" gate="G$1" x="25.4" y="68.58"/>
						<instance part="R5" gate="G$1" x="1.27" y="49.53"/>
						<instance part="R13" gate="G$1" x="20.32" y="13.97"/>
						<instance part="C1" gate="G$1" x="1.27" y="83.82"/>
						<instance part="C4" gate="G$1" x="29.845" y="13.97"/>
						<instance part="D3" gate="G$1" x="43.815" y="31.75"/>
						<instance part="C2" gate="G$1" x="25.4" y="63.5"/>
						<instance part="Ref16" gate="G$1" x="36.83" y="68.58"/>
						<instance part="Ref17" gate="G$1" x="-31.75" y="66.04"/>
						<instance part="Ref15" gate="G$1" x="34.29" y="63.5"/>
						<instance part="Ref13" gate="G$1" x="11.43" y="0.635"/>
						<instance part="Ref14" gate="G$1" x="33.655" y="76.2"/>
						<instance part="Ref18" gate="G$1" x="20.32" y="0.635"/>
						<instance part="Ref22" gate="G$1" x="29.845" y="0.635"/>
						<instance part="Ref23" gate="G$1" x="54.61" y="0.635"/>
						<instance part="K2" gate="G$1" x="99.695" y="27.94"/>
						<instance part="K1" gate="G$1" x="-78.105" y="-34.29"/>
						<instance part="C3" gate="G$1" x="-19.05" y="17.145"/>
						<instance part="Ref21" gate="G$1" x="-19.05" y="0.635"/>
						<instance part="C6" gate="G$1" x="-42.545" y="-88.9"/>
						<instance part="C7" gate="G$1" x="3.175" y="-88.9"/>
						<instance part="C9" gate="G$1" x="12.065" y="-92.71"/>
						<instance part="D4" gate="G$1" x="-51.435" y="-82.55"/>
						<instance part="L1" gate="G$1" x="54.61" y="17.78"/>
						<instance part="R19" gate="G$1" x="10.16" y="-19.05"/>
						<instance part="R22" gate="G$1" x="10.16" y="-27.94"/>
						<instance part="R25" gate="G$1" x="10.16" y="-45.72"/>
						<instance part="R23" gate="G$1" x="55.245" y="-27.94"/>
						<instance part="R24" gate="G$1" x="55.245" y="-36.83"/>
						<instance part="R21" gate="G$1" x="-35.56" y="-20.32"/>
						<instance part="R20" gate="G$1" x="-48.26" y="-20.32"/>
						<instance part="D1" gate="G$1" x="-59.69" y="-20.32"/>
						<instance part="D2" gate="G$1" x="111.125" y="26.67"/>
						<instance part="Ref19" gate="G$1" x="19.05" y="-27.94"/>
						<instance part="Ref20" gate="G$1" x="26.67" y="-53.975"/>
						<instance part="Ref12" gate="G$1" x="19.05" y="-19.05"/>
						<instance part="Ref4" gate="G$1" x="-41.91" y="-15.24"/>
						<instance part="C5" gate="G$1" x="-41.91" y="-34.29"/>
						<instance part="Ref5" gate="G$1" x="-41.91" y="-46.99"/>
						<instance part="T2" gate="G$1" x="20.955" y="-45.72"/>
						<instance part="Ref3" gate="G$1" x="12.065" y="-80.01"/>
						<instance part="Ref1" gate="G$1" x="-42.545" y="-101.6"/>
						<instance part="Ref2" gate="G$1" x="-20.32" y="-101.6"/>
						<instance part="Ref6" gate="G$1" x="3.175" y="-101.6"/>
						<instance part="Ref10" gate="G$1" x="12.065" y="-101.6"/>
						<instance part="Ref11" gate="G$1" x="23.495" y="-101.6"/>
						<instance part="C8" gate="G$1" x="28.575" y="-90.17"/>
						<instance part="Ref9" gate="G$1" x="-55.245" y="-40.64"/>
						<instance part="R14" gate="G$1" x="135.255" y="11.43"/>
						<instance part="R15" gate="G$1" x="147.955" y="11.43"/>
						<instance part="R16" gate="G$1" x="160.655" y="11.43"/>
						<instance part="R17" gate="G$1" x="173.355" y="11.43"/>
						<instance part="R6" gate="G$1" x="135.255" y="26.67"/>
						<instance part="R7" gate="G$1" x="147.955" y="26.67"/>
						<instance part="R8" gate="G$1" x="160.655" y="26.67"/>
						<instance part="R9" gate="G$1" x="173.355" y="26.67"/>
						<instance part="R10" gate="G$1" x="119.38" y="19.05"/>
						<instance part="R11" gate="G$1" x="125.73" y="19.05"/>
						<instance part="Ref7" gate="G$1" x="74.93" y="-101.6"/>
						<instance part="Ref8" gate="G$1" x="52.07" y="-101.6"/>
						<instance part="IC1" gate="G$1" x="-20.32" y="-86.36"/>
					</instances>
					<busses/>
					<nets>
						<net name="1" class="0">
							<segment>
								<wire x1="16.51" y1="68.58" x2="16.51" y2="76.2" width="0.3" layer="91"/>
								<wire x1="16.51" y1="76.2" x2="6.35" y2="76.2" width="0.3" layer="91"/>
								<pinref part="R1" gate="G$1" pin="2"/>
								<wire x1="16.51" y1="76.2" x2="20.32" y2="76.2" width="0.3" layer="91"/>
								<pinref part="R2" gate="G$1" pin="1"/>
								<wire x1="16.51" y1="68.58" x2="20.32" y2="68.58" width="0.3" layer="91"/>
								<pinref part="R3" gate="G$1" pin="1"/>
								<wire x1="16.51" y1="68.58" x2="8.255" y2="68.58" width="0.3" layer="91"/>
								<pinref part="X1" gate="d" pin="+"/>
								<junction x="16.51" y="68.58"/>
								<junction x="16.51" y="76.2"/>
							</segment>
						</net>
						<net name="+5V" class="0">
							<segment>
								<wire x1="36.83" y1="68.58" x2="30.48" y2="68.58" width="0.3" layer="91"/>
								<pinref part="Ref16" gate="G$1" pin="+5V"/>
								<pinref part="R3" gate="G$1" pin="2"/>
							</segment>
							<segment>
								<wire x1="-31.75" y1="66.04" x2="-27.94" y2="66.04" width="0.3" layer="91"/>
								<pinref part="Ref17" gate="G$1" pin="+5V"/>
								<pinref part="R4" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="19.05" y1="-19.05" x2="15.24" y2="-19.05" width="0.3" layer="91"/>
								<pinref part="Ref12" gate="G$1" pin="+5V"/>
								<pinref part="R19" gate="G$1" pin="2"/>
							</segment>
							<segment>
								<wire x1="-41.91" y1="-15.24" x2="-41.91" y2="-20.32" width="0.3" layer="91"/>
								<pinref part="Ref4" gate="G$1" pin="+5V"/>
								<junction x="-41.91" y="-20.32"/>
								<wire x1="-41.91" y1="-20.32" x2="-40.64" y2="-20.32" width="0.3" layer="91"/>
								<pinref part="R21" gate="G$1" pin="2"/>
								<wire x1="-41.91" y1="-20.32" x2="-43.18" y2="-20.32" width="0.3" layer="91"/>
								<pinref part="R20" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="12.065" y1="-80.01" x2="12.065" y2="-82.55" width="0.3" layer="91"/>
								<pinref part="Ref3" gate="G$1" pin="+5V"/>
								<wire x1="12.065" y1="-82.55" x2="23.495" y2="-82.55" width="0.3" layer="91"/>
								<junction x="12.065" y="-82.55"/>
								<wire x1="3.175" y1="-82.55" x2="12.065" y2="-82.55" width="0.3" layer="91"/>
								<wire x1="12.065" y1="-82.55" x2="12.065" y2="-88.9" width="0.3" layer="91"/>
								<pinref part="C9" gate="G$1" pin="2"/>
								<junction x="23.495" y="-82.55"/>
								<wire x1="23.495" y1="-82.55" x2="28.575" y2="-82.55" width="0.3" layer="91"/>
								<wire x1="23.495" y1="-82.55" x2="23.495" y2="-83.82" width="0.3" layer="91"/>
								<pinref part="X1" gate="p" pin="VCC+"/>
								<junction x="3.175" y="-82.55"/>
								<wire x1="3.175" y1="-82.55" x2="-11.43" y2="-82.55" width="0.3" layer="91"/>
								<pinref part="IC1" gate="G$1" pin="Pin4"/>
								<wire x1="3.175" y1="-88.9" x2="3.175" y2="-82.55" width="0.3" layer="91"/>
								<pinref part="C7" gate="G$1" pin="+"/>
								<wire x1="28.575" y1="-82.55" x2="28.575" y2="-86.36" width="0.3" layer="91"/>
								<pinref part="C8" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="A" class="0">
							<segment>
								<wire x1="-12.065" y1="76.2" x2="-12.065" y2="66.04" width="0.3" layer="91"/>
								<wire x1="-17.78" y1="66.04" x2="-12.065" y2="66.04" width="0.3" layer="91"/>
								<pinref part="R4" gate="G$1" pin="2"/>
								<wire x1="-12.065" y1="76.2" x2="-3.81" y2="76.2" width="0.3" layer="91"/>
								<pinref part="R1" gate="G$1" pin="1"/>
								<wire x1="-12.065" y1="83.82" x2="-12.065" y2="76.2" width="0.3" layer="91"/>
								<wire x1="-12.065" y1="53.975" x2="-12.065" y2="66.04" width="0.3" layer="91"/>
								<wire x1="-12.065" y1="66.04" x2="-6.985" y2="66.04" width="0.3" layer="91"/>
								<pinref part="X1" gate="d" pin="OUT"/>
								<junction x="-12.065" y="66.04"/>
								<junction x="-12.065" y="76.2"/>
								<wire x1="-2.54" y1="83.82" x2="-12.065" y2="83.82" width="0.3" layer="91"/>
								<pinref part="C1" gate="G$1" pin="1"/>
								<junction x="-12.065" y="53.975"/>
								<wire x1="-12.065" y1="53.975" x2="-12.065" y2="49.53" width="0.3" layer="91"/>
								<wire x1="-3.81" y1="53.975" x2="-12.065" y2="53.975" width="0.3" layer="91"/>
								<pinref part="R5" gate="G$1" pin="S"/>
								<wire x1="-3.81" y1="49.53" x2="-12.065" y2="49.53" width="0.3" layer="91"/>
								<pinref part="R5" gate="G$1" pin="E"/>
							</segment>
						</net>
						<net name="-" class="0">
							<segment>
								<wire x1="8.255" y1="63.5" x2="16.51" y2="63.5" width="0.3" layer="91"/>
								<pinref part="X1" gate="d" pin="-"/>
								<wire x1="16.51" y1="58.42" x2="16.51" y2="63.5" width="0.3" layer="91"/>
								<junction x="16.51" y="63.5"/>
								<wire x1="16.51" y1="49.53" x2="16.51" y2="63.5" width="0.3" layer="91"/>
								<wire x1="16.51" y1="63.5" x2="21.59" y2="63.5" width="0.3" layer="91"/>
								<pinref part="C2" gate="G$1" pin="1"/>
								<wire x1="16.51" y1="49.53" x2="6.35" y2="49.53" width="0.3" layer="91"/>
								<pinref part="R5" gate="G$1" pin="A"/>
							</segment>
						</net>
						<net name="GND" class="0">
							<segment>
								<wire x1="11.43" y1="0.635" x2="11.43" y2="3.81" width="0.3" layer="91"/>
								<pinref part="Ref13" gate="G$1" pin="GND"/>
								<pinref part="R18" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="20.32" y1="0.635" x2="20.32" y2="8.89" width="0.3" layer="91"/>
								<pinref part="Ref18" gate="G$1" pin="GND"/>
								<pinref part="R13" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="29.845" y1="0.635" x2="29.845" y2="10.16" width="0.3" layer="91"/>
								<pinref part="Ref22" gate="G$1" pin="GND"/>
								<pinref part="C4" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="34.29" y1="63.5" x2="29.21" y2="63.5" width="0.3" layer="91"/>
								<pinref part="Ref15" gate="G$1" pin="GND"/>
								<pinref part="C2" gate="G$1" pin="2"/>
							</segment>
							<segment>
								<wire x1="33.655" y1="76.2" x2="30.48" y2="76.2" width="0.3" layer="91"/>
								<pinref part="Ref14" gate="G$1" pin="GND"/>
								<pinref part="R2" gate="G$1" pin="2"/>
							</segment>
							<segment>
								<wire x1="-19.05" y1="0.635" x2="-19.05" y2="9.525" width="0.3" layer="91"/>
								<pinref part="Ref21" gate="G$1" pin="GND"/>
								<pinref part="C3" gate="G$1" pin="-"/>
							</segment>
							<segment>
								<wire x1="54.61" y1="11.43" x2="54.61" y2="17.78" width="0.3" layer="91"/>
								<pinref part="L1" gate="G$1" pin="1"/>
								<junction x="54.61" y="11.43"/>
								<wire x1="54.61" y1="11.43" x2="54.61" y2="0.635" width="0.3" layer="91"/>
								<pinref part="Ref23" gate="G$1" pin="GND"/>
								<wire x1="67.945" y1="11.43" x2="54.61" y2="11.43" width="0.3" layer="91"/>
								<wire x1="67.945" y1="29.21" x2="67.945" y2="11.43" width="0.3" layer="91"/>
								<wire x1="95.885" y1="29.21" x2="67.945" y2="29.21" width="0.3" layer="91"/>
								<pinref part="K2" gate="G$1" pin="4"/>
							</segment>
							<segment>
								<wire x1="19.05" y1="-27.94" x2="15.24" y2="-27.94" width="0.3" layer="91"/>
								<pinref part="Ref19" gate="G$1" pin="GND"/>
								<pinref part="R22" gate="G$1" pin="2"/>
							</segment>
							<segment>
								<wire x1="-41.91" y1="-46.99" x2="-41.91" y2="-41.91" width="0.3" layer="91"/>
								<pinref part="Ref5" gate="G$1" pin="GND"/>
								<pinref part="C5" gate="G$1" pin="-"/>
							</segment>
							<segment>
								<wire x1="26.67" y1="-53.975" x2="26.67" y2="-50.8" width="0.3" layer="91"/>
								<pinref part="T2" gate="G$1" pin="E"/>
								<pinref part="Ref20" gate="G$1" pin="GND"/>
							</segment>
							<segment>
								<wire x1="-42.545" y1="-101.6" x2="-42.545" y2="-96.52" width="0.3" layer="91"/>
								<pinref part="Ref1" gate="G$1" pin="GND"/>
								<pinref part="C6" gate="G$1" pin="-"/>
							</segment>
							<segment>
								<wire x1="3.175" y1="-101.6" x2="3.175" y2="-96.52" width="0.3" layer="91"/>
								<pinref part="Ref6" gate="G$1" pin="GND"/>
								<pinref part="C7" gate="G$1" pin="-"/>
							</segment>
							<segment>
								<wire x1="12.065" y1="-101.6" x2="12.065" y2="-96.52" width="0.3" layer="91"/>
								<pinref part="Ref10" gate="G$1" pin="GND"/>
								<pinref part="C9" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="23.495" y1="-98.425" x2="23.495" y2="-96.52" width="0.3" layer="91"/>
								<pinref part="X1" gate="p" pin="VCC-"/>
								<junction x="23.495" y="-98.425"/>
								<wire x1="23.495" y1="-98.425" x2="23.495" y2="-101.6" width="0.3" layer="91"/>
								<pinref part="Ref11" gate="G$1" pin="GND"/>
								<wire x1="28.575" y1="-98.425" x2="23.495" y2="-98.425" width="0.3" layer="91"/>
								<wire x1="28.575" y1="-93.98" x2="28.575" y2="-98.425" width="0.3" layer="91"/>
								<pinref part="C8" gate="G$1" pin="1"/>
							</segment>
							<segment>
								<wire x1="-20.32" y1="-101.6" x2="-20.32" y2="-97.79" width="0.3" layer="91"/>
								<pinref part="Ref2" gate="G$1" pin="GND"/>
								<junction x="-20.32" y="-97.79"/>
								<wire x1="-20.32" y1="-97.79" x2="-33.655" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-20.32" y1="-97.79" x2="-7.62" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-33.655" y1="-90.17" x2="-33.655" y2="-97.79" width="0.3" layer="91"/>
								<wire x1="-7.62" y1="-97.79" x2="-7.62" y2="-90.17" width="0.3" layer="91"/>
								<wire x1="-29.21" y1="-90.17" x2="-33.655" y2="-90.17" width="0.3" layer="91"/>
								<pinref part="IC1" gate="G$1" pin="Pin1"/>
								<wire x1="-7.62" y1="-90.17" x2="-11.43" y2="-90.17" width="0.3" layer="91"/>
								<pinref part="IC1" gate="G$1" pin="Pin3"/>
							</segment>
							<segment>
								<wire x1="-74.295" y1="-35.56" x2="-55.245" y2="-35.56" width="0.3" layer="91"/>
								<pinref part="K1" gate="G$1" pin="4"/>
								<wire x1="-55.245" y1="-35.56" x2="-55.245" y2="-40.64" width="0.3" layer="91"/>
								<pinref part="Ref9" gate="G$1" pin="GND"/>
							</segment>
							<segment>
								<wire x1="74.93" y1="-91.44" x2="74.93" y2="-101.6" width="0.3" layer="91"/>
								<pinref part="Ref7" gate="G$1" pin="GND"/>
								<junction x="74.93" y="-91.44"/>
								<wire x1="74.93" y1="-91.44" x2="74.93" y2="-86.36" width="0.3" layer="91"/>
								<wire x1="70.485" y1="-91.44" x2="74.93" y2="-91.44" width="0.3" layer="91"/>
								<pinref part="X1" gate="c" pin="-"/>
								<wire x1="70.485" y1="-86.36" x2="74.93" y2="-86.36" width="0.3" layer="91"/>
								<pinref part="X1" gate="c" pin="+"/>
							</segment>
						</net>
						<net name="OUT" class="0">
							<segment>
								<wire x1="-8.89" y1="16.51" x2="-3.81" y2="16.51" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="1"/>
								<junction x="-8.89" y="16.51"/>
								<wire x1="-8.89" y1="16.51" x2="-8.89" y2="-33.02" width="0.3" layer="91"/>
								<wire x1="-8.89" y1="29.21" x2="-8.89" y2="16.51" width="0.3" layer="91"/>
								<wire x1="-8.89" y1="-33.02" x2="-10.795" y2="-33.02" width="0.3" layer="91"/>
								<pinref part="X1" gate="a" pin="-"/>
								<wire x1="-6.35" y1="29.21" x2="-8.89" y2="29.21" width="0.3" layer="91"/>
								<pinref part="X1" gate="b" pin="OUT"/>
								<junction x="-8.89" y="29.21"/>
								<wire x1="-19.05" y1="29.21" x2="-8.89" y2="29.21" width="0.3" layer="91"/>
								<junction x="-19.05" y="29.21"/>
								<wire x1="-65.405" y1="29.21" x2="-19.05" y2="29.21" width="0.3" layer="91"/>
								<wire x1="-19.05" y1="29.21" x2="-19.05" y2="17.145" width="0.3" layer="91"/>
								<pinref part="C3" gate="G$1" pin="+"/>
								<wire x1="-65.405" y1="-20.32" x2="-65.405" y2="29.21" width="0.3" layer="91"/>
								<pinref part="D1" gate="G$1" pin="K"/>
								<wire x1="-65.405" y1="-20.32" x2="-65.405" y2="-33.02" width="0.3" layer="91"/>
								<junction x="-65.405" y="-20.32"/>
								<wire x1="-65.405" y1="-33.02" x2="-74.295" y2="-33.02" width="0.3" layer="91"/>
								<pinref part="K1" gate="G$1" pin="3"/>
							</segment>
						</net>
						<net name="+" class="0">
							<segment>
								<wire x1="29.845" y1="31.75" x2="38.735" y2="31.75" width="0.3" layer="91"/>
								<pinref part="D3" gate="G$1" pin="K"/>
								<wire x1="20.32" y1="31.75" x2="29.845" y2="31.75" width="0.3" layer="91"/>
								<junction x="29.845" y="31.75"/>
								<wire x1="29.845" y1="17.78" x2="29.845" y2="31.75" width="0.3" layer="91"/>
								<pinref part="C4" gate="G$1" pin="2"/>
								<junction x="20.32" y="31.75"/>
								<wire x1="20.32" y1="19.05" x2="20.32" y2="31.75" width="0.3" layer="91"/>
								<pinref part="R13" gate="G$1" pin="2"/>
								<wire x1="20.32" y1="31.75" x2="8.89" y2="31.75" width="0.3" layer="91"/>
								<pinref part="X1" gate="b" pin="+"/>
							</segment>
						</net>
						<net name="Sig$8" class="0">
							<segment>
								<wire x1="11.43" y1="26.67" x2="8.89" y2="26.67" width="0.3" layer="91"/>
								<pinref part="X1" gate="b" pin="-"/>
								<wire x1="11.43" y1="16.51" x2="11.43" y2="26.67" width="0.3" layer="91"/>
								<wire x1="11.43" y1="13.97" x2="11.43" y2="16.51" width="0.3" layer="91"/>
								<pinref part="R18" gate="G$1" pin="2"/>
								<junction x="11.43" y="16.51"/>
								<wire x1="11.43" y1="16.51" x2="6.35" y2="16.51" width="0.3" layer="91"/>
								<pinref part="R12" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="Sig$9" class="0">
							<segment>
								<wire x1="54.61" y1="31.75" x2="47.625" y2="31.75" width="0.3" layer="91"/>
								<pinref part="D3" gate="G$1" pin="A"/>
								<wire x1="54.61" y1="27.94" x2="54.61" y2="31.75" width="0.3" layer="91"/>
								<pinref part="L1" gate="G$1" pin="2"/>
								<wire x1="54.61" y1="31.75" x2="95.885" y2="31.75" width="0.3" layer="91"/>
								<pinref part="K2" gate="G$1" pin="5"/>
								<wire x1="54.61" y1="83.82" x2="54.61" y2="31.75" width="0.3" layer="91"/>
								<junction x="54.61" y="31.75"/>
								<wire x1="54.61" y1="83.82" x2="5.08" y2="83.82" width="0.3" layer="91"/>
								<pinref part="C1" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="Sig$10" class="0">
							<segment>
								<wire x1="-29.21" y1="-20.32" x2="-29.21" y2="-30.48" width="0.3" layer="91"/>
								<wire x1="-29.21" y1="-30.48" x2="-26.035" y2="-30.48" width="0.3" layer="91"/>
								<pinref part="X1" gate="a" pin="OUT"/>
								<wire x1="-29.21" y1="-30.48" x2="-29.21" y2="-45.72" width="0.3" layer="91"/>
								<wire x1="-41.91" y1="-30.48" x2="-29.21" y2="-30.48" width="0.3" layer="91"/>
								<junction x="-29.21" y="-30.48"/>
								<wire x1="-30.48" y1="-20.32" x2="-29.21" y2="-20.32" width="0.3" layer="91"/>
								<pinref part="R21" gate="G$1" pin="1"/>
								<wire x1="-29.21" y1="-45.72" x2="5.08" y2="-45.72" width="0.3" layer="91"/>
								<pinref part="R25" gate="G$1" pin="1"/>
								<junction x="-41.91" y="-30.48"/>
								<wire x1="-41.91" y1="-34.29" x2="-41.91" y2="-30.48" width="0.3" layer="91"/>
								<pinref part="C5" gate="G$1" pin="+"/>
								<wire x1="-41.91" y1="-30.48" x2="-74.295" y2="-30.48" width="0.3" layer="91"/>
								<pinref part="K1" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="Sig$11" class="0">
							<segment>
								<wire x1="-53.34" y1="-20.32" x2="-55.88" y2="-20.32" width="0.3" layer="91"/>
								<pinref part="D1" gate="G$1" pin="A"/>
								<pinref part="R20" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="Sig$12" class="0">
							<segment>
								<wire x1="0" y1="-27.94" x2="5.08" y2="-27.94" width="0.3" layer="91"/>
								<pinref part="R22" gate="G$1" pin="1"/>
								<wire x1="0" y1="-19.05" x2="0" y2="-27.94" width="0.3" layer="91"/>
								<junction x="0" y="-27.94"/>
								<wire x1="0" y1="-27.94" x2="-10.795" y2="-27.94" width="0.3" layer="91"/>
								<pinref part="X1" gate="a" pin="+"/>
								<wire x1="0" y1="-19.05" x2="5.08" y2="-19.05" width="0.3" layer="91"/>
								<pinref part="R19" gate="G$1" pin="1"/>
							</segment>
						</net>
						<net name="Sig$13" class="0">
							<segment>
								<wire x1="15.24" y1="-45.72" x2="20.955" y2="-45.72" width="0.3" layer="91"/>
								<pinref part="T2" gate="G$1" pin="B"/>
								<pinref part="R25" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="Sig$14" class="0">
							<segment>
								<wire x1="50.165" y1="-27.94" x2="45.72" y2="-27.94" width="0.3" layer="91"/>
								<pinref part="R23" gate="G$1" pin="1"/>
								<wire x1="45.72" y1="-27.94" x2="45.72" y2="-36.83" width="0.3" layer="91"/>
								<wire x1="45.72" y1="-62.865" x2="45.72" y2="-36.83" width="0.3" layer="91"/>
								<junction x="45.72" y="-36.83"/>
								<wire x1="50.165" y1="-36.83" x2="45.72" y2="-36.83" width="0.3" layer="91"/>
								<pinref part="R24" gate="G$1" pin="1"/>
								<wire x1="45.72" y1="-36.83" x2="26.67" y2="-36.83" width="0.3" layer="91"/>
								<wire x1="-50.165" y1="-62.865" x2="45.72" y2="-62.865" width="0.3" layer="91"/>
								<wire x1="26.67" y1="-36.83" x2="26.67" y2="-40.64" width="0.3" layer="91"/>
								<pinref part="T2" gate="G$1" pin="C"/>
								<wire x1="-50.165" y1="-62.865" x2="-50.165" y2="-27.94" width="0.3" layer="91"/>
								<wire x1="-74.295" y1="-27.94" x2="-50.165" y2="-27.94" width="0.3" layer="91"/>
								<pinref part="K1" gate="G$1" pin="1"/>
							</segment>
						</net>
						<net name="3" class="0">
							<segment>
								<wire x1="95.885" y1="26.67" x2="82.55" y2="26.67" width="0.3" layer="91"/>
								<pinref part="K2" gate="G$1" pin="3"/>
								<junction x="95.885" y="26.67"/>
								<wire x1="95.885" y1="26.67" x2="105.41" y2="26.67" width="0.3" layer="91"/>
								<wire x1="82.55" y1="26.67" x2="82.55" y2="-27.94" width="0.3" layer="91"/>
								<wire x1="60.325" y1="-27.94" x2="82.55" y2="-27.94" width="0.3" layer="91"/>
								<pinref part="R23" gate="G$1" pin="2"/>
							</segment>
						</net>
						<net name="Sig$16" class="0">
							<segment>
								<wire x1="-42.545" y1="-88.9" x2="-42.545" y2="-82.55" width="0.3" layer="91"/>
								<pinref part="C6" gate="G$1" pin="+"/>
								<junction x="-42.545" y="-82.55"/>
								<wire x1="-42.545" y1="-82.55" x2="-29.21" y2="-82.55" width="0.3" layer="91"/>
								<pinref part="IC1" gate="G$1" pin="Pin2"/>
								<wire x1="-42.545" y1="-82.55" x2="-46.355" y2="-82.55" width="0.3" layer="91"/>
								<pinref part="D4" gate="G$1" pin="K"/>
							</segment>
						</net>
						<net name="5" class="0">
							<segment>
								<wire x1="-74.295" y1="-38.1" x2="-59.69" y2="-38.1" width="0.3" layer="91"/>
								<pinref part="K1" gate="G$1" pin="5"/>
								<wire x1="-59.69" y1="-67.31" x2="-59.69" y2="-38.1" width="0.3" layer="91"/>
								<junction x="-59.69" y="-67.31"/>
								<wire x1="-59.69" y1="-67.31" x2="95.885" y2="-67.31" width="0.3" layer="91"/>
								<wire x1="-59.69" y1="-67.31" x2="-59.69" y2="-82.55" width="0.3" layer="91"/>
								<wire x1="95.885" y1="-67.31" x2="95.885" y2="21.59" width="0.3" layer="91"/>
								<pinref part="K2" gate="G$1" pin="1"/>
								<wire x1="-59.69" y1="-82.55" x2="-55.245" y2="-82.55" width="0.3" layer="91"/>
								<pinref part="D4" gate="G$1" pin="A"/>
								<junction x="95.885" y="21.59"/>
								<wire x1="95.885" y1="21.59" x2="106.045" y2="21.59" width="0.3" layer="91"/>
								<wire x1="106.045" y1="21.59" x2="106.045" y2="11.43" width="0.3" layer="91"/>
								<wire x1="106.045" y1="11.43" x2="119.38" y2="11.43" width="0.3" layer="91"/>
								<wire x1="125.73" y1="11.43" x2="119.38" y2="11.43" width="0.3" layer="91"/>
								<junction x="119.38" y="11.43"/>
								<wire x1="119.38" y1="13.97" x2="119.38" y2="11.43" width="0.3" layer="91"/>
								<junction x="125.73" y="11.43"/>
								<wire x1="125.73" y1="13.97" x2="125.73" y2="11.43" width="0.3" layer="91"/>
								<wire x1="125.73" y1="11.43" x2="130.175" y2="11.43" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$18" class="0">
							<segment>
								<wire x1="140.335" y1="11.43" x2="142.875" y2="11.43" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$19" class="0">
							<segment>
								<wire x1="153.035" y1="11.43" x2="155.575" y2="11.43" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$20" class="0">
							<segment>
								<wire x1="165.735" y1="11.43" x2="168.275" y2="11.43" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$21" class="0">
							<segment>
								<wire x1="178.435" y1="11.43" x2="180.975" y2="11.43" width="0.3" layer="91"/>
								<wire x1="180.975" y1="11.43" x2="180.975" y2="26.67" width="0.3" layer="91"/>
								<wire x1="180.975" y1="26.67" x2="178.435" y2="26.67" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$22" class="0">
							<segment>
								<wire x1="168.275" y1="26.67" x2="165.735" y2="26.67" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$23" class="0">
							<segment>
								<wire x1="155.575" y1="26.67" x2="153.035" y2="26.67" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$24" class="0">
							<segment>
								<wire x1="142.875" y1="26.67" x2="140.335" y2="26.67" width="0.3" layer="91"/>
							</segment>
						</net>
						<net name="Sig$25" class="0">
							<segment>
								<wire x1="117.475" y1="26.67" x2="114.935" y2="26.67" width="0.3" layer="91"/>
								<junction x="117.475" y="26.67"/>
								<wire x1="117.475" y1="26.67" x2="119.38" y2="26.67" width="0.3" layer="91"/>
								<wire x1="117.475" y1="24.13" x2="117.475" y2="26.67" width="0.3" layer="91"/>
								<wire x1="125.73" y1="26.67" x2="119.38" y2="26.67" width="0.3" layer="91"/>
								<junction x="119.38" y="26.67"/>
								<wire x1="119.38" y1="24.13" x2="119.38" y2="26.67" width="0.3" layer="91"/>
								<wire x1="95.885" y1="24.13" x2="117.475" y2="24.13" width="0.3" layer="91"/>
								<pinref part="K2" gate="G$1" pin="2"/>
								<junction x="125.73" y="26.67"/>
								<wire x1="125.73" y1="24.13" x2="125.73" y2="26.67" width="0.3" layer="91"/>
								<wire x1="125.73" y1="26.67" x2="130.175" y2="26.67" width="0.3" layer="91"/>
								<wire x1="87.63" y1="24.13" x2="95.885" y2="24.13" width="0.3" layer="91"/>
								<junction x="95.885" y="24.13"/>
								<wire x1="87.63" y1="-36.83" x2="87.63" y2="24.13" width="0.3" layer="91"/>
								<wire x1="60.325" y1="-36.83" x2="87.63" y2="-36.83" width="0.3" layer="91"/>
								<pinref part="R24" gate="G$1" pin="2"/>
							</segment>
						</net>
					</nets>
				</sheet>
			</sheets>
		</schematic>
	</drawing>
</eagle>
