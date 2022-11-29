v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 -190 460 -190 {
lab=vdd}
N 400 -170 460 -170 {
lab=vss}
N 430 -190 430 -70 {
lab=vdd}
N 400 -70 430 -70 {
lab=vdd}
N 460 -170 460 -50 {
lab=vss}
N 400 -50 460 -50 {
lab=vss}
N 100 -230 100 -190 {
lab=in}
N 100 -70 100 -20 {
lab=out}
N 100 -100 100 -70 {
lab=out}
N 100 -190 100 -160 {
lab=in}
C {devices/iopin.sym} 460 -190 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 460 -170 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 100 -230 0 0 {name=p3 lab=in}
C {devices/iopin.sym} 100 -20 0 0 {name=p4 lab=out}
C {sky130_fd_pr/res_generic_po.sym} 100 -130 0 1 {name=R1
W=2
L=10.53
model=res_generic_po
mult=1}
C {esd_diodes.sym} 250 -180 0 0 {name=x1}
C {esd_diodes.sym} 250 -60 0 0 {name=x2}
