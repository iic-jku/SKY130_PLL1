v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1120 -400 1150 -400 {
lab=out3}
N 1150 -400 1150 -380 {
lab=out3}
N 1010 -400 1060 -400 {
lab=vin2}
N 550 -120 580 -120 {
lab=#net1}
N 580 -120 580 -100 {
lab=#net1}
N 580 -120 640 -120 {
lab=#net1}
N 640 -70 640 -10 {
lab=out1}
N 640 -10 800 -10 {
lab=out1}
N 800 -100 800 -10 {
lab=out1}
N 900 -90 930 -90 {
lab=#net2}
N 930 -90 930 -70 {
lab=#net2}
N 930 -90 990 -90 {
lab=#net2}
N 990 -40 990 20 {
lab=out2}
N 990 20 1150 20 {
lab=out2}
N 1150 -70 1150 20 {
lab=out2}
N 1260 -70 1290 -70 {
lab=#net3}
N 1290 -70 1290 -50 {
lab=#net3}
N 1290 -70 1350 -70 {
lab=#net3}
N 1350 -20 1350 40 {
lab=#net4}
N 1350 40 1510 40 {
lab=#net4}
N 1510 -50 1510 40 {
lab=#net4}
N 1250 -400 1320 -400 {
lab=#net5}
N 1280 -400 1280 -380 {
lab=#net5}
N 1380 -400 1410 -400 {
lab=#net6}
N 1410 -400 1410 -380 {
lab=#net6}
N 980 -380 980 -290 {
lab=s1}
N 820 -290 980 -290 {
lab=s1}
N 820 -350 820 -290 {
lab=s1}
N 1510 -400 1540 -400 {
lab=#net7}
N 1540 -400 1540 -380 {
lab=#net7}
N 1410 -400 1450 -400 {
lab=#net6}
C {devices/vsource.sym} 220 -550 0 0 {name=V1 value=0}
C {devices/vsource.sym} 270 -550 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} 270 -580 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 220 -580 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 270 -520 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 220 -520 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} 730 -490 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/code.sym} 760 -620 0 0 {name=s2 only_toplevel=false value="
.control
set temp=25
save vin1 vin2 out1 out2 out3 @V1[i]
tran 1n 5000n 0.0n
*plot @V1[i]
*plot vin1 vin2 out1 out2 out3
*plot vin2 out1 out2 out3
plot vin2 out3
*fft in1 in2 out
*plot db(mag(out1)) xlimit 0.1g 15g ylimit 0.0 -200
*plot db(mag(clkin)) xlimit 0.1g 15g ylimit 0.0 -200
*plot db(mag(clkin)) db(mag(out1)) db(mag(out2)) db(mag(out3)) db(mag(out4)) xlimit 0.1g 10g ylimit 0.0 -200
.endc
.end
"}
C {devices/vsource.sym} 550 -550 0 0 {name=V4 value="SINE(0.9 0.9 10meg 0 0 180)"}
C {devices/vdd.sym} 550 -520 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 550 -580 0 0 {name=l13 lab=in21}
C {devices/isource.sym} 330 -550 0 0 {name=I0 value=0.0}
C {devices/vdd.sym} 330 -520 2 0 {name=l12 lab=avss}
C {devices/vdd.sym} 330 -580 0 0 {name=l14 lab=bias}
C {devices/vsource.sym} 510 -550 0 1 {name=V3 value="SINE(0.9 0.9 10meg 0 0 0)"}
C {devices/vdd.sym} 510 -520 2 1 {name=l16 lab=avss}
C {devices/vdd.sym} 510 -580 0 1 {name=l17 lab=in11}
C {ota_2.sym} 790 -110 2 1 {name=x1}
C {devices/vdd.sym} 720 -40 2 0 {name=l1 lab=avdd}
C {devices/vdd.sym} 720 -150 0 0 {name=l2 lab=avss}
C {devices/capa.sym} 1150 -350 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1090 -400 3 1 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1150 -320 2 0 {name=l5 lab=avss}
C {devices/lab_pin.sym} 800 -100 1 0 {name=l18 sig_type=std_logic lab=out1}
C {devices/vsource.sym} 390 -370 0 0 {name=V5 value="PULSE(0.0 1.8 20ns 5ps 5ps 200ns 400ns)"}
C {devices/vdd.sym} 390 -340 2 0 {name=l20 lab=avss}
C {devices/vsource.sym} 350 -370 0 1 {name=V6 value="PULSE(0.0 1.8 0 5ps 5ps 20ns 40ns)"}
C {devices/vdd.sym} 350 -340 2 1 {name=l21 lab=avss}
C {devices/vdd.sym} 390 -400 0 0 {name=l22 lab=vin2}
C {devices/vdd.sym} 350 -400 0 1 {name=l23 lab=vin1}
C {devices/capa.sym} 1280 -350 0 0 {name=C2
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1220 -400 3 1 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1280 -320 2 0 {name=l24 lab=avss}
C {devices/vdd.sym} 1410 -320 2 0 {name=l19 lab=avss}
C {devices/lab_pin.sym} 1150 -70 1 0 {name=l26 sig_type=std_logic lab=out2}
C {devices/capa.sym} 580 -70 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 520 -120 3 1 {name=R4
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 580 -40 2 0 {name=l25 lab=avss}
C {ota_2.sym} 1140 -80 2 1 {name=x2}
C {devices/vdd.sym} 1070 -10 2 0 {name=l8 lab=avdd}
C {devices/vdd.sym} 1070 -120 0 0 {name=l15 lab=avss}
C {devices/capa.sym} 930 -40 0 0 {name=C3
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 870 -90 3 1 {name=R5
value=1k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 930 -10 2 0 {name=l29 lab=avss}
C {devices/capa.sym} 1290 -20 0 0 {name=C6
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1230 -70 3 1 {name=R6
value=10k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1290 10 2 0 {name=l33 lab=avss}
C {ota_2.sym} 1500 -60 2 1 {name=x3}
C {devices/vdd.sym} 1430 10 2 0 {name=l31 lab=avdd}
C {devices/vdd.sym} 1430 -100 0 0 {name=l34 lab=avss}
C {devices/vdd.sym} 1030 -400 0 0 {name=l36 lab=vin2}
C {devices/capa.sym} 220 -180 0 0 {name=C7
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 220 -150 2 0 {name=l9 lab=avss}
C {devices/vdd.sym} 220 -210 0 0 {name=l37 lab=avdd}
C {devices/lab_pin.sym} 840 -90 1 0 {name=l27 sig_type=std_logic lab=out1}
C {devices/vdd.sym} 490 -120 2 0 {name=l30 lab=avss}
C {devices/lab_pin.sym} 1200 -70 1 0 {name=l32 sig_type=std_logic lab=out2}
C {ota_2.sym} 970 -390 2 1 {name=x4}
C {devices/vdd.sym} 900 -320 2 0 {name=l6 lab=avdd}
C {devices/vdd.sym} 900 -430 0 0 {name=l35 lab=avss}
C {devices/lab_pin.sym} 1150 -400 1 0 {name=l38 sig_type=std_logic lab=out3}
C {devices/res.sym} 1350 -400 3 1 {name=R3
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1410 -350 0 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 980 -380 1 0 {name=l28 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 820 -400 1 0 {name=l39 sig_type=std_logic lab=s1}
C {devices/vdd.sym} 1540 -320 2 0 {name=l40 lab=avss}
C {devices/res.sym} 1480 -400 3 1 {name=R7
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 1540 -350 0 0 {name=C8
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 1190 -400 2 0 {name=l41 lab=avss}
