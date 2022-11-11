v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -10 210 -10 370 {
lab=sw_out}
N -70 210 -70 370 {
lab=sw_in}
N -110 290 -70 290 {
lab=sw_in}
N -10 290 20 290 {
lab=sw_out}
N -110 510 -80 510 {
lab=vdd}
N 10 510 40 510 {
lab=vss}
N -40 590 -40 610 {
lab=sw}
N 50 370 80 410 {
lab=sw_out}
N 80 410 110 370 {
lab=sw_out}
N 80 170 110 210 {
lab=sw_out}
N 50 210 80 170 {
lab=sw_out}
N -10 210 50 210 {
lab=sw_out}
N -10 370 50 370 {
lab=sw_out}
C {sky130_fd_pr/pfet_01v8.sym} -40 190 3 1 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} -40 390 3 0 {name=M18
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
C {devices/lab_pin.sym} -40 170 2 0 {name=l80 sig_type=std_logic lab=sw}
C {devices/iopin.sym} -100 290 2 0 {name=p1 lab=sw_in}
C {devices/iopin.sym} -100 510 2 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 30 510 0 0 {name=l1 sig_type=std_logic lab=vss}
C {devices/iopin.sym} -40 600 1 0 {name=p4 lab=sw}
C {devices/iopin.sym} 10 290 2 1 {name=p7 lab=sw_out}
C {inv_simple1.sym} -20 440 3 0 {name=x1}
C {sky130_fd_pr/pfet_01v8.sym} 80 190 3 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 80 390 3 0 {name=M2
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
C {devices/lab_pin.sym} -40 370 1 0 {name=p5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -40 210 3 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 80 210 3 0 {name=p2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 80 370 1 0 {name=p3 sig_type=std_logic lab=vss}
