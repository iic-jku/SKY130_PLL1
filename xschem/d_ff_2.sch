v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -120 280 -80 280 {
lab=clk}
N -40 230 -40 250 {
lab=#net1}
N -40 490 -30 490 {
lab=avss}
N -30 460 -30 490 {
lab=avss}
N -40 460 -30 460 {
lab=avss}
N 170 310 170 350 {
lab=#net2}
N 170 230 170 250 {
lab=#net3}
N 170 490 180 490 {
lab=avss}
N 180 460 180 490 {
lab=avss}
N 170 460 180 460 {
lab=avss}
N 170 410 170 430 {
lab=#net4}
N 380 200 390 200 {
lab=avdd}
N 390 170 390 200 {
lab=avdd}
N 380 170 390 170 {
lab=avdd}
N 380 490 390 490 {
lab=avss}
N 390 460 390 490 {
lab=avss}
N 380 460 390 460 {
lab=avss}
N 380 410 380 430 {
lab=#net5}
N 580 200 590 200 {
lab=avdd}
N 590 170 590 200 {
lab=avdd}
N 580 170 590 170 {
lab=avdd}
N 580 490 590 490 {
lab=avss}
N 590 460 590 490 {
lab=avss}
N 580 460 590 460 {
lab=avss}
N 580 230 580 430 {
lab=#net6}
N 540 200 540 460 {
lab=s2}
N -40 310 -40 430 {
lab=#net7}
N 380 230 380 350 {
lab=s2}
N 90 280 130 280 {
lab=clk}
N 90 380 130 380 {
lab=clk}
N 300 380 340 380 {
lab=clk}
N 380 330 540 330 {
lab=s2}
N 270 200 340 200 {
lab=#net2}
N 270 200 270 460 {
lab=#net2}
N 270 460 340 460 {
lab=#net2}
N 170 330 270 330 {
lab=#net2}
N 60 460 130 460 {
lab=#net7}
N 60 200 60 460 {
lab=#net7}
N 60 200 130 200 {
lab=#net7}
N -40 330 60 330 {
lab=#net7}
N 580 330 710 330 {
lab=#net6}
N 750 210 760 210 {
lab=avdd}
N 760 180 760 210 {
lab=avdd}
N 750 180 760 180 {
lab=avdd}
N 750 500 760 500 {
lab=avss}
N 760 470 760 500 {
lab=avss}
N 750 470 760 470 {
lab=avss}
N 750 240 750 440 {
lab=out}
N 710 210 710 470 {
lab=#net6}
N 750 330 920 330 {
lab=out}
N 170 200 180 200 {
lab=avdd}
N 180 170 180 200 {
lab=avdd}
N 170 170 180 170 {
lab=avdd}
N -40 200 -30 200 {
lab=avdd}
N -30 170 -30 200 {
lab=avdd}
N -40 170 -30 170 {
lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} -60 280 0 0 {name=M4
L=0.15
W=8.4
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
C {devices/lab_pin.sym} -40 490 3 0 {name=l18 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 460 330 3 1 {name=l8 sig_type=std_logic lab=s2}
C {devices/lab_pin.sym} -120 280 1 0 {name=l12 sig_type=std_logic lab=clk}
C {sky130_fd_pr/pfet_01v8.sym} -60 200 0 0 {name=M1
L=0.15
W=8.4
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
C {devices/lab_pin.sym} -40 170 1 0 {name=l9 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} -60 460 0 0 {name=M11
L=0.15
W=4.2
nf=5
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
C {sky130_fd_pr/nfet_01v8.sym} 150 380 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 150 280 0 0 {name=M5
L=0.15
W=7.0
nf=5
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
C {devices/lab_pin.sym} 170 490 3 0 {name=l2 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 150 200 0 0 {name=M2
L=0.15
W=7.0
nf=5
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
C {devices/lab_pin.sym} 170 170 1 0 {name=l6 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} 150 460 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 360 380 0 0 {name=M8
L=0.15
W=2.8
nf=3
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
C {devices/lab_pin.sym} 380 490 3 0 {name=l11 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 360 200 0 0 {name=M15
L=0.15
W=5.6
nf=6
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
C {devices/lab_pin.sym} 380 170 1 0 {name=l16 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} 360 460 0 0 {name=M7
L=0.15
W=2.8
nf=3
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
C {devices/lab_pin.sym} 580 490 3 0 {name=l17 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 560 200 0 0 {name=M19
L=0.15
W=2.8
nf=5
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
C {devices/lab_pin.sym} 580 170 1 0 {name=l20 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} 560 460 0 0 {name=M20
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
C {devices/lab_pin.sym} 90 280 1 0 {name=l21 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 90 380 1 0 {name=l22 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 300 380 1 0 {name=l23 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -80 200 2 1 {name=l24 sig_type=std_logic lab=s2}
C {devices/lab_pin.sym} -80 460 2 1 {name=l25 sig_type=std_logic lab=s2}
C {devices/lab_pin.sym} 750 500 3 0 {name=l15 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 730 210 0 0 {name=M9
L=0.15
W=5.6
nf=5
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
C {devices/lab_pin.sym} 750 180 1 0 {name=l19 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} 730 470 0 0 {name=M10
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
C {devices/lab_pin.sym} 860 330 3 1 {name=l28 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} -40 280 2 0 {name=l14 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 170 280 2 0 {name=l29 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 170 380 2 0 {name=l30 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 380 380 2 0 {name=l31 sig_type=std_logic lab=avss}
C {devices/iopin.sym} 190 -50 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 190 -20 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 190 10 0 0 {name=p3 lab=clk}
C {devices/iopin.sym} 190 40 0 0 {name=p4 lab=out}
