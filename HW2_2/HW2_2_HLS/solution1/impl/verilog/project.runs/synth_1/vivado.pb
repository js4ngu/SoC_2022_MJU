
?
Command: %s
53*	vivadotcl2?
?synth_design -top matrixmul_1D_rev2 -part xc7z020clg484-1 -directive sdx_optimization_effort_high -no_iobuf -mode out_of_context2default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 358.105 ; gain = 101.371
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2%
matrixmul_1D_rev22default:default2
 2default:default2l
VC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.v2default:default2
122default:default8@Z8-6157h px? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state1 bound to: 14'b00000000000001 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state2 bound to: 14'b00000000000010 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state3 bound to: 14'b00000000000100 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state4 bound to: 14'b00000000001000 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state5 bound to: 14'b00000000010000 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state6 bound to: 14'b00000000100000 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state7 bound to: 14'b00000001000000 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state8 bound to: 14'b00000010000000 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter ap_ST_fsm_state9 bound to: 14'b00000100000000 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter ap_ST_fsm_state10 bound to: 14'b00001000000000 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter ap_ST_fsm_state11 bound to: 14'b00010000000000 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter ap_ST_fsm_state12 bound to: 14'b00100000000000 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter ap_ST_fsm_state13 bound to: 14'b01000000000000 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter ap_ST_fsm_state14 bound to: 14'b10000000000000 
2default:defaulth p
x
? 
?
"Detected attribute (* %s = "%s" *)3982*oasys2 
fsm_encoding2default:default2
none2default:default2l
VC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.v2default:default2
652default:default8@Z8-5534h px? 
?
synthesizing module '%s'%s4497*oasys2'
matrixmul_1D_rev2_A2default:default2
 2default:default2n
XC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2_A.v2default:default2
462default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter DataWidth bound to: 8 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter AddressRange bound to: 1024 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter AddressWidth bound to: 10 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2+
matrixmul_1D_rev2_A_ram2default:default2
 2default:default2n
XC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2_A.v2default:default2
92default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter DWIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter AWIDTH bound to: 10 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter MEM_SIZE bound to: 1024 - type: integer 
2default:defaulth p
x
? 
?
"Detected attribute (* %s = "%s" *)3982*oasys2
	ram_style2default:default2
block2default:default2n
XC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2_A.v2default:default2
222default:default8@Z8-5534h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
matrixmul_1D_rev2_A_ram2default:default2
 2default:default2
12default:default2
12default:default2n
XC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2_A.v2default:default2
92default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
matrixmul_1D_rev2_A2default:default2
 2default:default2
22default:default2
12default:default2n
XC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2_A.v2default:default2
462default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2(
matrixmul_1D_rev2bkb2default:default2
 2default:default2o
YC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2bkb.v2default:default2
342default:default8@Z8-6157h px? 
W
%s
*synth2?
+	Parameter ID bound to: 1 - type: integer 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter NUM_STAGE bound to: 1 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter din0_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
_
%s
*synth2G
3	Parameter din1_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter din2_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter dout_WIDTH bound to: 20 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys20
matrixmul_1D_rev2bkb_DSP48_02default:default2
 2default:default2o
YC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2bkb.v2default:default2
102default:default8@Z8-6157h px? 
j
Hattribute "use_dsp48" has been deprecated, please use "use_dsp" instead 4323*oasysZ8-5974h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
matrixmul_1D_rev2bkb_DSP48_02default:default2
 2default:default2
32default:default2
12default:default2o
YC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2bkb.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
matrixmul_1D_rev2bkb2default:default2
 2default:default2
42default:default2
12default:default2o
YC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2bkb.v2default:default2
342default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
matrixmul_1D_rev22default:default2
 2default:default2
52default:default2
12default:default2l
VC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.v2default:default2
122default:default8@Z8-6155h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2"
AB_address0[9]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[31]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[30]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[29]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[28]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[27]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[26]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[25]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[24]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[23]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[22]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[21]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[20]2default:default2
02default:defaultZ8-3917h px? 
?
!design %s has unconnected port %s3331*oasys2'
matrixmul_1D_rev2_A2default:default2
reset2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 413.594 ; gain = 156.859
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 413.594 ; gain = 156.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 413.594 ; gain = 156.859
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2n
XC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2n
XC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.xdc2default:default8Z20-178h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0352default:default2
776.7422default:default2
1.1052default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:13 . Memory (MB): peak = 776.742 ; gain = 520.008
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:13 . Memory (MB): peak = 776.742 ; gain = 520.008
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:13 . Memory (MB): peak = 776.742 ; gain = 520.008
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
@FSM extraction disabled for register '%s' through user attribute3641*oasys2!
ap_CS_fsm_reg2default:defaultZ8-4490h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2&
exitcond_fu_426_p22default:defaultZ8-5546h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2'
exitcond7_fu_450_p22default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
tmp_1_fu_284_p22default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
tmp_3_fu_301_p22default:defaultZ8-5546h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2'
exitcond6_fu_307_p22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2'
exitcond5_fu_319_p22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2'
exitcond4_fu_350_p22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2'
exitcond3_fu_378_p22default:default2
32default:default2
52default:defaultZ8-5544h px? 
?
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2'
exitcond9_fu_438_p22default:defaultZ8-5546h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 776.742 ; gain = 520.008
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               8K Bit         RAMs := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     13 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
F
%s
*synth2.
Module matrixmul_1D_rev2 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit       Adders := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               20 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     13 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     12 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
L
%s
*synth24
 Module matrixmul_1D_rev2_A_ram 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               8K Bit         RAMs := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
tmp_1_fu_284_p22default:defaultZ8-5546h px? 

8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2#
tmp_3_fu_301_p22default:defaultZ8-5546h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
A_load_reg_639_reg2default:default2l
VC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.v2default:default2
2972default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2&
B_load_reg_644_reg2default:default2l
VC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.v2default:default2
2982default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
 2default:default2l
VC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.v2default:default2
2032default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
 2default:default2l
VC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/matrixmul_1D_rev2.v2default:default2
2032default:default8@Z8-6014h px? 
w
%s
*synth2_
KDSP Report: Generating DSP sum_reg_250_reg, operation Mode is: (P+A2*B2)'.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register B is absorbed into DSP sum_reg_250_reg.
2default:defaulth p
x
? 
i
%s
*synth2Q
=DSP Report: register A is absorbed into DSP sum_reg_250_reg.
2default:defaulth p
x
? 
w
%s
*synth2_
KDSP Report: register sum_reg_250_reg is absorbed into DSP sum_reg_250_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
tDSP Report: operator matrixmul_1D_rev2bkb_U1/matrixmul_1D_rev2bkb_DSP48_0_U/p is absorbed into DSP sum_reg_250_reg.
2default:defaulth p
x
? 
?
%s
*synth2?
tDSP Report: operator matrixmul_1D_rev2bkb_U1/matrixmul_1D_rev2bkb_DSP48_0_U/m is absorbed into DSP sum_reg_250_reg.
2default:defaulth p
x
? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2(
Input_r_address0[10]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2'
Input_r_address0[9]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2'
Input_r_address0[8]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2"
AB_address0[9]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[31]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[30]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[29]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[28]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[27]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[26]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[25]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[24]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[23]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[22]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[21]2default:default2
02default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2%
matrixmul_1D_rev22default:default2
	AB_d0[20]2default:default2
02default:defaultZ8-3917h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
tmp_8_reg_564_reg[3]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
tmp_8_reg_564_reg[4]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
tmp_8_reg_564_reg[7]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[10]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[11]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[12]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[13]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[14]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[15]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[16]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[17]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[18]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[19]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[20]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[21]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[22]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[23]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[24]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[25]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[26]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[27]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[28]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[29]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[30]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[31]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[32]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[33]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[34]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[35]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[36]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[37]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[38]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[39]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[40]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[41]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[42]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[43]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[44]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[45]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[46]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[47]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[48]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[49]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[50]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[51]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[52]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[53]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[54]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[55]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[56]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[57]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[58]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[59]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[60]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[61]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[62]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2)
tmp_8_reg_564_reg[63]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
tmp_8_reg_564_reg[8]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
tmp_8_reg_564_reg[9]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
tmp_4_reg_582_reg[0]2default:default2
FDE2default:default2-
tmp_5_cast_reg_587_reg[5]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
tmp_4_reg_582_reg[1]2default:default2
FDE2default:default2-
tmp_5_cast_reg_587_reg[6]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
tmp_5_cast_reg_587_reg[4]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
tmp_5_cast_reg_587_reg[3]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
tmp_5_cast_reg_587_reg[0]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2-
tmp_5_cast_reg_587_reg[1]2default:default2
FDR2default:default2-
tmp_5_cast_reg_587_reg[2]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
\tmp_5_cast_reg_587_reg[2] 2default:defaultZ8-3333h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2/
\tmp_5_cast_reg_587_reg[7] 2default:defaultZ8-3333h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
tmp_5_cast_reg_587_reg[7]2default:default2%
matrixmul_1D_rev22default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2-
tmp_5_cast_reg_587_reg[2]2default:default2%
matrixmul_1D_rev22default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:11 ; elapsed = 00:00:14 . Memory (MB): peak = 776.742 ; gain = 520.008
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
e
%s*synth2M
9
Block RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+-------------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name              | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px? 
?
%s*synth2?
?|matrixmul_1D_rev2_A_ram: | ram_reg    | 1 K x 8(WRITE_FIRST)   | W | R |                        |   |   | Port A           | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?|matrixmul_1D_rev2_A_ram: | ram_reg    | 1 K x 8(WRITE_FIRST)   | W | R |                        |   |   | Port A           | 1      | 0      | 
2default:defaulth px? 
?
%s*synth2?
?+-------------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px? 
?
%s*synth2?
?Note: The tale above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px? 
_
%s*synth2G
3
DSP: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2?
?+------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name       | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
?+------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|matrixmul_1D_rev2 | (P+A2*B2)'  | 9      | 9      | -      | -      | 20     | 1    | 1    | -    | -    | -     | 0    | 1    | 
2default:defaulth px? 
?
%s*synth2?
?+------------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2?
+i_4_1/A_U/matrixmul_1D_rev2_A_ram_U/ram_reg2default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys2?
+i_4_2/B_U/matrixmul_1D_rev2_A_ram_U/ram_reg2default:defaultZ8-4480h px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:22 ; elapsed = 00:00:26 . Memory (MB): peak = 809.539 ; gain = 552.805
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:26 . Memory (MB): peak = 809.984 ; gain = 553.250
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
N
%s
*synth26
"
Block RAM: Final Mapping  Report
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name              | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|matrixmul_1D_rev2_A_ram: | ram_reg    | 1 K x 8(WRITE_FIRST)   | W | R |                        |   |   | Port A           | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|matrixmul_1D_rev2_A_ram: | ram_reg    | 1 K x 8(WRITE_FIRST)   | W | R |                        |   |   | Port A           | 1      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+-------------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys29
%A_U/matrixmul_1D_rev2_A_ram_U/ram_reg2default:defaultZ8-4480h px? 
?
?The timing for the instance %s (implemented as a block RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
3630*oasys29
%B_U/matrixmul_1D_rev2_A_ram_U/ram_reg2default:defaultZ8-4480h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:26 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |DSP48E1  |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |LUT1     |     5|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT2     |    27|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT3     |    21|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT4     |    42|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT5     |    28|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT6     |    21|
2default:defaulth px? 
F
%s*synth2.
|8     |RAMB18E1 |     2|
2default:defaulth px? 
F
%s*synth2.
|9     |FDRE     |    94|
2default:defaulth px? 
F
%s*synth2.
|10    |FDSE     |     1|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
v
%s
*synth2^
J+------+------------------------------+--------------------------+------+
2default:defaulth p
x
? 
v
%s
*synth2^
J|      |Instance                      |Module                    |Cells |
2default:defaulth p
x
? 
v
%s
*synth2^
J+------+------------------------------+--------------------------+------+
2default:defaulth p
x
? 
v
%s
*synth2^
J|1     |top                           |                          |   242|
2default:defaulth p
x
? 
v
%s
*synth2^
J|2     |  A_U                         |matrixmul_1D_rev2_A       |    21|
2default:defaulth p
x
? 
v
%s
*synth2^
J|3     |    matrixmul_1D_rev2_A_ram_U |matrixmul_1D_rev2_A_ram_1 |    21|
2default:defaulth p
x
? 
v
%s
*synth2^
J|4     |  B_U                         |matrixmul_1D_rev2_A_0     |    21|
2default:defaulth p
x
? 
v
%s
*synth2^
J|5     |    matrixmul_1D_rev2_A_ram_U |matrixmul_1D_rev2_A_ram   |    21|
2default:defaulth p
x
? 
v
%s
*synth2^
J+------+------------------------------+--------------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 22 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
~Synthesis Optimization Runtime : Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 829.793 ; gain = 209.910
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:27 . Memory (MB): peak = 829.793 ; gain = 573.059
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
32default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1062default:default2
372default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:252default:default2
00:00:292default:default2
829.7932default:default2
586.2272default:defaultZ17-268h px? 
K
"No constraint will be written out.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
mC:/Users/SEP16/SoC_2022_MJU/HW2_2/HW2_2_HLS/solution1/impl/verilog/project.runs/synth_1/matrixmul_1D_rev2.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
xExecuting : report_utilization -file matrixmul_1D_rev2_utilization_synth.rpt -pb matrixmul_1D_rev2_utilization_synth.pb
2default:defaulth px? 
?
sreport_utilization: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.031 . Memory (MB): peak = 829.793 ; gain = 0.000
*commonh px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Jun  4 03:57:54 20212default:defaultZ17-206h px? 


End Record