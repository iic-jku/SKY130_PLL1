v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -230 360 -230 {
lab=#net1}
N 260 -250 360 -210 {
lab=#net2}
N 260 -210 360 -250 {
lab=#net3}
N 660 -270 720 -640 {
lab=#net4}
N 660 -250 750 -510 {
lab=#net5}
N 660 -230 780 -380 {
lab=#net6}
N 660 -210 810 -250 {
lab=#net7}
N 660 -190 840 -120 {
lab=#net8}
N 660 -170 870 10 {
lab=#net9}
N 660 -150 900 140 {
lab=#net10}
N 660 -130 930 270 {
lab=#net11}
C {vco_core_8.sym} 360 20 0 0 {name=x1}
C {devices/iopin.sym} 80 -390 0 1 {name=p1 lab=vdd}
C {devices/iopin.sym} 80 -370 0 1 {name=l50 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 510 -100 3 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 510 -300 1 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 360 -270 0 1 {name=p4 lab=vdelay}
C {stf_ctrl.sym} 190 -170 0 0 {name=x2}
C {devices/lab_pin.sym} 170 -280 1 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 170 -180 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 40 -210 0 1 {name=p5 lab=b0}
C {devices/iopin.sym} 40 -230 0 1 {name=p6 lab=b1}
C {devices/iopin.sym} 40 -250 0 1 {name=p7 lab=b2}
C {inv_simple1.sym} 930 -360 0 0 {name=x3}
C {devices/lab_pin.sym} 860 -330 3 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 860 -420 1 0 {name=l5 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 960 -230 0 0 {name=x4}
C {devices/lab_pin.sym} 890 -200 3 0 {name=l6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 890 -290 1 0 {name=l7 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 990 -100 0 0 {name=x5}
C {devices/lab_pin.sym} 920 -70 3 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 920 -160 1 0 {name=l9 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 1020 30 0 0 {name=x6}
C {devices/lab_pin.sym} 950 60 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 950 -30 1 0 {name=l11 sig_type=std_logic lab=vdd}
C {inv_buffer2.sym} 1050 -600 0 0 {name=x7}
C {devices/lab_pin.sym} 950 -680 1 0 {name=l12 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 950 -600 3 0 {name=l13 sig_type=std_logic lab=vss}
C {inv_buffer2.sym} 1110 -340 0 0 {name=x8}
C {devices/lab_pin.sym} 1010 -420 1 0 {name=l14 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1010 -340 3 0 {name=l15 sig_type=std_logic lab=vss}
C {inv_buffer2.sym} 1170 -80 0 0 {name=x9}
C {devices/lab_pin.sym} 1070 -160 1 0 {name=l17 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1070 -80 3 0 {name=l18 sig_type=std_logic lab=vss}
C {inv_buffer2.sym} 1260 310 0 0 {name=x10}
C {devices/lab_pin.sym} 1160 230 1 0 {name=l19 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1160 310 3 0 {name=l20 sig_type=std_logic lab=vss}
C {d_ff_15.sym} 1230 -610 0 0 {name=x11}
C {devices/lab_pin.sym} 1170 -680 1 0 {name=l21 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1170 -600 3 0 {name=l22 sig_type=std_logic lab=vss}
C {d_ff_15.sym} 1290 -350 0 0 {name=x12}
C {devices/lab_pin.sym} 1230 -420 1 0 {name=l23 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1230 -340 3 0 {name=l24 sig_type=std_logic lab=vss}
C {d_ff_15.sym} 1350 -90 0 0 {name=x13}
C {devices/lab_pin.sym} 1290 -160 1 0 {name=l25 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1290 -80 3 0 {name=l26 sig_type=std_logic lab=vss}
C {d_ff_15.sym} 1440 300 0 0 {name=x14}
C {devices/lab_pin.sym} 1380 230 1 0 {name=l27 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1380 310 3 0 {name=l28 sig_type=std_logic lab=vss}
C {inv_simple1.sym} 870 -620 0 0 {name=x15}
C {devices/lab_pin.sym} 800 -590 3 0 {name=l29 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 800 -680 1 0 {name=l30 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 900 -490 0 0 {name=x16}
C {devices/lab_pin.sym} 830 -460 3 0 {name=l31 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 830 -550 1 0 {name=l32 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 1050 160 0 0 {name=x17}
C {devices/lab_pin.sym} 980 190 3 0 {name=l33 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 980 100 1 0 {name=l34 sig_type=std_logic lab=vdd}
C {inv_simple1.sym} 1080 290 0 0 {name=x18}
C {devices/lab_pin.sym} 1010 320 3 0 {name=l35 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1010 230 1 0 {name=l36 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 1270 -630 0 0 {name=p2 lab=out1}
C {devices/iopin.sym} 1330 -370 0 0 {name=p3 lab=out2}
C {devices/iopin.sym} 1390 -110 0 0 {name=p8 lab=out3}
C {devices/iopin.sym} 1480 280 0 0 {name=p9 lab=out4}
C {devices/iopin.sym} 120 -280 1 1 {name=l37 sig_type=std_logic lab=vbias}
