v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 230 150 250 150 {
lab=swss}
N 230 350 250 350 {
lab=swtt}
N 230 550 250 550 {
lab=swff}
N 70 120 70 150 {
lab=b2}
N 70 320 70 350 {
lab=b1}
N 70 520 70 550 {
lab=b0}
N 120 90 120 120 {
lab=vctrl}
N 120 290 120 320 {
lab=vctrl}
N 120 490 120 520 {
lab=vctrl}
C {devices/lab_pin.sym} 160 120 1 0 {name=l60 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 160 210 3 0 {name=l58 sig_type=std_logic lab=vss}
C {devices/iopin.sym} -70 120 3 0 {name=p1 lab=vctrl}
C {devices/iopin.sym} 220 130 3 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 230 600 1 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 70 530 3 0 {name=p4 lab=b0}
C {devices/iopin.sym} 70 330 3 0 {name=p5 lab=b1}
C {devices/iopin.sym} 70 130 3 0 {name=p6 lab=b2}
C {devices/lab_pin.sym} 160 320 1 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 160 520 1 0 {name=l9 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 160 410 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 160 610 3 0 {name=l6 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 240 150 2 1 {name=p7 lab=swss}
C {devices/iopin.sym} 240 350 2 1 {name=p8 lab=swtt}
C {devices/iopin.sym} 240 550 2 1 {name=p9 lab=swff}
C {devices/lab_pin.sym} 120 90 1 0 {name=l1 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} 120 290 1 0 {name=l2 sig_type=std_logic lab=vctrl}
C {devices/lab_pin.sym} 120 490 1 0 {name=l3 sig_type=std_logic lab=vctrl}
C {tgate_1.sym} 220 190 0 0 {name=x1}
C {tgate_1.sym} 220 390 0 0 {name=x2}
C {tgate_1.sym} 220 590 0 0 {name=x3}
