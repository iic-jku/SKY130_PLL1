v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -40 410 50 410 {}
N -100 410 -80 410 {}
N -40 320 -40 340 {}
N -40 480 -40 500 {}
N -80 370 -80 450 {}
N -40 400 -40 420 {}
C {sky130_fd_pr/nfet_01v8.sym} -60 450 0 0 {name=M19
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
C {sky130_fd_pr/pfet_01v8.sym} -60 370 0 0 {name=M20
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
C {devices/lab_pin.sym} -40 450 2 0 {name=l56 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -40 370 2 0 {name=l57 sig_type=std_logic lab=avdd}
C {devices/iopin.sym} -90 410 2 0 {name=p1 lab=in}
C {devices/iopin.sym} -40 330 3 0 {name=p2 lab=avdd}
C {devices/iopin.sym} -40 490 1 0 {name=p3 lab=avss}
C {devices/iopin.sym} 40 410 2 1 {name=p7 lab=out}
