v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -130 280 -130 {
lab=vout}
N 60 -130 130 -130 {
lab=vfine}
N 120 -40 160 -110 {
lab=vss}
N 60 -40 60 0 {
lab=vss}
N 120 -40 120 0 {
lab=vss}
N 60 -20 120 -20 {
lab=vss}
C {devices/iopin.sym} 20 -260 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 20 -240 0 0 {name=p3 lab=vfine}
C {devices/iopin.sym} 20 -220 0 0 {name=p4 lab=vout}
C {devices/lab_pin.sym} 60 -130 0 0 {name=l1 sig_type=std_logic lab=vfine}
C {devices/lab_pin.sym} 280 -130 0 1 {name=l2 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 230 -70 1 1 {name=p7 lab=vss}
C {sky130_fd_pr/cap_mim_m3_1.sym} 230 -100 2 0 {name=C1 model=cap_mim_m3_1 W=30 L=30 MF=110 spiceprefix=X}
C {sky130_fd_pr/res_high_po_2p85.sym} 160 -130 3 0 {name=R1
W=2.85
L=71.12
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 90 -40 3 0 {name=R2
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_2p85.sym} 90 0 3 1 {name=R3
W=2.85
L=17.78
model=res_high_po_2p85
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 120 0 1 1 {name=p8 lab=vss}
