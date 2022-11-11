v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 710 -150 710 -120 {
lab=out1}
N 670 -180 670 -90 {
lab=#net1}
N 710 -50 710 -20 {
lab=vss}
N 710 -240 710 -210 {
lab=vdd}
N 670 -90 670 -80 {
lab=#net1}
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
N 910 -170 920 -170 {
lab=vdd}
N 920 -200 920 -170 {
lab=vdd}
N 910 -200 920 -200 {
lab=vdd}
N 910 -90 920 -90 {
lab=vss}
N 920 -90 920 -60 {
lab=vss}
N 910 -60 920 -60 {
lab=vss}
N 870 -90 910 -60 {
lab=vss}
N 870 -90 910 -120 {
lab=vss}
N 870 -170 910 -140 {
lab=vdd}
N 870 -170 910 -200 {
lab=vdd}
N 640 -130 670 -130 {
lab=#net1}
C {devices/iopin.sym} 460 -130 0 1 {name=p1 lab=in1}
C {devices/lab_pin.sym} 540 -170 3 1 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 540 -80 3 0 {name=l3 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 690 -80 0 0 {name=M4
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
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 710 -240 3 1 {name=l9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 710 -20 3 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 790 -130 0 0 {name=p8 lab=out1}
C {devices/iopin.sym} 820 -280 0 1 {name=l13 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 820 -220 0 1 {name=l6 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 690 -180 0 0 {name=M1
L=0.15
W=5.6
nf=8
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
C {sky130_fd_pr/pfet_01v8.sym} 890 -170 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 890 -90 0 0 {name=M6
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
C {devices/lab_pin.sym} 910 -60 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 910 -200 3 1 {name=l15 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 610 -110 0 0 {name=x1}
