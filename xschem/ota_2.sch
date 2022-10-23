v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 -370 120 -370 {
lab=avdd}
N 110 -400 110 -370 {
lab=avdd}
N 110 -400 120 -400 {
lab=avdd}
N 560 -370 570 -370 {
lab=avdd}
N 570 -400 570 -370 {
lab=avdd}
N 560 -400 570 -400 {
lab=avdd}
N 410 -260 420 -260 {
lab=#net1}
N 410 -260 410 -230 {
lab=#net1}
N 410 -230 420 -230 {
lab=#net1}
N 260 -230 270 -230 {
lab=#net1}
N 270 -260 270 -230 {
lab=#net1}
N 260 -260 270 -260 {
lab=#net1}
N 110 -110 120 -110 {
lab=avss}
N 110 -110 110 -80 {
lab=avss}
N 110 -80 120 -80 {
lab=avss}
N 560 -80 570 -80 {
lab=avss}
N 570 -110 570 -80 {
lab=avss}
N 560 -110 570 -110 {
lab=avss}
N 120 -80 120 -60 {
lab=avss}
N 120 -60 560 -60 {
lab=avss}
N 560 -80 560 -60 {
lab=avss}
N 420 -430 420 -400 {
lab=avdd}
N 260 -430 260 -400 {
lab=avdd}
N 260 -370 270 -370 {
lab=avdd}
N 270 -400 270 -370 {
lab=avdd}
N 260 -400 270 -400 {
lab=avdd}
N 410 -370 420 -370 {
lab=avdd}
N 410 -400 410 -370 {
lab=avdd}
N 410 -400 420 -400 {
lab=avdd}
N 160 -110 520 -110 {
lab=#net2}
N 160 -140 160 -110 {
lab=#net2}
N 120 -140 160 -140 {
lab=#net2}
N 260 -230 260 -220 {
lab=#net1}
N 260 -220 420 -220 {
lab=#net1}
N 420 -230 420 -220 {
lab=#net1}
N 560 -430 560 -400 {
lab=avdd}
N 120 -430 120 -400 {
lab=avdd}
N 160 -370 220 -370 {
lab=#net3}
N 460 -370 520 -370 {
lab=#net4}
N 460 -370 460 -340 {
lab=#net4}
N 420 -340 460 -340 {
lab=#net4}
N 220 -340 260 -340 {
lab=#net3}
N 220 -370 220 -340 {
lab=#net3}
N 120 -340 120 -140 {
lab=#net2}
N 560 -340 560 -140 {
lab=out}
N 260 -340 260 -290 {
lab=#net3}
N 420 -340 420 -290 {
lab=#net4}
N 340 -140 350 -140 {
lab=avss}
N 350 -170 350 -140 {
lab=avss}
N 340 -170 350 -170 {
lab=avss}
N 340 -140 340 -60 {
lab=avss}
N 340 -220 340 -200 {
lab=#net1}
N 120 -430 560 -430 {
lab=avdd}
C {devices/iopin.sym} 250 -590 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 250 -570 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 250 -550 0 0 {name=p3 lab=in_p}
C {devices/iopin.sym} 250 -530 0 0 {name=p4 lab=in_n}
C {devices/iopin.sym} 250 -510 0 0 {name=p5 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 240 -260 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 140 -370 0 1 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -370 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 440 -260 0 1 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 140 -110 0 1 {name=M12
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -110 0 0 {name=M13
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
C {devices/vdd.sym} 340 -430 0 0 {name=l1 lab=avdd}
C {devices/vdd.sym} 340 -60 2 0 {name=l2 lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 240 -370 0 0 {name=M14
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
C {sky130_fd_pr/pfet_01v8.sym} 440 -370 0 1 {name=M15
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
C {sky130_fd_pr/nfet_01v8.sym} 320 -170 0 0 {name=M16
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
C {devices/lab_pin.sym} 560 -270 0 1 {name=l9 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 460 -260 0 1 {name=l5 sig_type=std_logic lab=in_p}
C {devices/lab_pin.sym} 220 -260 0 0 {name=l3 sig_type=std_logic lab=in_n}
C {devices/lab_pin.sym} 300 -170 0 0 {name=l4 sig_type=std_logic lab=bias}
C {devices/iopin.sym} 250 -490 0 0 {name=p6 lab=bias}
