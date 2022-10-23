v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 360 -380 370 -380 {
lab=avdd}
N 360 -410 360 -380 {
lab=avdd}
N 360 -410 370 -410 {
lab=avdd}
N 810 -380 820 -380 {
lab=avdd}
N 820 -410 820 -380 {
lab=avdd}
N 810 -410 820 -410 {
lab=avdd}
N 660 -270 670 -270 {
lab=#net1}
N 660 -270 660 -240 {
lab=#net1}
N 660 -240 670 -240 {
lab=#net1}
N 510 -240 520 -240 {
lab=#net1}
N 520 -270 520 -240 {
lab=#net1}
N 510 -270 520 -270 {
lab=#net1}
N 360 -120 370 -120 {
lab=avss}
N 360 -120 360 -90 {
lab=avss}
N 360 -90 370 -90 {
lab=avss}
N 810 -90 820 -90 {
lab=avss}
N 820 -120 820 -90 {
lab=avss}
N 810 -120 820 -120 {
lab=avss}
N 370 -90 370 -70 {
lab=avss}
N 370 -70 810 -70 {
lab=avss}
N 810 -90 810 -70 {
lab=avss}
N 670 -440 670 -410 {
lab=avdd}
N 510 -440 510 -410 {
lab=avdd}
N 510 -380 520 -380 {
lab=avdd}
N 520 -410 520 -380 {
lab=avdd}
N 510 -410 520 -410 {
lab=avdd}
N 660 -380 670 -380 {
lab=avdd}
N 660 -410 660 -380 {
lab=avdd}
N 660 -410 670 -410 {
lab=avdd}
N 410 -120 770 -120 {
lab=#net2}
N 410 -150 410 -120 {
lab=#net2}
N 370 -150 410 -150 {
lab=#net2}
N 510 -240 510 -230 {
lab=#net1}
N 510 -230 670 -230 {
lab=#net1}
N 670 -240 670 -230 {
lab=#net1}
N 810 -440 810 -410 {
lab=avdd}
N 370 -440 370 -410 {
lab=avdd}
N 410 -380 470 -380 {
lab=#net3}
N 710 -380 770 -380 {
lab=#net4}
N 710 -380 710 -350 {
lab=#net4}
N 670 -350 710 -350 {
lab=#net4}
N 470 -350 510 -350 {
lab=#net3}
N 470 -380 470 -350 {
lab=#net3}
N 370 -350 370 -150 {
lab=#net2}
N 810 -350 810 -150 {
lab=out}
N 510 -350 510 -300 {
lab=#net3}
N 670 -350 670 -300 {
lab=#net4}
N 590 -150 600 -150 {
lab=avss}
N 600 -180 600 -150 {
lab=avss}
N 590 -180 600 -180 {
lab=avss}
N 590 -150 590 -70 {
lab=avss}
N 590 -230 590 -210 {
lab=#net1}
N 370 -440 810 -440 {
lab=avdd}
N 1230 -380 1240 -380 {
lab=avdd}
N 1240 -410 1240 -380 {
lab=avdd}
N 1230 -410 1240 -410 {
lab=avdd}
N 1230 -90 1240 -90 {
lab=avss}
N 1240 -120 1240 -90 {
lab=avss}
N 1230 -120 1240 -120 {
lab=avss}
N 1230 -90 1230 -70 {
lab=avss}
N 1230 -440 1230 -410 {
lab=avdd}
N 1230 -350 1230 -150 {
lab=#net5}
N 1190 -220 1190 -120 {
lab=avss}
N 1190 -380 1190 -350 {
lab=avss}
N 1190 -350 1190 -220 {
lab=avss}
N 1360 -370 1370 -370 {
lab=avdd}
N 1370 -400 1370 -370 {
lab=avdd}
N 1360 -400 1370 -400 {
lab=avdd}
N 1360 -80 1370 -80 {
lab=avss}
N 1370 -110 1370 -80 {
lab=avss}
N 1360 -110 1370 -110 {
lab=avss}
N 1360 -80 1360 -60 {
lab=avss}
N 1360 -430 1360 -400 {
lab=avdd}
N 1360 -340 1360 -140 {
lab=#net6}
N 1320 -210 1320 -110 {
lab=#net5}
N 1320 -370 1320 -340 {
lab=#net5}
N 1320 -340 1320 -210 {
lab=#net5}
N 1230 -220 1320 -220 {
lab=#net5}
N 810 -220 940 -220 {
lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 490 -270 0 0 {name=M1
L=0.15
W=1.4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 390 -380 0 1 {name=M3
L=0.15
W=14.0
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 790 -380 0 0 {name=M2
L=0.15
W=14.0
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 690 -270 0 1 {name=M6
L=0.15
W=1.4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 -120 0 1 {name=M7
L=0.15
W=7.0
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 790 -120 0 0 {name=M8
L=0.15
W=7.0
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} 220 -550 0 0 {name=V1 value=0}
C {devices/vsource.sym} 270 -550 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} 270 -580 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 220 -580 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 270 -520 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 220 -520 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 590 -440 0 0 {name=l1 lab=avdd}
C {devices/vdd.sym} 590 -70 2 0 {name=l2 lab=avss}
C {devices/code_shown.sym} 730 -490 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/code.sym} 760 -620 0 0 {name=s2 only_toplevel=false value="
.control
set temp=25
save in1 in2 in3 out @V1[i] @V6[i] @C3[i]
tran 0.05n 300n 0.0n
*ac dec 10 10 10meg
*plot @V1[i]
*plot in1 in2 out
*plot @V6[i]
*plot in3 out
plot in1 out
plot @C3[i]
*fft in1 in2 out
*plot db(mag(out1)) xlimit 0.1g 15g ylimit 0.0 -200
*plot db(mag(clkin)) xlimit 0.1g 15g ylimit 0.0 -200
*plot db(mag(clkin)) db(mag(out1)) db(mag(out2)) db(mag(out3)) db(mag(out4)) xlimit 0.1g 10g ylimit 0.0 -200
*compose values start=0.001 stop=0.101 step=0.01
*foreach val $&values
*	echo run = $val
*	alter @v3[sine] = [ 0.9 $val 10meg 0 0 180 ] $ vector
*	alter @v4[sine] = [ 0.9 $val 10meg 0 0 0 ] $ vector
*	save in1 in2 in3 @V6[i] @C3[i]
*	tran 0.5n 400n 10n
*	run
*end
*compose values start=0.1meg stop=1.51meg step=0.1meg
*foreach val $&values
*	echo run = $val
*	alter @v3[sine] = [ 0.9 0.01 $val 0 0 180 ] $ vector
*	alter @v4[sine] = [ 0.9 0.01 $val 0 0 0 ] $ vector
*	save in1 in2 @V6[i] out
*	tran 10n 10000n 10n
*	run
*end
*compose values start=0.85 stop=0.95 step=0.01
*foreach val $&values
*	echo run = $val
*	alter @v3[sine] = [ $val 0.01 10meg 0 0 180 ] $ vector
*	alter @v4[sine] = [ $val 0.01 10meg 0 0 0 ] $ vector
*	save in1 in2 @V6[i] out @C3[i]
*	tran 0.1n 200n 20n
*	run
*end
*plot tran1.in1 tran2.in1 tran3.in1 tran4.in1 tran5.in1 tran6.in1 tran7.in1 tran8.in1 tran9.in1 tran10.in1 tran11.in1
*plot tran1.@V6[i] tran2.@V6[i] tran3.@V6[i] tran4.@V6[i] tran5.@V6[i] tran6.@V6[i] tran7.@V6[i] tran8.@V6[i] tran9.@V6[i] tran10.@V6[i] tran11.@V6[i]
*plot tran1.@C3[i] tran2.@C3[i] tran3.@C3[i] tran4.@C3[i] tran5.@C3[i] tran6.@C3[i] tran7.@C3[i] tran8.@C3[i] tran9.@C3[i] tran10.@C3[i] tran11.@C3[i]
*plot tran1.out tran2.out tran3.out tran4.out tran5.out tran6.out tran7.out tran8.out tran9.out tran10.out tran11.out
*plot tran1.out tran1.in1 tran11.out tran11.in1
*plot tran1.in1 tran1.in2 tran1.out
*plot tran1.in3 tran1.out
.endc
.end
"}
C {devices/vsource.sym} 580 -550 0 0 {name=V4 value="SINE 0.9 0.01 10meg 0 0 180"}
C {devices/vdd.sym} 580 -520 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 580 -580 0 0 {name=l13 lab=in2}
C {devices/vdd.sym} 330 -520 2 0 {name=l12 lab=avss}
C {devices/vdd.sym} 330 -580 0 0 {name=l14 lab=bias}
C {devices/vsource.sym} 540 -550 0 1 {name=V3 value="SINE 0.9 0.01 10meg 0 0 0"}
C {devices/vdd.sym} 540 -520 2 1 {name=l16 lab=avss}
C {devices/vdd.sym} 540 -580 0 1 {name=l17 lab=in1}
C {devices/capa.sym} 940 -190 0 1 {name=C3
m=1
value=2.0p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 940 -160 2 0 {name=l15 lab=avss}
C {devices/vsource.sym} 330 -550 0 0 {name=V5 value=1.3078}
C {sky130_fd_pr/pfet_01v8.sym} 490 -380 0 0 {name=M4
L=0.15
W=1.4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 690 -380 0 1 {name=M5
L=0.15
W=1.4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 570 -180 0 0 {name=M9
L=0.15
W=4.2
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1210 -380 0 0 {name=M12
L=0.15
W=5.6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1210 -120 0 0 {name=M13
L=0.15
W=1.4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 1230 -70 2 0 {name=l21 lab=avss}
C {devices/vdd.sym} 1230 -440 0 0 {name=l22 lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 1340 -370 0 0 {name=M10
L=0.15
W=5.6
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 1340 -110 0 0 {name=M11
L=0.15
W=1.4
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 810 -280 0 1 {name=l9 sig_type=std_logic lab=out}
C {devices/vdd.sym} 1360 -60 2 0 {name=l18 lab=avss}
C {devices/vdd.sym} 1360 -430 0 0 {name=l19 lab=avdd}
C {devices/vsource.sym} 1050 -190 0 0 {name=V6 value=0}
C {devices/vdd.sym} 1050 -160 2 0 {name=l23 lab=avss}
C {devices/vdd.sym} 1190 -120 2 0 {name=l24 lab=avss}
C {devices/vdd.sym} 1050 -220 0 0 {name=l8 lab=xxx}
C {devices/vdd.sym} 550 -180 0 0 {name=l20 lab=bias}
C {devices/vsource.sym} 940 -570 0 0 {name=V7 value="PULSE(0.8 1.0 10n 1p 1p 20n 40n)"}
C {devices/vdd.sym} 940 -540 2 0 {name=l25 lab=avss}
C {devices/vdd.sym} 940 -600 0 0 {name=l26 lab=in3}
C {devices/lab_pin.sym} 710 -270 0 1 {name=l5 sig_type=std_logic lab=in1}
C {devices/vdd.sym} 230 -310 0 0 {name=l28 lab=vc}
C {devices/vsource.sym} 230 -280 0 0 {name=V8 value=0.9}
C {devices/vdd.sym} 230 -250 2 0 {name=l27 lab=avss}
C {devices/lab_pin.sym} 470 -270 0 0 {name=l6 sig_type=std_logic lab=out}
