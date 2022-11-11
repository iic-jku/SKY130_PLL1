v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 440 280 480 {
lab=clk_out}
N 240 410 240 510 {
lab=#net1}
N 280 510 290 510 {
lab=vss}
N 280 270 290 270 {
lab=vdd}
N 290 240 290 270 {
lab=vdd}
N 280 240 290 240 {
lab=vdd}
N 200 460 240 460 {
lab=#net1}
N 280 410 290 410 {
lab=vdd}
N -270 270 -260 270 {
lab=vdd}
N -260 240 -260 270 {
lab=vdd}
N -270 240 -260 240 {
lab=vdd}
N -90 270 -80 270 {
lab=vdd}
N -80 240 -80 270 {
lab=vdd}
N -90 240 -80 240 {
lab=vdd}
N 90 270 100 270 {
lab=vdd}
N 100 240 100 270 {
lab=vdd}
N 90 240 100 240 {
lab=vdd}
N 280 460 440 460 {
lab=clk_out}
N 0 460 20 460 {
lab=#net2}
N -270 300 280 300 {
lab=#net3}
N 280 300 280 380 {
lab=#net3}
N 560 510 600 480 {
lab=vss}
N 560 510 600 540 {
lab=vss}
N 440 240 440 270 {
lab=vdd}
N 400 270 440 240 {
lab=vdd}
N 400 270 440 300 {
lab=vdd}
N 370 410 410 380 {
lab=#net3}
N 370 410 410 440 {
lab=#net3}
N 280 380 410 380 {
lab=#net3}
N 600 510 600 540 {
lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 260 510 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 260 410 0 0 {name=M6
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
C {devices/lab_pin.sym} 280 240 1 0 {name=l11 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 260 270 0 0 {name=M4
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
C {devices/lab_pin.sym} 440 460 2 0 {name=l14 sig_type=std_logic lab=clk_out}
C {devices/lab_pin.sym} 400 520 3 0 {name=l35 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 290 510 2 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 280 540 3 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 290 410 2 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -270 240 1 0 {name=l8 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -290 270 0 0 {name=M1
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
C {devices/lab_pin.sym} -90 240 1 0 {name=l9 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} -110 270 0 0 {name=M15
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
C {devices/lab_pin.sym} 90 240 1 0 {name=l15 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 70 270 0 0 {name=M16
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
C {devices/lab_pin.sym} 50 270 2 1 {name=l76 sig_type=std_logic lab=swo1}
C {devices/lab_pin.sym} -130 270 2 1 {name=l77 sig_type=std_logic lab=swo2}
C {devices/lab_pin.sym} -310 270 2 1 {name=l78 sig_type=std_logic lab=swo3}
C {devices/lab_pin.sym} -130 420 1 0 {name=l18 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} -130 500 3 0 {name=l19 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 100 510 3 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 100 420 1 0 {name=l21 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 240 270 0 0 {name=l6 sig_type=std_logic lab=vbias}
C {devices/iopin.sym} 40 20 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 40 40 0 0 {name=l31 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 40 60 0 0 {name=p3 lab=clk_in}
C {devices/iopin.sym} 40 80 0 0 {name=p4 lab=clk_out}
C {devices/iopin.sym} 40 100 0 0 {name=p5 lab=bit0}
C {devices/iopin.sym} 40 120 0 0 {name=p6 lab=bit1}
C {devices/iopin.sym} 40 140 0 0 {name=p7 lab=bit2}
C {devices/lab_pin.sym} -180 460 0 0 {name=l2 sig_type=std_logic lab=clk_in}
C {devices/iopin.sym} 40 160 0 0 {name=p8 lab=vbias}
C {inv_buffer2.sym} -30 500 0 0 {name=x1}
C {inv_simple1.sym} 170 480 0 0 {name=x2}
C {tgate_1.sym} 600 150 0 0 {name=x3}
C {devices/lab_pin.sym} 500 80 1 0 {name=l7 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 540 170 3 0 {name=l32 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 540 80 1 0 {name=l36 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 450 110 0 0 {name=l12 sig_type=std_logic lab=vbias}
C {tgate_1.sym} 900 150 0 0 {name=x4}
C {devices/lab_pin.sym} 840 170 3 0 {name=l33 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 840 80 1 0 {name=l37 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 750 110 0 0 {name=l17 sig_type=std_logic lab=vbias}
C {tgate_1.sym} 1180 150 0 0 {name=x5}
C {devices/lab_pin.sym} 1120 170 3 0 {name=l34 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1120 80 1 0 {name=l38 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1030 110 0 0 {name=l26 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 610 110 2 0 {name=l27 sig_type=std_logic lab=swo1}
C {devices/lab_pin.sym} 910 110 2 0 {name=l29 sig_type=std_logic lab=swo2}
C {devices/lab_pin.sym} 1190 110 2 0 {name=l30 sig_type=std_logic lab=swo3}
C {devices/lab_pin.sym} 800 80 1 0 {name=l13 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 1080 80 1 0 {name=l20 sig_type=std_logic lab=bit2}
C {sky130_fd_pr/cap_mim_m3_1.sym} 400 490 0 0 {name=C1 model=cap_mim_m3_1 W=7 L=7 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} 580 510 0 0 {name=M2
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
C {devices/lab_pin.sym} 600 540 3 0 {name=l5 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 420 270 0 0 {name=M3
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
C {devices/lab_pin.sym} 440 240 1 0 {name=l10 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/pfet_01v8.sym} 390 410 0 0 {name=M7
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
C {devices/lab_pin.sym} 410 410 2 0 {name=l16 sig_type=std_logic lab=vdd}
