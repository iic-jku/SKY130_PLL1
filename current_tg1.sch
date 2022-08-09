v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 50 150 70 150 {
lab=b2}
N 50 350 70 350 {
lab=b1}
N 50 550 70 550 {
lab=b0}
N 230 150 250 150 {
lab=swss}
N 230 350 250 350 {
lab=swtt}
N 230 550 250 550 {
lab=b2}
C {devices/lab_pin.sym} 160 120 1 0 {name=l60 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 160 210 3 0 {name=l58 sig_type=std_logic lab=avss}
C {devices/iopin.sym} -70 120 3 0 {name=p1 lab=vctrl}
C {devices/iopin.sym} 220 130 3 0 {name=p2 lab=avdd}
C {devices/iopin.sym} 230 600 1 0 {name=p3 lab=avss}
C {devices/iopin.sym} 60 550 2 0 {name=p4 lab=b0}
C {devices/iopin.sym} 60 350 2 0 {name=p5 lab=b1}
C {devices/iopin.sym} 60 150 2 0 {name=p6 lab=b2}
C {ma2022/t_gate1.sym} 220 190 0 0 {name=x1}
C {ma2022/t_gate1.sym} 220 390 0 0 {name=x2}
C {ma2022/t_gate1.sym} 220 590 0 0 {name=x3}
C {devices/lab_pin.sym} 160 320 1 0 {name=l10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 160 520 1 0 {name=l11 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 160 410 3 0 {name=l12 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 160 610 3 0 {name=l13 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 120 320 1 0 {name=l14 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} 120 120 1 0 {name=l1 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} 120 520 1 0 {name=l2 sig_type=std_logic lab=vctrl}
C {devices/iopin.sym} 240 150 2 1 {name=p7 lab=swss}
C {devices/iopin.sym} 240 350 2 1 {name=p8 lab=swtt}
C {devices/iopin.sym} 240 550 2 1 {name=p9 lab=swff}
