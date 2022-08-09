v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -270 510 -240 510 {
lab=#net1}
N -200 510 -190 510 {
lab=avss}
N -190 510 -190 540 {
lab=avss}
N -200 540 -190 540 {
lab=avss}
N -200 540 -200 590 {
lab=avss}
N -200 230 -200 480 {
lab=#net1}
N -200 120 -200 170 {
lab=avdd}
N -200 200 -190 200 {
lab=avdd}
N -190 170 -190 200 {
lab=avdd}
N -200 170 -190 170 {
lab=avdd}
N -240 200 -240 230 {
lab=#net1}
N -240 230 -200 230 {
lab=#net1}
N -240 480 -240 510 {
lab=#net1}
N -240 480 -200 480 {
lab=#net1}
C {devices/iopin.sym} -200 130 3 0 {name=p2 lab=avdd}
C {devices/iopin.sym} -200 580 1 0 {name=p3 lab=avss}
C {devices/iopin.sym} -260 510 2 0 {name=p7 lab=vctrl}
C {sky130_fd_pr/nfet_01v8.sym} -220 510 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} -220 200 0 0 {name=M6
L=0.15
W=3.5
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
