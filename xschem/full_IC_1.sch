v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 770 -360 820 -360 {
lab=#net1}
N 990 -370 1020 -370 {
lab=#net2}
N 1200 -370 1250 -370 {
lab=#net3}
N 930 -540 930 -420 {
lab=#net4}
N 70 -480 70 -360 {
lab=#net5}
N 710 -540 710 -410 {
lab=#net6}
N 820 -480 820 -380 {
lab=#net7}
N 820 -480 1200 -480 {
lab=#net7}
N 50 -340 70 -340 {
lab=#net3}
N 50 -340 50 -200 {
lab=#net3}
N 50 -200 1250 -200 {
lab=#net3}
N 1250 -370 1250 -160 {
lab=#net3}
N 1380 -480 1400 -480 {
lab=#net8}
N 1580 -480 1580 -300 {
lab=ref_in}
N 1580 -480 1660 -480 {
lab=ref_in}
N 370 -340 390 -340 {
lab=out}
N 390 -340 390 -120 {
lab=out}
C {voltage_control.sym} 960 -220 0 0 {name=x1}
C {sspd.sym} 970 -340 0 0 {name=x2}
C {slopebuf.sym} 540 -290 0 0 {name=x3}
C {full_vco_1.sym} 60 -120 0 0 {name=x4}
C {inv_buffer2.sym} 520 -320 0 0 {name=x5}
C {devices/iopin.sym} 420 -660 0 1 {name=p1 lab=vdd}
C {devices/iopin.sym} 420 -640 0 1 {name=l50 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 160 -390 1 0 {name=l1 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 160 -250 3 0 {name=l16 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 420 -320 3 0 {name=l2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 590 -310 3 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 890 -320 3 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1110 -320 3 0 {name=l5 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 420 -400 1 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 590 -410 1 0 {name=l8 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 890 -420 1 0 {name=l10 sig_type=std_logic lab=vdd}
C {r2r_8.sym} 1070 -530 3 0 {name=x7}
C {r2r_10.sym} 1070 -170 1 0 {name=x8}
C {devices/lab_pin.sym} 1110 -160 1 0 {name=l12 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1030 -540 3 0 {name=l13 sig_type=std_logic lab=vss}
C {r2r_8.sym} 210 -470 3 0 {name=x9}
C {devices/lab_pin.sym} 170 -480 3 0 {name=l14 sig_type=std_logic lab=vss}
C {r2r_8.sym} 850 -530 3 0 {name=x6}
C {devices/lab_pin.sym} 810 -540 3 0 {name=l6 sig_type=std_logic lab=vss}
C {inv_buffer2.sym} 1230 -440 0 1 {name=x10}
C {devices/lab_pin.sym} 1330 -440 1 1 {name=l9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1330 -520 3 1 {name=l15 sig_type=std_logic lab=vdd}
C {inv_buffer2.sym} 1430 -440 0 1 {name=x11}
C {devices/lab_pin.sym} 1530 -440 1 1 {name=l17 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1530 -520 3 1 {name=l18 sig_type=std_logic lab=vdd}
C {inv_buffer2.sym} 1430 -260 0 1 {name=x12}
C {devices/lab_pin.sym} 1530 -260 1 1 {name=l19 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1530 -340 3 1 {name=l20 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 1660 -480 0 0 {name=l11 sig_type=std_logic lab=ref_in}
C {devices/iopin.sym} 1660 -420 0 0 {name=l21 sig_type=std_logic lab=s_in}
C {devices/iopin.sym} 1660 -390 0 0 {name=l22 sig_type=std_logic lab=load}
C {devices/iopin.sym} 1660 -360 0 0 {name=l23 sig_type=std_logic lab=read}
C {devices/iopin.sym} 1660 -330 0 0 {name=l24 sig_type=std_logic lab=clk_in}
C {devices/iopin.sym} 1660 -300 0 0 {name=l25 sig_type=std_logic lab=reset}
C {devices/iopin.sym} 1660 -450 0 0 {name=l26 sig_type=std_logic lab=s_out}
C {devices/iopin.sym} 390 -120 0 0 {name=l27 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1400 -300 2 1 {name=l28 sig_type=std_logic lab=ref_digital}
