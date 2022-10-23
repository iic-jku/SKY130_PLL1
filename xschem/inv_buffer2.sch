v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 510 -150 510 -120 {
lab=#net1}
N 510 -50 510 -20 {
lab=avss}
N 510 -240 510 -210 {
lab=avdd}
N 510 -120 510 -110 {
lab=#net1}
N 510 -50 520 -50 {
lab=avss}
N 520 -80 520 -50 {
lab=avss}
N 510 -80 520 -80 {
lab=avss}
N 510 -180 520 -180 {
lab=avdd}
N 520 -210 520 -180 {
lab=avdd}
N 510 -210 520 -210 {
lab=avdd}
N 710 -150 710 -120 {
lab=out1}
N 670 -180 670 -90 {
lab=#net1}
N 710 -50 710 -20 {
lab=avss}
N 710 -240 710 -210 {
lab=avdd}
N 670 -90 670 -80 {
lab=#net1}
N 710 -120 710 -110 {
lab=out1}
N 710 -130 800 -130 {
lab=out1}
N 710 -50 720 -50 {
lab=avss}
N 720 -80 720 -50 {
lab=avss}
N 710 -80 720 -80 {
lab=avss}
N 710 -180 720 -180 {
lab=avdd}
N 720 -210 720 -180 {
lab=avdd}
N 710 -210 720 -210 {
lab=avdd}
N 510 -130 580 -130 {
lab=#net1}
N 580 -130 610 -130 {
lab=#net1}
N 460 -130 470 -130 {
lab=in1}
N 470 -180 470 -130 {
lab=in1}
N 470 -130 470 -80 {
lab=in1}
N 610 -70 610 -60 {
lab=GND}
N 610 -130 670 -130 {
lab=#net1}
C {devices/iopin.sym} 460 -130 0 1 {name=p1 lab=in1}
C {sky130_fd_pr/nfet_01v8.sym} 490 -80 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} 490 -180 0 0 {name=M9
L=0.15
W=2.8
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
C {devices/lab_pin.sym} 510 -240 3 1 {name=l1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 510 -20 3 0 {name=l3 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 690 -80 0 0 {name=M4
L=0.15
W=2.8
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
C {devices/lab_pin.sym} 710 -240 3 1 {name=l9 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 710 -20 3 0 {name=l10 sig_type=std_logic lab=avss}
C {devices/iopin.sym} 790 -130 0 0 {name=p8 lab=out1}
C {devices/iopin.sym} 820 -280 0 1 {name=p3 lab=avdd}
C {devices/iopin.sym} 820 -220 0 1 {name=p4 lab=avss}
C {devices/capa.sym} 610 -100 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 610 -60 0 0 {name=l5 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 690 -180 0 0 {name=M1
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
