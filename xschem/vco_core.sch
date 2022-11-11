v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 170 100 220 {
lab=#net1}
N 100 70 100 130 {
lab=#net2}
N 1550 130 1590 130 {
lab=#net2}
N 100 60 100 70 {
lab=#net2}
N 100 60 1570 60 {
lab=#net2}
N 1570 60 1570 130 {
lab=#net2}
N 1570 170 1570 220 {
lab=#net1}
N 100 220 1570 220 {
lab=#net1}
N 340 600 340 650 {
lab=out1}
N 510 600 510 650 {
lab=out2}
N 760 600 760 650 {
lab=out3}
N 930 600 930 650 {
lab=out4}
N 1170 600 1170 650 {
lab=out5}
N 1340 600 1340 650 {
lab=out6}
N 1590 600 1590 650 {
lab=out7}
N 1760 600 1760 650 {
lab=out8}
N 320 130 560 130 {
lab=#net7}
N 320 170 560 170 {
lab=#net6}
N 740 170 970 170 {
lab=#net8}
N 740 130 970 130 {
lab=#net3}
N 1150 130 1370 130 {
lab=#net4}
N 1150 170 1370 170 {
lab=#net5}
N 100 170 120 130 {
lab=#net1}
N 100 130 120 170 {
lab=#net2}
N 340 130 340 240 {}
N 510 170 510 240 {}
N 760 130 760 240 {}
N 930 170 930 240 {}
N 1170 130 1170 240 {}
N 1340 170 1340 240 {}
N 1590 130 1590 240 {}
N 1760 170 1760 240 {}
N 1550 170 1760 170 {}
C {devices/lab_pin.sym} 340 620 0 0 {name=l62 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 510 620 0 1 {name=l63 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 760 620 0 0 {name=l122 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 930 620 0 1 {name=l123 sig_type=std_logic lab=out4}
C {devices/lab_pin.sym} 1170 620 0 0 {name=l124 sig_type=std_logic lab=out5}
C {devices/lab_pin.sym} 1340 620 0 1 {name=l125 sig_type=std_logic lab=out6}
C {devices/lab_pin.sym} 1590 620 0 0 {name=l126 sig_type=std_logic lab=out7}
C {devices/lab_pin.sym} 1760 620 0 1 {name=l127 sig_type=std_logic lab=out8}
C {stf_ctrl.sym} 510 -40 0 0 {name=x22}
C {devices/iopin.sym} 30 -170 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 30 -150 0 0 {name=l50 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 30 -130 0 0 {name=p3 lab=vbias}
C {devices/iopin.sym} 30 -110 0 0 {name=p4 lab=vdelay}
C {devices/iopin.sym} 30 -90 0 0 {name=p5 lab=fb0}
C {devices/iopin.sym} 30 -70 0 0 {name=p6 lab=tb1}
C {devices/iopin.sym} 30 -50 0 0 {name=p7 lab=sb2}
C {devices/iopin.sym} 130 -170 0 0 {name=p8 lab=out1}
C {devices/iopin.sym} 130 -150 0 0 {name=p9 lab=out2}
C {devices/iopin.sym} 130 -130 0 0 {name=p10 lab=out3}
C {devices/iopin.sym} 130 -110 0 0 {name=p11 lab=out4}
C {devices/iopin.sym} 130 -90 0 0 {name=p12 lab=out5}
C {devices/iopin.sym} 130 -70 0 0 {name=p13 lab=out6}
C {devices/iopin.sym} 130 -50 0 0 {name=p14 lab=out7}
C {devices/iopin.sym} 130 -30 0 0 {name=p15 lab=out8}
C {devices/lab_pin.sym} 180 100 1 0 {name=l4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 490 -150 1 0 {name=p19 lab=vdd}
C {devices/lab_pin.sym} 490 -50 1 1 {name=l55 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 200 100 1 0 {name=l22 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 360 -120 0 0 {name=p21 lab=sb2}
C {devices/lab_pin.sym} 360 -100 0 0 {name=p20 lab=tb1}
C {devices/lab_pin.sym} 360 -80 0 0 {name=l25 sig_type=std_logic lab=fb0}
C {devices/lab_pin.sym} 580 -120 0 1 {name=l26 sig_type=std_logic lab=ss}
C {devices/lab_pin.sym} 580 -100 0 1 {name=l27 sig_type=std_logic lab=tt}
C {devices/lab_pin.sym} 580 -80 0 1 {name=l28 sig_type=std_logic lab=ff}
C {devices/lab_pin.sym} 220 100 1 0 {name=l38 sig_type=std_logic lab=ss}
C {devices/lab_pin.sym} 240 100 1 0 {name=l39 sig_type=std_logic lab=tt}
C {devices/lab_pin.sym} 260 100 1 0 {name=l40 sig_type=std_logic lab=ff}
C {devices/lab_pin.sym} 440 -150 1 0 {name=l42 sig_type=std_logic lab=vbias}
C {devices/lab_pin.sym} 180 200 3 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 600 100 1 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 620 100 1 0 {name=l2 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 640 100 1 0 {name=l3 sig_type=std_logic lab=ss}
C {devices/lab_pin.sym} 660 100 1 0 {name=l5 sig_type=std_logic lab=tt}
C {devices/lab_pin.sym} 680 100 1 0 {name=l6 sig_type=std_logic lab=ff}
C {devices/lab_pin.sym} 600 200 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1010 100 1 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1030 100 1 0 {name=l9 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 1050 100 1 0 {name=l10 sig_type=std_logic lab=ss}
C {devices/lab_pin.sym} 1070 100 1 0 {name=l11 sig_type=std_logic lab=tt}
C {devices/lab_pin.sym} 1090 100 1 0 {name=l12 sig_type=std_logic lab=ff}
C {devices/lab_pin.sym} 1010 200 3 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1410 100 1 0 {name=l14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1430 100 1 0 {name=l15 sig_type=std_logic lab=vdelay}
C {devices/lab_pin.sym} 1450 100 1 0 {name=l17 sig_type=std_logic lab=ss}
C {devices/lab_pin.sym} 1470 100 1 0 {name=l18 sig_type=std_logic lab=tt}
C {devices/lab_pin.sym} 1490 100 1 0 {name=l19 sig_type=std_logic lab=ff}
C {devices/lab_pin.sym} 1410 200 3 0 {name=l20 sig_type=std_logic lab=vss}
C {delay_cell_4.sym} 100 220 0 0 {name=x1}
C {delay_cell_4.sym} 520 220 0 0 {name=x2}
C {delay_cell_4.sym} 930 220 0 0 {name=x3}
C {delay_cell_4.sym} 1330 220 0 0 {name=x4}
C {inv_buffer2.sym} 380 570 3 1 {name=x9}
C {inv_simple1.sym} 360 390 3 1 {name=x10}
C {devices/lab_pin.sym} 390 320 2 0 {name=l21 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 380 470 2 0 {name=l23 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 300 470 2 1 {name=p22 lab=vdd}
C {devices/lab_pin.sym} 300 320 2 1 {name=p23 lab=vdd}
C {inv_buffer2.sym} 550 570 3 1 {name=x5}
C {inv_simple1.sym} 530 390 3 1 {name=x6}
C {devices/lab_pin.sym} 560 320 2 0 {name=l24 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 550 470 2 0 {name=l29 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 470 470 2 1 {name=p2 lab=vdd}
C {devices/lab_pin.sym} 470 320 2 1 {name=p16 lab=vdd}
C {inv_buffer2.sym} 800 570 3 1 {name=x7}
C {inv_simple1.sym} 780 390 3 1 {name=x8}
C {devices/lab_pin.sym} 810 320 2 0 {name=l30 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 800 470 2 0 {name=l31 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 720 470 2 1 {name=p17 lab=vdd}
C {devices/lab_pin.sym} 720 320 2 1 {name=p18 lab=vdd}
C {inv_buffer2.sym} 970 570 3 1 {name=x11}
C {inv_simple1.sym} 950 390 3 1 {name=x12}
C {devices/lab_pin.sym} 980 320 2 0 {name=l32 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 970 470 2 0 {name=l33 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 890 470 2 1 {name=p24 lab=vdd}
C {devices/lab_pin.sym} 890 320 2 1 {name=p25 lab=vdd}
C {inv_buffer2.sym} 1210 570 3 1 {name=x13}
C {inv_simple1.sym} 1190 390 3 1 {name=x14}
C {devices/lab_pin.sym} 1220 320 2 0 {name=l34 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1210 470 2 0 {name=l35 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1130 470 2 1 {name=p26 lab=vdd}
C {devices/lab_pin.sym} 1130 320 2 1 {name=p27 lab=vdd}
C {inv_buffer2.sym} 1380 570 3 1 {name=x15}
C {inv_simple1.sym} 1360 390 3 1 {name=x16}
C {devices/lab_pin.sym} 1390 320 2 0 {name=l36 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1380 470 2 0 {name=l37 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1300 470 2 1 {name=p28 lab=vdd}
C {devices/lab_pin.sym} 1300 320 2 1 {name=p29 lab=vdd}
C {inv_buffer2.sym} 1630 570 3 1 {name=x17}
C {inv_simple1.sym} 1610 390 3 1 {name=x18}
C {devices/lab_pin.sym} 1640 320 2 0 {name=l41 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1630 470 2 0 {name=l43 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1550 470 2 1 {name=p30 lab=vdd}
C {devices/lab_pin.sym} 1550 320 2 1 {name=p31 lab=vdd}
C {inv_buffer2.sym} 1800 570 3 1 {name=x19}
C {inv_simple1.sym} 1780 390 3 1 {name=x20}
C {devices/lab_pin.sym} 1810 320 2 0 {name=l44 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1800 470 2 0 {name=l45 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1720 470 2 1 {name=p32 lab=vdd}
C {devices/lab_pin.sym} 1720 320 2 1 {name=p33 lab=vdd}
