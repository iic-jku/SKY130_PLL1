v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2390 -1010 2420 -1010 {
lab=s1}
N 2390 -830 2420 -830 {
lab=s2}
N 2850 -930 2880 -930 {
lab=out1}
N 2850 -890 2880 -890 {
lab=out2}
C {devices/vsource.sym} 2150 -1180 0 0 {name=V1 value=0}
C {devices/vsource.sym} 2200 -1180 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 2350 -1180 0 0 {name=V4 value="SINE(0.9 0.9 2.0g)"}
C {devices/vdd.sym} 2390 -1210 0 0 {name=l1 lab=din}
C {devices/vdd.sym} 2200 -1210 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 2150 -1210 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 2350 -1150 2 0 {name=l5 lab=avss}
C {devices/vdd.sym} 2200 -1150 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 2150 -1150 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} 2460 -1130 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code.sym} 2590 -1260 0 0 {name=s2 only_toplevel=false value="
.control
*save o1 o2 out1 out2 in1 in2 @V1[i] @V2[i] @V3[i]
save din clk out1 out2 out3 @V1[i] s1 s2
tran 0.01n 50n 20n
plot @V1[i]
*plot din out1 xlimit 45ns 50ns
*plot din clk out1 out2 xlimit 45ns 50ns
plot out1 out2 xlimit 45ns 50ns
plot s1 s2 xlimit 45ns 50ns
fft din out1 out2
plot db(mag(out1)) xlimit 0.1g 15g ylimit 0.0 -200
plot db(mag(out2)) xlimit 0.1g 15g ylimit 0.0 -200
plot db(mag(din)) xlimit 0.1g 15g ylimit 0.0 -200
.endc
.end
"}
C {devices/vdd.sym} 2350 -1210 0 0 {name=l13 lab=invclk}
C {ma2022/d_ff.sym} 2360 -1000 0 0 {name=x1}
C {devices/vdd.sym} 2270 -1060 0 0 {name=l9 lab=avdd}
C {devices/vdd.sym} 2270 -960 2 0 {name=l14 lab=avss}
C {devices/lab_pin.sym} 2420 -1010 2 0 {name=l15 sig_type=std_logic lab=s1}
C {ma2022/d_ff.sym} 2360 -820 0 0 {name=x2}
C {devices/vdd.sym} 2270 -880 0 0 {name=l18 lab=avdd}
C {devices/vdd.sym} 2270 -780 2 0 {name=l19 lab=avss}
C {devices/lab_pin.sym} 2420 -830 2 0 {name=l20 sig_type=std_logic lab=s2}
C {devices/vdd.sym} 2210 -1010 0 0 {name=l8 lab=invclk}
C {devices/vdd.sym} 2210 -830 0 0 {name=l21 lab=din}
C {devices/vsource.sym} 2390 -1180 0 0 {name=V6 value="SINE(0.9 0.9 2.0g 250ps)"}
C {devices/vdd.sym} 2390 -1150 2 0 {name=l26 lab=avss}
C {ma2022/dcc.sym} 2810 -880 0 0 {name=x3}
C {devices/vdd.sym} 2750 -860 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} 2750 -960 0 0 {name=l16 lab=avdd}
C {devices/lab_pin.sym} 2660 -930 2 1 {name=l17 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 2660 -890 2 1 {name=l22 sig_type=std_logic lab=s2}
C {devices/lab_pin.sym} 2880 -930 2 0 {name=l23 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 2880 -890 2 0 {name=l25 sig_type=std_logic lab=out2}
C {devices/capa.sym} 2410 -980 0 1 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2410 -950 1 1 {name=l43 sig_type=std_logic lab=avss}
C {devices/capa.sym} 2410 -800 0 1 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2410 -770 1 1 {name=l2 sig_type=std_logic lab=avss}
