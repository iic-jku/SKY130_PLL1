v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
C {devices/vsource.sym} 610 -1810 0 0 {name=V1 value=0}
C {devices/vsource.sym} 660 -1810 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} 660 -1840 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 610 -1840 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 660 -1780 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 610 -1780 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} 920 -1760 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/code.sym} 1050 -1890 0 0 {name=s2 only_toplevel=false value="
.include /foss/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
set temp=25
save clkin out1 out2 out3 out4 @V1[i] @V2[i] @V3[i] @V5[i]
tran 0.01n 200n 0n
plot @V1[i] @V2[i] @V3[i] @V5[i]
plot clkin out1
plot clkin out2
plot clkin out4
fft clkin out1 out2 out4
plot db(mag(clkin)) db(mag(out1)) db(mag(out2)) db(mag(out4)) xlimit 0.0meg 5g ylimit 0.0 -120
.endc
.end
"}
C {devices/lab_pin.sym} 970 -1650 1 1 {name=l6 sig_type=std_logic lab=out2}
C {devices/vsource.sym} 830 -1810 0 0 {name=V3 value="PULSE(0.0 1.8 10n 5p 5p 240p 500p)"}
C {devices/vdd.sym} 830 -1780 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 830 -1840 0 0 {name=l12 lab=clkin}
C {devices/vsource.sym} 720 -1810 0 0 {name=V5 value=1.8}
C {devices/vdd.sym} 720 -1840 0 0 {name=l15 lab=VPWR}
C {devices/vdd.sym} 720 -1780 2 0 {name=l16 lab=avss}
C {devices/vsource.sym} 780 -1810 0 0 {name=V6 value=0}
C {devices/vdd.sym} 780 -1840 0 0 {name=l17 lab=VGND}
C {devices/vdd.sym} 780 -1780 2 0 {name=l18 lab=avss}
C {devices/vdd.sym} 780 -1660 0 0 {name=l2 lab=clkin}
C {ma2022/d_ff_15.sym} 930 -1630 0 0 {name=x1}
C {devices/vdd.sym} 870 -1620 2 0 {name=l1 lab=avss}
C {devices/vdd.sym} 870 -1700 0 0 {name=l5 lab=avdd}
C {devices/lab_pin.sym} 970 -1670 3 1 {name=l8 sig_type=std_logic lab=out1}
C {ma2022/d_ff_10.sym} 930 -1480 0 0 {name=x2}
C {devices/vdd.sym} 870 -1470 2 0 {name=l9 lab=avss}
C {devices/vdd.sym} 870 -1550 0 0 {name=l13 lab=avdd}
C {devices/vdd.sym} 780 -1510 0 0 {name=l14 lab=clkin}
C {devices/lab_pin.sym} 970 -1520 3 1 {name=l19 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 970 -1500 1 1 {name=l20 sig_type=std_logic lab=out4}
