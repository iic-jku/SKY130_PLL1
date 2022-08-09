v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1420 -530 1420 -510 { lab=VSS}
N 1140 -510 1330 -510 { lab=VSS}
N 1120 -530 1120 -510 { lab=VSS}
N 1120 -670 1120 -590 { lab=OUT1}
N 890 -670 940 -670 { lab=OUT1}
N 890 -700 890 -670 { lab=OUT1}
N 890 -700 900 -700 { lab=OUT1}
N 940 -750 940 -730 { lab=VDD}
N 1120 -750 1120 -730 { lab=VDD}
N 1140 -750 1220 -750 { lab=VDD}
N 1220 -750 1220 -660 { lab=VDD}
N 1210 -630 1220 -630 { lab=VDD}
N 1210 -660 1210 -630 { lab=VDD}
N 1210 -660 1220 -660 { lab=VDD}
N 1140 -600 1220 -600 { lab=OUT1}
N 1420 -670 1420 -590 { lab=OUT2}
N 1590 -670 1640 -670 { lab=OUT2}
N 1640 -700 1640 -670 { lab=OUT2}
N 1630 -700 1640 -700 { lab=OUT2}
N 1590 -750 1590 -730 { lab=VDD}
N 1220 -750 1480 -750 { lab=VDD}
N 1420 -750 1420 -730 { lab=VDD}
N 1330 -510 1400 -510 { lab=VSS}
N 1320 -600 1400 -600 { lab=OUT2}
N 1320 -750 1320 -660 { lab=VDD}
N 1320 -630 1330 -630 { lab=VDD}
N 1330 -660 1330 -630 { lab=VDD}
N 1320 -660 1330 -660 { lab=VDD}
N 1110 -700 1120 -700 { lab=VDD}
N 1110 -730 1110 -700 { lab=VDD}
N 1110 -730 1120 -730 { lab=VDD}
N 1420 -700 1430 -700 { lab=VDD}
N 1430 -730 1430 -700 { lab=VDD}
N 1420 -730 1430 -730 { lab=VDD}
N 1580 -700 1590 -700 { lab=VDD}
N 1580 -730 1580 -700 { lab=VDD}
N 1580 -730 1590 -730 { lab=VDD}
N 940 -700 950 -700 { lab=VDD}
N 950 -730 950 -700 { lab=VDD}
N 940 -730 950 -730 { lab=VDD}
N 1120 -560 1130 -560 { lab=VSS}
N 1130 -560 1130 -530 { lab=VSS}
N 1120 -530 1130 -530 { lab=VSS}
N 1410 -530 1420 -530 { lab=VSS}
N 1410 -560 1410 -530 { lab=VSS}
N 1410 -560 1420 -560 { lab=VSS}
N 970 -560 1080 -560 { lab=IN1}
N 1460 -560 1570 -560 { lab=IN2}
N 1420 -600 1570 -600 { lab=OUT2}
N 970 -600 1120 -600 { lab=OUT1}
N 1180 -700 1360 -700 { lab=VB}
N 1270 -700 1270 -680 { lab=VB}
N 1270 -780 1270 -750 {
lab=VDD}
N 1270 -510 1270 -480 {
lab=VSS}
N 1570 -750 1590 -750 {
lab=VDD}
N 940 -750 970 -750 {
lab=VDD}
N 1400 -510 1420 -510 {
lab=VSS}
N 1400 -600 1420 -600 {
lab=OUT2}
N 1360 -700 1380 -700 {
lab=VB}
N 1120 -510 1140 -510 {
lab=VSS}
N 1120 -600 1140 -600 {
lab=OUT1}
N 1160 -700 1180 -700 {
lab=VB}
N 1120 -750 1140 -750 {
lab=VDD}
N 970 -750 1120 -750 {
lab=VDD}
N 1480 -750 1570 -750 {
lab=VDD}
N 1420 -670 1590 -670 {
lab=OUT2}
N 940 -670 1120 -670 {
lab=OUT1}
N 1220 -600 1260 -600 {
lab=OUT1}
N 1260 -600 1280 -630 {
lab=OUT1}
N 1260 -630 1280 -600 {
lab=OUT2}
N 1280 -600 1320 -600 {
lab=OUT2}
C {sky130_fd_pr/pfet_01v8.sym} 1240 -630 0 1 {name=M5
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1300 -630 0 0 {name=M8
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 920 -700 0 0 {name=M3
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
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1140 -700 0 1 {name=M4
L=0.15
W=0.7
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1400 -700 0 0 {name=M6
L=0.15
W=0.7
nf=1
mult=2
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1610 -700 0 1 {name=M7
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
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 1270 -770 1 1 {name=p1 lab=VDD}
C {devices/iopin.sym} 1270 -490 1 0 {name=p2 lab=VSS}
C {devices/iopin.sym} 1270 -680 1 0 {name=p3 lab=VB}
C {devices/iopin.sym} 980 -560 2 0 {name=p4 lab=IN1}
C {devices/iopin.sym} 1560 -560 2 1 {name=p5 lab=IN2}
C {devices/iopin.sym} 1560 -600 2 1 {name=p6 lab=OUT2}
C {devices/iopin.sym} 980 -600 2 0 {name=p7 lab=OUT1}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1100 -560 0 0 {name=M1
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1440 -560 0 1 {name=M2
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
model=nfet_01v8_lvt
spiceprefix=X
}
