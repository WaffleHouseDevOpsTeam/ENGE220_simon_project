
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2_
]Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top top -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
5856Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1383.676 ; gain = 449.512
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
ready2
wire2h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/lcd_string.v2
288@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	debouncer2
 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2
 2
02
12f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
18@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clk2
	debouncer2
deb_s02o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
328@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
deb_s02
	debouncer2
52
42o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
328@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clk2
	debouncer2
deb_s12o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
398@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
deb_s12
	debouncer2
52
42o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
398@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clk2
	debouncer2
deb_s22o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
468@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
deb_s22
	debouncer2
52
42o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
468@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clk2
	debouncer2
deb_s32o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
538@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
deb_s32
	debouncer2
52
42o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
538@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
button_ctrl2
 2]
YZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/button_ctrl.v2
18@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2]
YZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/button_ctrl.v2
118@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
button_ctrl2
 2
02
12]
YZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/button_ctrl.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

led_ctrl2
 2Z
VZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/led_ctrl.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

led_ctrl2
 2
02
12Z
VZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/led_ctrl.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
38@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
c_state_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
788@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
led2
top2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
58@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
reset2
top2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
278@Z8-3848h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[3]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[2]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[1]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2
topZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1493.309 ; gain = 559.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1493.309 ; gain = 559.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1493.309 ; gain = 559.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

1493.3092
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
w
Parsing XDC File [%s]
179*designutils26
2Z:/Documents/ENGE220_simon_project/constraints.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
sw[0]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
128@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
128@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[0]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
138@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
138@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[1]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
148@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
148@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[1]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
158@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
158@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[2]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
168@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[2]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
178@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
178@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[3]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
188@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
188@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[0]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
828@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
828@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[0]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
838@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
838@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[1]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
848@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
848@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[1]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
858@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
858@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[2]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
868@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
868@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[2]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
878@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
878@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[3]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
888@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
888@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[3]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
898@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
898@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[4]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
908@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
908@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[4]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
918@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
918@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[5]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
928@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
928@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[5]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
938@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
938@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[6]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
948@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
948@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[6]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
958@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
958@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[7]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
968@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
968@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

seg_n[7]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
978@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
978@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[0]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
998@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
998@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[0]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1008@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1008@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[1]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1018@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1018@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[1]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1028@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1028@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[2]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1038@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1038@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[2]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1048@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1048@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[3]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1058@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1058@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
an_n[3]26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1068@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1068@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnC26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1108@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1108@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnC26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1118@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1118@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnU26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1128@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1128@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnU26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1138@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1138@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnL26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1148@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1148@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnL26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1158@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1158@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnR26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1168@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1168@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnR26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1178@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1178@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnD26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1188@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1188@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnD26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1198@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1198@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
speaker26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1938@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1938@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2	
speaker26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1948@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1948@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

lcd_regsel26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1998@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
1998@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

lcd_regsel26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
2008@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
2008@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

lcd_enable26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
2028@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
2028@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

lcd_enable26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
2038@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property26
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
2038@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils26
2Z:/Documents/ENGE220_simon_project/constraints.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project24
2Z:/Documents/ENGE220_simon_project/constraints.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1587.5742
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0092

1587.5742
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
!inferring latch for variable '%s'327*oasys2
button_loc_reg2]
YZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/button_ctrl.v2
128@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 12    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 1     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
top2
simon_led1[2]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
top2
simon_led1[1]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
top2
simon_led2[1]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
top2
simon_led2[0]2
0Z8-3917h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
top2
simon_led3[2]2
0Z8-3917h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[3]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[2]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[1]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2
topZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:12 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:16 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:08 ; elapsed = 00:00:16 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"simon_button_loc/button_loc_reg[1]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2$
"simon_button_loc/button_loc_reg[0]2
topZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:08 ; elapsed = 00:00:16 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |     5|
h px� 
2
%s*synth2
|3     |LUT1   |     1|
h px� 
2
%s*synth2
|4     |LUT2   |     1|
h px� 
2
%s*synth2
|5     |LUT4   |     2|
h px� 
2
%s*synth2
|6     |LUT6   |     5|
h px� 
2
%s*synth2
|7     |FDRE   |    19|
h px� 
2
%s*synth2
|8     |IBUF   |     1|
h px� 
2
%s*synth2
|9     |OBUF   |    12|
h px� 
2
%s*synth2
|10    |OBUFT  |     4|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 13 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:07 ; elapsed = 00:00:17 . Memory (MB): peak = 1587.574 ; gain = 559.145
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:10 ; elapsed = 00:00:18 . Memory (MB): peak = 1587.574 ; gain = 653.410
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1587.5742
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
5Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1587.5742
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

52a41612Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322
752
472
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:112

00:00:222

1587.5742

1051.910Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0032

1587.5742
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2O
MZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.runs/synth_1/top.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2Q
Oreport_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Nov 27 09:34:45 2024Z17-206h px� 


End Record