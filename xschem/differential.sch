v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 180 -600 180 -560 {
lab=#net1}
N 180 -680 180 -660 {
lab=#net2}
N 180 -500 180 -480 {
lab=#net3}
N 180 -210 180 -170 {
lab=#net4}
N 140 -630 140 -530 {
lab=#net5}
N 140 -240 140 -140 {
lab=#net6}
N 370 -600 370 -560 {
lab=clk}
N 330 -630 330 -530 {
lab=#net1}
N 370 -210 370 -170 {
lab=#net7}
N 330 -240 330 -140 {
lab=#net4}
N 560 -210 560 -170 {
lab=nclk}
N 520 -240 520 -140 {
lab=#net7}
N 180 -190 330 -190 {
lab=#net4}
N 370 -190 520 -190 {
lab=#net7}
N 180 -580 330 -580 {
lab=#net1}
C {devices/lab_pin.sym} 180 -740 1 0 {name=l6 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -630 2 0 {name=l29 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -530 2 0 {name=l30 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 180 -420 3 0 {name=l5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 180 -240 2 0 {name=l4 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -450 2 0 {name=l7 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 140 -450 0 0 {name=l8 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 140 -710 0 0 {name=l9 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 180 -270 1 0 {name=l10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -110 3 0 {name=l11 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 560 -190 2 0 {name=l15 sig_type=std_logic lab=nclk}
C {devices/lab_pin.sym} 370 -580 2 0 {name=l16 sig_type=std_logic lab=clk}
C {devices/iopin.sym} 550 -630 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 550 -600 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 550 -570 0 0 {name=p3 lab=clk_in}
C {devices/iopin.sym} 550 -540 0 0 {name=p4 lab=clk}
C {devices/iopin.sym} 550 -510 0 0 {name=p5 lab=nclk}
C {devices/lab_pin.sym} 370 -630 2 0 {name=l13 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 370 -530 2 0 {name=l23 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 370 -660 1 0 {name=l24 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 370 -500 3 0 {name=l25 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 370 -240 2 0 {name=l17 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 370 -140 2 0 {name=l26 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 370 -270 1 0 {name=l27 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 370 -110 3 0 {name=l28 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 560 -240 2 0 {name=l31 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 560 -140 2 0 {name=l32 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 560 -270 1 0 {name=l33 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 560 -110 3 0 {name=l34 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 180 -710 2 0 {name=l2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -140 2 0 {name=l3 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 160 -530 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 160 -450 0 0 {name=M2
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
C {sky130_fd_pr/nfet_01v8.sym} 350 -530 0 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 160 -140 0 0 {name=M4
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
C {sky130_fd_pr/nfet_01v8.sym} 350 -140 0 0 {name=M5
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -140 0 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 160 -710 0 0 {name=M7
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
C {sky130_fd_pr/pfet_01v8.sym} 160 -630 0 0 {name=M8
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
C {sky130_fd_pr/pfet_01v8.sym} 350 -630 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} 160 -240 0 0 {name=M10
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
C {sky130_fd_pr/pfet_01v8.sym} 350 -240 0 0 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 540 -240 0 0 {name=M12
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
C {devices/lab_pin.sym} 140 -580 2 1 {name=l1 sig_type=std_logic lab=clk_in}
C {devices/lab_pin.sym} 140 -190 2 1 {name=l12 sig_type=std_logic lab=clk_in}
