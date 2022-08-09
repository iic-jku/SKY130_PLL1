v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -10 210 -10 370 {
lab=out}
N -70 210 -70 370 {
lab=in}
N -110 290 -70 290 {
lab=in}
N -10 290 20 290 {
lab=out}
N -110 510 -80 510 {
lab=avdd}
N 10 510 40 510 {
lab=avss}
N -40 590 -40 610 {}
C {sky130_fd_pr/pfet_01v8.sym} -40 190 1 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} -40 390 3 0 {name=M18
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
C {devices/lab_pin.sym} -40 210 3 0 {name=l52 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -40 370 1 0 {name=l53 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -40 170 2 0 {name=l80 sig_type=std_logic lab=sw}
C {devices/iopin.sym} -100 290 2 0 {name=p1 lab=in}
C {devices/iopin.sym} -100 510 2 0 {name=p2 lab=avdd}
C {devices/iopin.sym} 30 510 0 0 {name=p3 lab=avss}
C {devices/iopin.sym} -40 600 1 0 {name=p4 lab=sw}
C {devices/iopin.sym} 10 290 2 1 {name=p7 lab=out}
C {ma2022/inv_simple1.sym} -20 440 3 0 {name=x1}
