v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1040 -150 1040 -120 {
lab=#net1}
N 1040 -50 1040 -20 {
lab=vss}
N 1040 -240 1040 -210 {
lab=vdd}
N 1040 -120 1040 -110 {
lab=#net1}
N 510 -150 510 -120 {
lab=#net2}
N 510 -50 510 -20 {
lab=vss}
N 510 -240 510 -210 {
lab=vdd}
N 510 -120 510 -110 {
lab=#net2}
N 510 -50 520 -50 {
lab=vss}
N 520 -80 520 -50 {
lab=vss}
N 510 -80 520 -80 {
lab=vss}
N 510 -180 520 -180 {
lab=vdd}
N 520 -210 520 -180 {
lab=vdd}
N 510 -210 520 -210 {
lab=vdd}
N 1040 -180 1050 -180 {
lab=vdd}
N 1050 -210 1050 -180 {
lab=vdd}
N 1040 -210 1050 -210 {
lab=vdd}
N 1040 -50 1050 -50 {
lab=vss}
N 1050 -80 1050 -50 {
lab=vss}
N 1040 -80 1050 -80 {
lab=vss}
N 710 -150 710 -120 {
lab=out1}
N 670 -180 670 -90 {
lab=#net2}
N 710 -50 710 -20 {
lab=vss}
N 710 -240 710 -210 {
lab=vdd}
N 670 -90 670 -80 {
lab=#net2}
N 710 -120 710 -110 {
lab=out1}
N 710 -130 800 -130 {
lab=out1}
N 710 -50 720 -50 {
lab=vss}
N 720 -80 720 -50 {
lab=vss}
N 710 -80 720 -80 {
lab=vss}
N 710 -180 720 -180 {
lab=vdd}
N 720 -210 720 -180 {
lab=vdd}
N 710 -210 720 -210 {
lab=vdd}
N 510 -130 580 -130 {
lab=#net2}
N 580 -130 610 -130 {
lab=#net2}
N 1240 -150 1240 -120 {
lab=out2}
N 1200 -180 1200 -90 {
lab=#net1}
N 1240 -50 1240 -20 {
lab=vss}
N 1240 -240 1240 -210 {
lab=vdd}
N 1200 -90 1200 -80 {
lab=#net1}
N 1240 -120 1240 -110 {
lab=out2}
N 1240 -130 1330 -130 {
lab=out2}
N 1240 -180 1250 -180 {
lab=vdd}
N 1250 -210 1250 -180 {
lab=vdd}
N 1240 -210 1250 -210 {
lab=vdd}
N 1240 -50 1250 -50 {
lab=vss}
N 1250 -80 1250 -50 {
lab=vss}
N 1240 -80 1250 -80 {
lab=vss}
N 1040 -130 1140 -130 {
lab=#net1}
N 980 -130 1000 -130 {
lab=in2}
N 1000 -130 1000 -80 {
lab=in2}
N 1000 -180 1000 -130 {
lab=in2}
N 460 -130 470 -130 {
lab=in1}
N 470 -180 470 -130 {
lab=in1}
N 470 -130 470 -80 {
lab=in1}
N 610 -130 670 -130 {
lab=#net2}
N 1140 -130 1190 -130 {
lab=#net1}
N 1190 -130 1200 -130 {
lab=#net1}
C {devices/iopin.sym} 460 -130 0 1 {name=p1 lab=in1}
C {devices/iopin.sym} 980 -130 0 1 {name=p2 lab=in2}
C {sky130_fd_pr/nfet_01v8.sym} 1020 -80 0 0 {name=M6
L=0.15
W=0.7
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
C {sky130_fd_pr/nfet_01v8.sym} 490 -80 0 0 {name=M8
L=0.15
W=0.7
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
C {sky130_fd_pr/pfet_01v8.sym} 490 -180 0 0 {name=M9
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
C {devices/lab_pin.sym} 510 -240 3 1 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1040 -240 3 1 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 510 -20 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1040 -20 3 0 {name=l4 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 690 -80 0 0 {name=M4
L=0.15
W=0.7
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
C {devices/lab_pin.sym} 710 -240 3 1 {name=l7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 710 -20 3 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 790 -130 0 0 {name=p8 lab=out1}
C {sky130_fd_pr/nfet_01v8.sym} 1220 -80 0 0 {name=M10
L=0.15
W=0.7
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
C {devices/lab_pin.sym} 1240 -240 3 1 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1240 -20 3 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 1320 -130 0 0 {name=p6 lab=out2}
C {devices/iopin.sym} 820 -280 0 1 {name=l13 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 820 -220 0 1 {name=l14 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 690 -180 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 1020 -180 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 1220 -180 0 0 {name=M3
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
