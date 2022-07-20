v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 200 -60 200 {
lab=avss}
N 400 150 410 150 {
lab=avss}
N 400 350 410 350 {
lab=avss}
N 400 550 410 550 {
lab=avss}
N -70 250 -70 270 {
lab=avss}
N -70 230 -70 250 {
lab=avss}
N -270 510 -240 510 {
lab=swi}
N -70 110 -70 140 {
lab=in}
N -60 200 -60 230 {
lab=avss}
N -70 230 -60 230 {
lab=avss}
N 410 550 410 580 {
lab=avss}
N 400 580 410 580 {
lab=avss}
N 400 380 410 380 {
lab=avss}
N 410 350 410 380 {
lab=avss}
N 400 180 410 180 {
lab=avss}
N 410 150 410 180 {
lab=avss}
N -200 510 -190 510 {
lab=avss}
N -190 510 -190 540 {
lab=avss}
N -200 540 -190 540 {
lab=avss}
N -200 540 -200 590 {
lab=avss}
N -200 230 -200 480 {
lab=swi}
N -200 120 -200 170 {
lab=avdd}
N -200 200 -190 200 {
lab=avdd}
N -190 170 -190 200 {
lab=avdd}
N -200 170 -190 170 {
lab=avdd}
N -240 200 -240 230 {
lab=swi}
N -240 230 -200 230 {
lab=swi}
N -240 480 -240 510 {
lab=swi}
N -240 480 -200 480 {
lab=swi}
N 50 150 70 150 {
lab=b2}
N 50 350 70 350 {
lab=b1}
N 50 550 70 550 {
lab=b0}
C {devices/lab_pin.sym} 120 120 1 0 {name=l54 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 230 550 2 0 {name=l55 sig_type=std_logic lab=swo1}
C {devices/lab_pin.sym} 160 120 1 0 {name=l60 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 160 210 3 0 {name=l58 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 230 350 2 0 {name=l63 sig_type=std_logic lab=swo2}
C {devices/lab_pin.sym} 230 150 2 0 {name=l71 sig_type=std_logic lab=swo3}
C {devices/lab_pin.sym} 360 550 2 1 {name=l76 sig_type=std_logic lab=swo1}
C {devices/lab_pin.sym} 360 350 2 1 {name=l77 sig_type=std_logic lab=swo2}
C {devices/lab_pin.sym} 360 150 2 1 {name=l78 sig_type=std_logic lab=swo3}
C {devices/lab_pin.sym} -270 510 2 1 {name=l79 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} -70 270 3 0 {name=l4 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 400 580 3 0 {name=l7 sig_type=std_logic lab=avss}
C {devices/iopin.sym} -70 120 3 0 {name=p1 lab=in}
C {devices/iopin.sym} -200 130 3 0 {name=p2 lab=avdd}
C {devices/iopin.sym} -200 580 1 0 {name=p3 lab=avss}
C {devices/iopin.sym} 60 550 2 0 {name=p4 lab=b0}
C {devices/iopin.sym} 60 350 2 0 {name=p5 lab=b1}
C {devices/iopin.sym} 60 150 2 0 {name=p6 lab=b2}
C {sky130_fd_pr/nfet_01v8.sym} -90 200 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 380 150 0 0 {name=M5
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 350 0 0 {name=M3
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 380 550 0 0 {name=M4
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
C {devices/lab_pin.sym} 400 120 1 0 {name=l3 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 400 320 1 0 {name=l1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 400 520 1 0 {name=l2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} 400 380 3 0 {name=l5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 400 180 3 0 {name=l6 sig_type=std_logic lab=avss}
C {devices/iopin.sym} -260 420 2 0 {name=p7 lab=vctrl}
C {devices/lab_pin.sym} -110 200 3 0 {name=l8 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -70 170 2 0 {name=l9 sig_type=std_logic lab=avss}
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
C {ma2022/t_gate1.sym} 220 190 0 0 {name=x1}
C {ma2022/t_gate1.sym} 220 390 0 0 {name=x2}
C {ma2022/t_gate1.sym} 220 590 0 0 {name=x3}
C {devices/lab_pin.sym} 160 320 1 0 {name=l10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 160 520 1 0 {name=l11 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 160 410 3 0 {name=l12 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 160 610 3 0 {name=l13 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 120 320 1 0 {name=l14 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 120 520 1 0 {name=l15 sig_type=std_logic lab=swi}
