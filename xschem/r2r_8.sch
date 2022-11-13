v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -260 150 -200 {
lab=#net1}
N 150 -260 390 -260 {
lab=#net1}
N 330 -260 330 -200 {
lab=#net1}
N 510 -260 510 -200 {
lab=#net2}
N 690 -260 690 -200 {
lab=#net3}
N 870 -260 870 -200 {
lab=#net4}
N 1050 -260 1050 -200 {
lab=#net5}
N 1230 -260 1230 -200 {
lab=#net6}
N 450 -260 560 -260 {
lab=#net2}
N 620 -260 740 -260 {
lab=#net3}
N 800 -260 930 -260 {
lab=#net4}
N 990 -260 1100 -260 {
lab=#net5}
N 1160 -260 1280 -260 {
lab=#net6}
N 1340 -260 1460 -260 {
lab=#net7}
N 1520 -260 1700 -260 {
lab=vout}
N 1410 -260 1410 -200 {
lab=#net7}
N 1590 -260 1590 -200 {
lab=vout}
N 150 -540 870 -540 {
lab=vss}
C {devices/iopin.sym} 330 -140 1 0 {name=p1 lab=b0}
C {devices/iopin.sym} 150 -140 1 0 {name=p2 lab=vss}
C {devices/iopin.sym} 1700 -260 0 0 {name=p4 lab=vout}
C {devices/lab_pin.sym} 170 -170 2 0 {name=p3 lab=vss}
C {devices/lab_pin.sym} 350 -170 2 0 {name=p6 lab=vss}
C {devices/lab_pin.sym} 530 -170 2 0 {name=p9 lab=vss}
C {devices/lab_pin.sym} 710 -170 2 0 {name=p11 lab=vss}
C {devices/lab_pin.sym} 890 -170 2 0 {name=p13 lab=vss}
C {devices/lab_pin.sym} 1070 -170 2 0 {name=p15 lab=vss}
C {devices/lab_pin.sym} 1250 -170 2 0 {name=p17 lab=vss}
C {devices/lab_pin.sym} 1430 -170 2 0 {name=p19 lab=vss}
C {devices/lab_pin.sym} 1610 -170 2 0 {name=p21 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 420 -260 1 1 {name=R20
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 420 -240 3 0 {name=p23 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 590 -260 1 1 {name=R21
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 590 -240 3 0 {name=p24 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 770 -260 1 1 {name=R22
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 770 -240 3 0 {name=p25 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 960 -260 1 1 {name=R23
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 960 -240 3 0 {name=p26 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 1130 -260 1 1 {name=R24
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1130 -240 3 0 {name=p27 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 1310 -260 1 1 {name=R25
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1310 -240 3 0 {name=p28 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 1490 -260 1 1 {name=R26
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 1490 -240 3 0 {name=p29 lab=vss}
C {devices/iopin.sym} 510 -140 1 0 {name=p22 lab=b1}
C {devices/iopin.sym} 690 -140 1 0 {name=p30 lab=b2}
C {devices/iopin.sym} 870 -140 1 0 {name=p31 lab=b3}
C {devices/iopin.sym} 1050 -140 1 0 {name=p32 lab=b4}
C {devices/iopin.sym} 1230 -140 1 0 {name=p33 lab=b5}
C {devices/iopin.sym} 1410 -140 1 0 {name=p34 lab=b6}
C {devices/iopin.sym} 1590 -140 1 0 {name=p35 lab=b7}
C {sky130_fd_pr/res_high_po_2p85.sym} 150 -570 0 1 {name=R19
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 170 -570 2 0 {name=p37 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 330 -570 0 1 {name=R27
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 350 -570 2 0 {name=p39 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 150 -510 0 1 {name=R28
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 170 -510 2 0 {name=p41 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 330 -510 0 1 {name=R29
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 350 -510 2 0 {name=p43 lab=vss}
C {devices/lab_pin.sym} 330 -480 3 0 {name=p36 lab=vss}
C {devices/lab_pin.sym} 150 -480 3 0 {name=p38 lab=vss}
C {devices/lab_pin.sym} 150 -600 1 0 {name=p40 lab=vss}
C {devices/lab_pin.sym} 330 -600 1 0 {name=p42 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 510 -570 0 1 {name=R30
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 530 -570 2 0 {name=p44 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 510 -510 0 1 {name=R31
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 530 -510 2 0 {name=p45 lab=vss}
C {devices/lab_pin.sym} 510 -480 3 0 {name=p46 lab=vss}
C {devices/lab_pin.sym} 510 -600 1 0 {name=p47 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 690 -570 0 1 {name=R32
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 710 -570 2 0 {name=p48 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 690 -510 0 1 {name=R33
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 710 -510 2 0 {name=p49 lab=vss}
C {devices/lab_pin.sym} 690 -480 3 0 {name=p50 lab=vss}
C {devices/lab_pin.sym} 690 -600 1 0 {name=p51 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 870 -570 0 1 {name=R34
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 890 -570 2 0 {name=p52 lab=vss}
C {devices/lab_pin.sym} 870 -600 1 0 {name=p55 lab=vss}
C {devices/lab_pin.sym} 870 -540 2 0 {name=p53 lab=vss}
C {sky130_fd_pr/res_high_po_2p85.sym} 150 -170 0 1 {name=R1
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 330 -170 0 1 {name=R2
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 510 -170 0 1 {name=R3
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 690 -170 0 1 {name=R4
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 870 -170 0 1 {name=R5
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1050 -170 0 1 {name=R6
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1230 -170 0 1 {name=R7
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1410 -170 0 1 {name=R8
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 1590 -170 0 1 {name=R9
W=2.85
L=35.56
model=res_high_po_2p85
spiceprefix=X
mult=1}
