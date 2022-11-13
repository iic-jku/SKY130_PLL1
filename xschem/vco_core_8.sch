v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 140 100 190 {
lab=out8}
N 100 40 100 100 {
lab=out7}
N 100 30 100 40 {
lab=out7}
N 100 30 1570 30 {
lab=out7}
N 1570 30 1570 100 {
lab=out7}
N 1570 140 1570 190 {
lab=out8}
N 100 190 1570 190 {
lab=out8}
N 230 170 230 220 {
lab=inv1}
N 250 170 250 220 {
lab=inv2}
N 650 170 650 220 {
lab=inv4}
N 670 170 670 220 {
lab=inv3}
N 1060 170 1060 220 {
lab=inv5}
N 1080 170 1080 220 {
lab=inv6}
N 1480 170 1480 220 {
lab=inv8}
N 1500 170 1500 220 {
lab=inv7}
N 100 100 120 140 {
lab=out7}
N 100 140 120 100 {
lab=out8}
N 320 140 510 140 {
lab=out2}
N 320 100 510 100 {
lab=out1}
N 510 100 540 140 {
lab=out1}
N 510 140 540 100 {
lab=out2}
N 740 140 930 140 {
lab=out4}
N 740 100 930 100 {
lab=out3}
N 1150 140 1340 140 {
lab=out6}
N 1150 100 1340 100 {
lab=out5}
N 1340 100 1370 140 {
lab=out5}
N 1340 140 1370 100 {
lab=out6}
N 930 100 950 100 {
lab=out3}
N 930 140 950 140 {
lab=out4}
C {devices/lab_pin.sym} 370 100 1 0 {name=l62 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 790 100 1 0 {name=l122 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 790 140 1 1 {name=l123 sig_type=std_logic lab=out4}
C {devices/lab_pin.sym} 1190 100 1 0 {name=l124 sig_type=std_logic lab=out5}
C {devices/lab_pin.sym} 1190 140 1 1 {name=l125 sig_type=std_logic lab=out6}
C {devices/lab_pin.sym} 1570 100 0 1 {name=l126 sig_type=std_logic lab=out7}
C {devices/lab_pin.sym} 1570 140 0 1 {name=l127 sig_type=std_logic lab=out8}
C {devices/iopin.sym} 30 -200 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 30 -180 0 0 {name=l50 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 30 -140 0 0 {name=p4 lab=vdelay}
C {devices/iopin.sym} 30 -120 0 0 {name=p5 lab=b0}
C {devices/iopin.sym} 30 -100 0 0 {name=p6 lab=b1}
C {devices/iopin.sym} 30 -80 0 0 {name=p7 lab=b2}
C {devices/iopin.sym} 230 220 0 1 {name=p8 lab=inv1}
C {devices/iopin.sym} 250 220 0 0 {name=p9 lab=inv2}
C {devices/iopin.sym} 670 220 0 0 {name=p10 lab=inv3}
C {devices/iopin.sym} 650 220 0 1 {name=p11 lab=inv4}
C {devices/iopin.sym} 1060 220 0 1 {name=p12 lab=inv5}
C {devices/iopin.sym} 1080 220 0 0 {name=p13 lab=inv6}
C {devices/iopin.sym} 1500 220 0 0 {name=p14 lab=inv7}
C {devices/iopin.sym} 1480 220 0 1 {name=p15 lab=inv8}
C {devices/lab_pin.sym} 180 70 1 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 200 70 1 0 {name=l22 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 220 70 1 0 {name=p23 lab=b2}
C {devices/lab_pin.sym} 240 70 1 0 {name=p19 lab=b1}
C {devices/lab_pin.sym} 260 70 1 0 {name=p2 lab=b0}
C {devices/lab_pin.sym} 180 170 3 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 600 70 1 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 620 70 1 0 {name=l2 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 640 70 1 0 {name=p24 lab=b2}
C {devices/lab_pin.sym} 660 70 1 0 {name=p20 lab=b1}
C {devices/lab_pin.sym} 680 70 1 0 {name=p16 lab=b0}
C {devices/lab_pin.sym} 600 170 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1010 70 1 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1030 70 1 0 {name=l9 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 1050 70 1 0 {name=p25 lab=b2}
C {devices/lab_pin.sym} 1070 70 1 0 {name=p21 lab=b1}
C {devices/lab_pin.sym} 1090 70 1 0 {name=p17 lab=b0}
C {devices/lab_pin.sym} 1010 170 3 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1430 70 1 0 {name=l14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1450 70 1 0 {name=l15 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 1470 70 1 0 {name=p26 lab=b2}
C {devices/lab_pin.sym} 1490 70 1 0 {name=p22 lab=b1}
C {devices/lab_pin.sym} 1510 70 1 0 {name=p18 lab=b0}
C {devices/lab_pin.sym} 1430 170 3 0 {name=l20 sig_type=std_logic lab=vss}
C {delay_cell_4.sym} 100 190 0 0 {name=x1}
C {delay_cell_4.sym} 520 190 0 0 {name=x2}
C {delay_cell_4.sym} 930 190 0 0 {name=x3}
C {delay_cell_4.sym} 1350 190 0 0 {name=x4}
C {devices/lab_pin.sym} 370 140 1 1 {name=l3 sig_type=std_logic lab=out2}
