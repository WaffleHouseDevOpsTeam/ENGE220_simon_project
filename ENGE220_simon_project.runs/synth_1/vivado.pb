
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
N
#Helper process launched with PID %s4824*oasys2
12940Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1383.945 ; gain = 448.062
h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
ready2
wire2h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/lcd_string.v2
288@Z8-11241h px� 
�
*overwriting previous definition of %s '%s'6131*oasys2
module2

lcd_ctrl2h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_ctrl.v2
728@Z8-9873h px� 
�
2previous definition of design element '%s' is here6195*oasys2

lcd_ctrl2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/lcd_ctrl.v2
728@Z8-9937h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
ready2
wire2j
fZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_string.v2
288@Z8-11241h px� 
�
*overwriting previous definition of %s '%s'6131*oasys2
module2

lcd_string2j
fZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_string.v2
1628@Z8-9873h px� 
�
2previous definition of design element '%s' is here6195*oasys2

lcd_string2h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/lcd_string.v2
1628@Z8-9937h px� 
�
*overwriting previous definition of %s '%s'6131*oasys2
module2
binary_to_BCD2m
iZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/lab11code/binary_to_BCD.v2
258@Z8-9873h px� 
�
2previous definition of design element '%s' is here6195*oasys2
binary_to_BCD2k
gZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/binary_to_BCD.v2
258@Z8-9937h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
28@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

seg_ctrl2
 2h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/seg_ctrl.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	seven_seg2
 2i
eZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/seven_seg.v2
18@Z8-6157h px� 
�
default block is never used226*oasys2i
eZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/seven_seg.v2
58@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	seven_seg2
 2
02
12i
eZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/seven_seg.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

seg_ctrl2
 2
02
12h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/seg_ctrl.v2
38@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22
D2
42

seg_ctrl2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
378@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22
C2
42

seg_ctrl2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
378@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22
B2
42

seg_ctrl2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
378@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
22
A2
42

seg_ctrl2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
378@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2

lcd_string2
 2j
fZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_string.v2
118@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

lcd_ctrl2
 2h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_ctrl.v2
118@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

lcd_ctrl2
 2
02
12h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_ctrl.v2
118@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2j
fZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_string.v2
418@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

lcd_string2
 2
02
12j
fZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_string.v2
118@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

lcd_read2

lcd_string2
LCDstringer2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
948@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	available2

lcd_string2
LCDstringer2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
948@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
LCDstringer2

lcd_string2
102
82o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
948@Z8-7023h px� 
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
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
held2
	debouncer2

st_pulse2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
reset2
	debouncer2

st_pulse2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1048@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

st_pulse2
	debouncer2
52
32o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1048@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
button_ctrl2
 2]
YZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/button_ctrl.v2
18@Z8-6157h px� 
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
synthesizing module '%s'%s4497*oasys2
PRNG2
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/PRNG.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR2
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR2
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized02
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000000000001 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized02
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized12
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000000000000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized12
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized22
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000000010001 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized22
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized32
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000000010000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized32
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized42
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000100000001 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized42
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized52
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000100000000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized52
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized62
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000100010001 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized62
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized72
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0000000100010000 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized72
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
LFSR__parameterized82
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6157h px� 
J
%s
*synth22
0	Parameter FILL bound to: 16'b0001000000000001 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LFSR__parameterized82
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/LFSR.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PRNG2
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/PRNG.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
scale_decoder2
 2k
gZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/scale_decoder.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
scale_decoder2
 2
02
12k
gZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/scale_decoder.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
speakerselect2
 2k
gZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/speakerselect.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
speakerselect2
 2
02
12k
gZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/speakerselect.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
counter2
 2Y
UZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/counter.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
counter2
 2
02
12Y
UZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/new/counter.v2
18@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
72
count2
82	
counter2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1948@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
302
count2
82	
counter2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2058@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
timer2
 2c
_Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/timer.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
timer2
 2
02
12c
_Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/timer.v2
18@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
binary_to_BCD2
 2m
iZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/lab11code/binary_to_BCD.v2
18@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
add32
 2d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/add3.v2
18@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
add32
 2
02
12d
`Z:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/add3.v2
18@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
binary_to_BCD2
 2
02
12m
iZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/lab11code/binary_to_BCD.v2
18@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

HUNDREDS2
binary_to_BCD2
	converter2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2208@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
	converter2
binary_to_BCD2
42
32o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2208@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
28@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
activate_d_reg2

lcd_ctrl2h
dZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/Downloads/lcd_ctrl.v2
268@Z8-7137h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
reset2
top2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
348@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
non_seq_count_reset2
top2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2018@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
non_seq_count_enable2
top2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2018@Z8-3848h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
topZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1501.469 ; gain = 565.586
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1501.469 ; gain = 565.586
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:05 . Memory (MB): peak = 1501.469 ; gain = 565.586
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
00:00:00.0172

1501.4692
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

1608.2702
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

1608.2702
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
Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:03 ; elapsed = 00:00:10 . Memory (MB): peak = 1608.270 ; gain = 672.387
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
!inferring latch for variable '%s'327*oasys2
non_seq_b_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1068@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	color_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1568@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
led_enable_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1578@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	pulse_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1738@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	rerun_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1748@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
randomize_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1758@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
rand_reset_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1778@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
new_round_counter_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2508@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
stored_color_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
3648@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
lcd_string_print_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
988@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
topline_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
998@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
bottomline_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1008@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
seq_count_reset_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1968@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
seq_count_enable_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
1978@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
seq_timer_reset_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2158@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
seq_timer_enable_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2168@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
player_score_reg2o
kZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/ENGE220_simon_project/top.v2
2218@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:11 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit       Adders := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   4 Input      1 Bit         XORs := 10    
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
.	              128 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               28 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               18 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 21    
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 6     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 29    
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
,	   2 Input  128 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  15 Input  128 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  10 Input  128 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input  127 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input   18 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 10    
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	  15 Input    8 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  10 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  10 Input    6 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 6     
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
,	   2 Input    2 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 44    
h p
x
� 
F
%s
*synth2.
,	  15 Input    1 Bit        Muxes := 7     
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
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	  10 Input    1 Bit        Muxes := 20    
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
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[13]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[12]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[11]2
topZ8-7129h px� 
m
9Port %s in module %s is either unconnected or has no load4866*oasys2	
led[10]2
topZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
led[0]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[3]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[2]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[1]2
topZ8-7129h px� 
k
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[0]2
topZ8-7129h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
lcd_string_print_reg2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
player_score_reg[7]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
bottomline_reg[127]2
topZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
bottomline_reg[126]2
topZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:04 ; elapsed = 00:00:15 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
}Finished Timing Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:19 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[21] 2
top2
\st_pulse/timer_reg[21]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[20] 2
top2
\st_pulse/timer_reg[20]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[19] 2
top2
\st_pulse/timer_reg[19]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[18] 2
top2
\st_pulse/timer_reg[18]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[17] 2
top2
\st_pulse/timer_reg[17]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[16] 2
top2
\st_pulse/timer_reg[16]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[15] 2
top2
\st_pulse/timer_reg[15]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[14] 2
top2
\st_pulse/timer_reg[14]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[13] 2
top2
\st_pulse/timer_reg[13]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[12] 2
top2
\st_pulse/timer_reg[12]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[11] 2
top2
\st_pulse/timer_reg[11]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[10] 2
top2
\st_pulse/timer_reg[10]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[9] 2
top2
\st_pulse/timer_reg[9]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[8] 2
top2
\st_pulse/timer_reg[8]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[7] 2
top2
\st_pulse/timer_reg[7]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[6] 2
top2
\st_pulse/timer_reg[6]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[5] 2
top2
\st_pulse/timer_reg[5]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[4] 2
top2
\st_pulse/timer_reg[4]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[3] 2
top2
\st_pulse/timer_reg[3]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[2] 2
top2
\st_pulse/timer_reg[2]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[1] 2
top2
\st_pulse/timer_reg[1]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\st_pulse/timer_reg[0] 2
top2
\st_pulse/timer_reg[0]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[21] 2
top2
\deb_s0/timer_reg[21]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[20] 2
top2
\deb_s0/timer_reg[20]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[19] 2
top2
\deb_s0/timer_reg[19]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[18] 2
top2
\deb_s0/timer_reg[18]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[17] 2
top2
\deb_s0/timer_reg[17]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[16] 2
top2
\deb_s0/timer_reg[16]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[15] 2
top2
\deb_s0/timer_reg[15]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[14] 2
top2
\deb_s0/timer_reg[14]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[13] 2
top2
\deb_s0/timer_reg[13]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[12] 2
top2
\deb_s0/timer_reg[12]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[11] 2
top2
\deb_s0/timer_reg[11]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[10] 2
top2
\deb_s0/timer_reg[10]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[9] 2
top2
\deb_s0/timer_reg[9]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[8] 2
top2
\deb_s0/timer_reg[8]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[7] 2
top2
\deb_s0/timer_reg[7]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[6] 2
top2
\deb_s0/timer_reg[6]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[5] 2
top2
\deb_s0/timer_reg[5]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[4] 2
top2
\deb_s0/timer_reg[4]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[3] 2
top2
\deb_s0/timer_reg[3]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[2] 2
top2
\deb_s0/timer_reg[2]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[1] 2
top2
\deb_s0/timer_reg[1]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s0/timer_reg[0] 2
top2
\deb_s0/timer_reg[0]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[21] 2
top2
\deb_s1/timer_reg[21]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[20] 2
top2
\deb_s1/timer_reg[20]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[19] 2
top2
\deb_s1/timer_reg[19]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[18] 2
top2
\deb_s1/timer_reg[18]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[17] 2
top2
\deb_s1/timer_reg[17]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[16] 2
top2
\deb_s1/timer_reg[16]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[15] 2
top2
\deb_s1/timer_reg[15]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[14] 2
top2
\deb_s1/timer_reg[14]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[13] 2
top2
\deb_s1/timer_reg[13]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[12] 2
top2
\deb_s1/timer_reg[12]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[11] 2
top2
\deb_s1/timer_reg[11]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[10] 2
top2
\deb_s1/timer_reg[10]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[9] 2
top2
\deb_s1/timer_reg[9]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[8] 2
top2
\deb_s1/timer_reg[8]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[7] 2
top2
\deb_s1/timer_reg[7]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[6] 2
top2
\deb_s1/timer_reg[6]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[5] 2
top2
\deb_s1/timer_reg[5]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[4] 2
top2
\deb_s1/timer_reg[4]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[3] 2
top2
\deb_s1/timer_reg[3]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[2] 2
top2
\deb_s1/timer_reg[2]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[1] 2
top2
\deb_s1/timer_reg[1]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s1/timer_reg[0] 2
top2
\deb_s1/timer_reg[0]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[21] 2
top2
\deb_s2/timer_reg[21]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[20] 2
top2
\deb_s2/timer_reg[20]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[19] 2
top2
\deb_s2/timer_reg[19]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[18] 2
top2
\deb_s2/timer_reg[18]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[17] 2
top2
\deb_s2/timer_reg[17]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[16] 2
top2
\deb_s2/timer_reg[16]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[15] 2
top2
\deb_s2/timer_reg[15]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[14] 2
top2
\deb_s2/timer_reg[14]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[13] 2
top2
\deb_s2/timer_reg[13]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[12] 2
top2
\deb_s2/timer_reg[12]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[11] 2
top2
\deb_s2/timer_reg[11]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[10] 2
top2
\deb_s2/timer_reg[10]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[9] 2
top2
\deb_s2/timer_reg[9]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[8] 2
top2
\deb_s2/timer_reg[8]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[7] 2
top2
\deb_s2/timer_reg[7]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[6] 2
top2
\deb_s2/timer_reg[6]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[5] 2
top2
\deb_s2/timer_reg[5]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[4] 2
top2
\deb_s2/timer_reg[4]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[3] 2
top2
\deb_s2/timer_reg[3]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[2] 2
top2
\deb_s2/timer_reg[2]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[1] 2
top2
\deb_s2/timer_reg[1]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s2/timer_reg[0] 2
top2
\deb_s2/timer_reg[0]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[21] 2
top2
\deb_s3/timer_reg[21]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[20] 2
top2
\deb_s3/timer_reg[20]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[19] 2
top2
\deb_s3/timer_reg[19]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[18] 2
top2
\deb_s3/timer_reg[18]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[17] 2
top2
\deb_s3/timer_reg[17]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[16] 2
top2
\deb_s3/timer_reg[16]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[15] 2
top2
\deb_s3/timer_reg[15]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[14] 2
top2
\deb_s3/timer_reg[14]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[13] 2
top2
\deb_s3/timer_reg[13]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[12] 2
top2
\deb_s3/timer_reg[12]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[11] 2
top2
\deb_s3/timer_reg[11]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
^Removing register instance (%s) from module (%s) as it has self-loop and (%s) is actual driver4310*oasys2
\deb_s3/timer_reg[10] 2
top2
\deb_s3/timer_reg[10]__0 2f
bZ:/Documents/ENGE220_simon_project/ENGE220_simon_project.srcs/sources_1/imports/modules/debounce.v2
248@Z8-5966h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-59662
100Z17-14h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:06 ; elapsed = 00:00:19 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
vFinished IO Insertion : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
|1     |BUFG   |     2|
h px� 
2
%s*synth2
|2     |CARRY4 |    62|
h px� 
2
%s*synth2
|3     |LUT1   |   122|
h px� 
2
%s*synth2
|4     |LUT2   |   113|
h px� 
2
%s*synth2
|5     |LUT3   |   342|
h px� 
2
%s*synth2
|6     |LUT4   |   145|
h px� 
2
%s*synth2
|7     |LUT5   |    66|
h px� 
2
%s*synth2
|8     |LUT6   |   116|
h px� 
2
%s*synth2
|9     |FDRE   |   684|
h px� 
2
%s*synth2
|10    |FDSE   |   104|
h px� 
2
%s*synth2
|11    |LD     |   127|
h px� 
2
%s*synth2
|12    |IBUF   |     7|
h px� 
2
%s*synth2
|13    |OBUF   |    46|
h px� 
2
%s*synth2
|14    |OBUFT  |     5|
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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
GSynthesis finished with 0 errors, 0 critical warnings and 31 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:03 ; elapsed = 00:00:21 . Memory (MB): peak = 1608.270 ; gain = 565.586
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:06 ; elapsed = 00:00:22 . Memory (MB): peak = 1608.270 ; gain = 672.387
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

00:00:002
00:00:00.0102

1608.2702
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
189Z29-17h px� 
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

1608.2702
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2K
I  A total of 127 instances were transformed.
  LD => LDCE: 127 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

281cc8fcZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1802
642
92
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:072

00:00:262

1608.2702

1072.074Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0172

1608.2702
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
Fri Dec  6 10:28:29 2024Z17-206h px� 


End Record