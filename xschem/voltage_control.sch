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
C {devices/capa.sym} 230 -100 0 0 {name=C10
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 160 -130 3 0 {name=R3
value=8k
footprint=1206
device=resistor
m=1}
C {devices/iopin.sym} 20 -280 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 20 -260 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 20 -240 0 0 {name=p3 lab=vfine}
C {devices/iopin.sym} 20 -220 0 0 {name=p4 lab=vout}
C {devices/iopin.sym} 20 -200 0 0 {name=p5 lab=lock}
C {devices/iopin.sym} 20 -180 0 0 {name=p6 lab=vcoarse}
C {devices/lab_pin.sym} 60 -130 0 0 {name=l1 sig_type=std_logic lab=vfine}
C {devices/lab_pin.sym} 280 -130 0 1 {name=l2 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 230 -70 1 1 {name=l3 sig_type=std_logic lab=avss}
