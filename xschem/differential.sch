v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -280 300 -250 {
lab=#net1}
N 260 -280 300 -310 {
lab=#net1}
N 260 -540 300 -510 {
lab=#net2}
N 260 -540 300 -570 {
lab=#net2}
N 150 -510 300 -510 {
lab=#net2}
N 150 -310 300 -310 {
lab=#net1}
N 150 -330 150 -310 {
lab=#net1}
N 150 -510 150 -490 {
lab=#net2}
N 150 -430 150 -390 {
lab=#net3}
N 150 -410 250 -410 {
lab=#net3}
N 110 -460 110 -360 {
lab=clk_in}
N 70 -410 110 -410 {
lab=clk_in}
C {devices/lab_pin.sym} 150 -570 1 0 {name=l6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 150 -250 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 150 -280 2 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 110 -280 0 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 110 -540 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 610 -110 2 0 {name=l15 sig_type=std_logic lab=nclk}
C {devices/lab_pin.sym} 430 -410 2 0 {name=l16 sig_type=std_logic lab=clk}
C {devices/iopin.sym} 520 -460 0 0 {name=l23 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 520 -430 0 0 {name=l14 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 520 -400 0 0 {name=p3 lab=clk_in}
C {devices/iopin.sym} 520 -370 0 0 {name=p4 lab=clk}
C {devices/iopin.sym} 520 -340 0 0 {name=p5 lab=nclk}
C {sky130_fd_pr/nfet_01v8.sym} 130 -280 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -540 0 0 {name=M7
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
C {devices/lab_pin.sym} 70 -410 2 1 {name=l1 sig_type=std_logic lab=clk_in}
C {devices/lab_pin.sym} 70 -110 2 1 {name=l12 sig_type=std_logic lab=clk_in}
C {devices/lab_pin.sym} 150 -150 1 0 {name=l13 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 220 -90 0 0 {name=x1}
C {devices/lab_pin.sym} 150 -60 3 0 {name=l2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 330 -150 1 0 {name=l17 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 400 -90 0 0 {name=x2}
C {devices/lab_pin.sym} 330 -60 3 0 {name=l24 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 510 -150 1 0 {name=l27 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 580 -90 0 0 {name=x3}
C {devices/lab_pin.sym} 510 -60 3 0 {name=l29 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 330 -450 1 0 {name=l4 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 400 -390 0 0 {name=x4}
C {devices/lab_pin.sym} 330 -360 3 0 {name=l10 sig_type=std_logic lab=vss}
C {sky130_fd_pr/pfet_01v8.sym} 280 -540 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 280 -280 0 0 {name=M3
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
C {devices/lab_pin.sym} 150 -540 2 0 {name=l3 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 130 -360 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -460 0 0 {name=M5
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
C {devices/lab_pin.sym} 150 -360 2 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 150 -460 2 0 {name=l18 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 300 -540 2 0 {name=l19 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 300 -280 2 0 {name=l20 sig_type=std_logic lab=vss}
