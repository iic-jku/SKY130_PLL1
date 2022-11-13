v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -370 120 -370 {
lab=vdd}
N 110 -400 110 -370 {
lab=vdd}
N 110 -400 120 -400 {
lab=vdd}
N 560 -370 570 -370 {
lab=vdd}
N 570 -400 570 -370 {
lab=vdd}
N 560 -400 570 -400 {
lab=vdd}
N 110 -110 120 -110 {
lab=vss}
N 110 -110 110 -80 {
lab=vss}
N 110 -80 120 -80 {
lab=vss}
N 560 -80 570 -80 {
lab=vss}
N 570 -110 570 -80 {
lab=vss}
N 560 -110 570 -110 {
lab=vss}
N 120 -80 120 -60 {
lab=vss}
N 340 -60 560 -60 {
lab=vss}
N 560 -80 560 -60 {
lab=vss}
N 420 -430 420 -400 {
lab=vdd}
N 260 -430 260 -400 {
lab=vdd}
N 260 -370 270 -370 {
lab=vdd}
N 270 -400 270 -370 {
lab=vdd}
N 260 -400 270 -400 {
lab=vdd}
N 410 -370 420 -370 {
lab=vdd}
N 410 -400 410 -370 {
lab=vdd}
N 410 -400 420 -400 {
lab=vdd}
N 160 -110 520 -110 {
lab=#net1}
N 160 -140 160 -110 {
lab=#net1}
N 120 -140 160 -140 {
lab=#net1}
N 260 -230 260 -220 {
lab=#net2}
N 340 -220 420 -220 {
lab=#net2}
N 560 -430 560 -400 {
lab=vdd}
N 120 -430 120 -400 {
lab=vdd}
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
lab=#net1}
N 560 -340 560 -140 {
lab=out}
N 260 -340 260 -290 {
lab=#net3}
N 420 -340 420 -290 {
lab=#net4}
N 340 -140 350 -140 {
lab=vss}
N 350 -170 350 -140 {
lab=vss}
N 340 -170 350 -170 {
lab=vss}
N 340 -140 340 -60 {
lab=vss}
N 340 -220 340 -200 {
lab=#net2}
N 420 -430 560 -430 {
lab=vdd}
N 560 -430 710 -430 {
lab=vdd}
N 710 -430 710 -400 {
lab=vdd}
N 670 -370 710 -400 {
lab=vdd}
N 670 -370 710 -340 {
lab=vdd}
N 710 -400 710 -370 {
lab=vdd}
N 560 -60 710 -60 {
lab=vss}
N 670 -90 710 -120 {
lab=vss}
N 670 -90 710 -60 {
lab=vss}
N 420 -220 680 -220 {
lab=#net2}
N 710 -90 710 -60 {
lab=vss}
N 420 -230 420 -220 {
lab=#net2}
N 260 -260 420 -260 {
lab=vss}
N 640 -250 680 -280 {
lab=#net2}
N 640 -250 680 -220 {
lab=#net2}
N 680 -250 780 -250 {
lab=vss}
N 780 -250 780 -60 {
lab=vss}
N 710 -60 780 -60 {
lab=vss}
N 260 -430 420 -430 {
lab=vdd}
N 120 -430 260 -430 {
lab=vdd}
N 120 -60 340 -60 {
lab=vss}
N 260 -220 340 -220 {
lab=#net2}
C {devices/iopin.sym} 250 -590 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 250 -570 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 250 -550 0 0 {name=p3 lab=in_p}
C {devices/iopin.sym} 250 -530 0 0 {name=p4 lab=in_n}
C {devices/iopin.sym} 250 -510 0 0 {name=p5 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 240 -260 0 0 {name=M1
L=0.15
W=1.4
nf=2 
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
nf=20
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
nf=20
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
nf=2 
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
nf=10 
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
nf=10 
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -370 0 0 {name=M14
L=0.15
W=1.4
nf=2
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
nf=2
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
nf=6 
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
C {devices/lab_pin.sym} 300 -170 0 0 {name=l4 sig_type=std_logic lab=vbias}
C {devices/iopin.sym} 250 -490 0 0 {name=l6 sig_type=std_logic lab=vbias}
C {sky130_fd_pr/pfet_01v8.sym} 690 -370 0 0 {name=M5
L=0.15
W=2.8
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 690 -90 0 0 {name=M6
L=0.15
W=4.2
nf=6
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
C {devices/lab_pin.sym} 340 -430 3 1 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 340 -60 1 1 {name=l2 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 660 -250 0 0 {name=M7
L=0.15
W=2.8
nf=2 
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
C {devices/lab_wire.sym} 350 -260 0 0 {name=p6 sig_type=std_logic lab=vss}
