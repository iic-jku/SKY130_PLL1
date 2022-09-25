v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 0 210 40 210 {
lab=out1}
N 210 210 250 210 {
lab=out2}
N 420 210 460 210 {
lab=out3}
N 630 210 670 210 {
lab=out4}
C {devices/vsource.sym} -180 -20 0 0 {name=V1 value=0}
C {devices/vsource.sym} -130 -20 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 20 -20 0 0 {name=V4 value="SINE(0.9 0.9 1.0g)"}
C {devices/vdd.sym} -130 -50 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} -180 -50 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 20 10 2 0 {name=l5 lab=avss}
C {devices/vdd.sym} -130 10 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} -180 10 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} 130 30 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/code.sym} 260 -100 0 0 {name=s2 only_toplevel=false value="
.control
set temp=25
save clkin out1 out2 out3 out4 @V1[i]
tran 0.01n 500n 20n
*plot @V1[i]
plot clkin out4
fft clkin out1 out2 out3 out4
*plot db(mag(out1)) xlimit 0.1g 15g ylimit 0.0 -200
*plot db(mag(clkin)) xlimit 0.1g 15g ylimit 0.0 -200
plot db(mag(clkin)) db(mag(out1)) db(mag(out2)) db(mag(out3)) db(mag(out4)) xlimit 0.1g 10g ylimit 0.0 -200
.endc
.end
"}
C {devices/vdd.sym} 20 -50 0 0 {name=l13 lab=clkin}
C {devices/capa.sym} 650 240 0 1 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 650 270 1 1 {name=l27 sig_type=std_logic lab=avss}
C {ma2022/d_ff_2.sym} -20 230 0 0 {name=x1}
C {ma2022/d_ff_2.sym} 190 230 0 0 {name=x2}
C {ma2022/d_ff_2.sym} 400 230 0 0 {name=x3}
C {ma2022/d_ff_2.sym} 610 230 0 0 {name=x4}
C {devices/vdd.sym} -100 250 2 0 {name=l1 lab=avss}
C {devices/vdd.sym} 110 250 2 0 {name=l2 lab=avss}
C {devices/vdd.sym} 320 250 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} 530 250 2 0 {name=l8 lab=avss}
C {devices/vdd.sym} -100 170 0 0 {name=l9 lab=avdd}
C {devices/vdd.sym} 110 170 0 0 {name=l11 lab=avdd}
C {devices/vdd.sym} 320 170 0 0 {name=l12 lab=avdd}
C {devices/vdd.sym} 530 170 0 0 {name=l14 lab=avdd}
C {devices/vdd.sym} -170 210 0 0 {name=l15 lab=clkin}
C {devices/capa.sym} 440 240 0 1 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 440 270 1 1 {name=l16 sig_type=std_logic lab=avss}
C {devices/capa.sym} 230 240 0 1 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 230 270 1 1 {name=l17 sig_type=std_logic lab=avss}
C {devices/capa.sym} 20 240 0 1 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 20 270 1 1 {name=l18 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 20 210 1 0 {name=l19 sig_type=std_logic lab=out1}
C {devices/lab_pin.sym} 230 210 1 0 {name=l20 sig_type=std_logic lab=out2}
C {devices/lab_pin.sym} 440 210 1 0 {name=l21 sig_type=std_logic lab=out3}
C {devices/lab_pin.sym} 650 210 1 0 {name=l22 sig_type=std_logic lab=out4}
