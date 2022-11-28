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
N 930 -540 930 -420 {
lab=#net3}
N 70 -480 70 -360 {
lab=#net4}
N 710 -540 710 -410 {
lab=#net5}
N 50 -340 70 -340 {
lab=#net6}
N 50 -340 50 -200 {
lab=#net6}
N 1380 -500 1400 -500 {
lab=#net7}
N 1580 -500 1580 -320 {
lab=ref_in}
N 1580 -500 1660 -500 {
lab=ref_in}
N 820 -500 1200 -500 {
lab=#net8}
N 820 -500 820 -380 {
lab=#net8}
N 370 -340 380 -340 {
lab=out}
N 380 -340 380 -120 {
lab=out}
N 1400 -320 1400 -120 {
lab=ref_digital}
N 1350 -420 1350 -120 {
lab=lock}
N 1160 -420 1350 -420 {
lab=lock}
N 1200 -370 1200 -200 {
lab=#net6}
N 50 -200 1200 -200 {
lab=#net6}
N 1250 -470 1250 -160 {
lab=vcoarse}
N 1060 -470 1250 -470 {
lab=vcoarse}
N 1060 -470 1060 -420 {
lab=vcoarse}
C {sspd.sym} 970 -340 0 0 {name=x2}
C {slopebuf.sym} 540 -290 0 0 {name=x3}
C {full_vco_1.sym} 60 -120 0 0 {name=x4}
C {inv_buffer2.sym} 520 -320 0 0 {name=x5}
C {devices/iopin.sym} 1660 -630 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 1660 -610 0 0 {name=l50 sig_type=std_logic lab=vss}
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
C {inv_buffer2.sym} 1230 -460 0 1 {name=x10}
C {devices/lab_pin.sym} 1330 -460 1 1 {name=l9 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1330 -540 3 1 {name=l15 sig_type=std_logic lab=vdd}
C {inv_buffer2.sym} 1430 -460 0 1 {name=x11}
C {devices/lab_pin.sym} 1530 -460 1 1 {name=l17 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1530 -540 3 1 {name=l18 sig_type=std_logic lab=vdd}
C {inv_buffer2.sym} 1430 -280 0 1 {name=x12}
C {devices/lab_pin.sym} 1530 -280 1 1 {name=l19 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1530 -360 3 1 {name=l20 sig_type=std_logic lab=vdd}
C {devices/iopin.sym} 1660 -500 0 0 {name=l11 sig_type=std_logic lab=ref_in}
C {devices/iopin.sym} 1660 -440 0 0 {name=l21 sig_type=std_logic lab=s_in}
C {devices/iopin.sym} 1660 -410 0 0 {name=l22 sig_type=std_logic lab=load}
C {devices/iopin.sym} 1660 -380 0 0 {name=l23 sig_type=std_logic lab=read}
C {devices/iopin.sym} 1660 -350 0 0 {name=l24 sig_type=std_logic lab=clk_in}
C {devices/iopin.sym} 1660 -320 0 0 {name=l25 sig_type=std_logic lab=reset}
C {devices/iopin.sym} 1660 -470 0 0 {name=l26 sig_type=std_logic lab=s_out}
C {devices/iopin.sym} 1660 -530 0 0 {name=l27 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 1400 -120 1 1 {name=l28 sig_type=std_logic lab=ref_digital}
C {devices/lab_pin.sym} 1110 -420 3 1 {name=l29 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1250 -160 0 1 {name=l31 sig_type=std_logic lab=vcoarse}
C {devices/lab_pin.sym} 1350 -120 1 1 {name=l33 sig_type=std_logic lab=lock}
C {devices/lab_pin.sym} 380 -120 3 0 {name=l32 sig_type=std_logic lab=out}
C {voltage_control.sym} 960 -220 0 0 {name=x1}
