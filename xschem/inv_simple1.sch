v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 410 50 410 {
lab=out}
N -100 410 -80 410 {
lab=in}
N -40 320 -40 340 {
lab=vdd}
N -40 480 -40 500 {
lab=vss}
N -80 370 -80 450 {
lab=in}
N -40 400 -40 420 {
lab=out}
N 180 370 220 400 {
lab=vdd}
N 180 370 220 340 {
lab=vdd}
N 220 340 220 370 {
lab=vdd}
N 180 450 220 420 {
lab=vss}
N 180 450 220 480 {
lab=vss}
N 220 450 220 480 {
lab=vss}
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
C {devices/lab_pin.sym} -40 450 2 0 {name=l56 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} -40 370 2 0 {name=l57 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} -90 410 2 0 {name=p1 lab=in}
C {devices/iopin.sym} -40 330 3 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} -40 490 1 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 40 410 2 1 {name=p7 lab=out}
C {sky130_fd_pr/pfet_01v8.sym} 200 370 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 200 450 0 0 {name=M2
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
C {devices/lab_pin.sym} 220 480 3 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 220 340 1 0 {name=l2 sig_type=std_logic lab=vdd}
