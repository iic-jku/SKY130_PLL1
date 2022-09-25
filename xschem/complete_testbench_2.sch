v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1250 -50 1270 -50 {
lab=#net1}
N -200 -50 -200 0 {
lab=#net1}
N -200 -150 -200 -90 {
lab=#net2}
N 1250 -90 1290 -90 {
lab=#net2}
N -70 -290 -70 -280 {
lab=avss}
N -130 -290 -130 -280 {
lab=vb}
N -190 -290 -190 -280 {
lab=avdd}
N -190 -220 -190 -210 {
lab=avss}
N -130 -220 -130 -210 {
lab=avss}
N -70 -220 -70 -202.5 {
lab=gnd}
N 280 -50 280 -30 {
lab=b}
N 280 -30 280 -20 {
lab=b}
N -200 -160 -200 -150 {
lab=#net2}
N 280 -120 280 -90 {
lab=a}
N 460 -90 460 40 {
lab=#net3}
N 870 -90 870 40 {
lab=#net4}
N 890 -50 890 40 {
lab=#net5}
N 1320 -90 1320 40 {
lab=#net2}
N 1290 -90 1320 -90 {
lab=#net2}
N 1270 -50 1340 -50 {
lab=#net1}
N 1340 -50 1340 40 {
lab=#net1}
N -10 -290 -10 -280 {
lab=vc}
N -10 -220 -10 -210 {
lab=avss}
N 40 455 40 485 {
lab=c}
N 60 455 60 485 {
lab=d}
N 60 -50 60 40 {
lab=b}
N 40 -90 40 40 {
lab=a}
N 460 455 460 485 {
lab=#net6}
N 480 455 480 485 {
lab=#net7}
N 870 455 870 485 {
lab=#net8}
N 890 455 890 485 {
lab=#net9}
N 1320 455 1320 485 {
lab=#net10}
N 1340 455 1340 485 {
lab=#net11}
N 40 40 40 140 {
lab=a}
N 60 40 60 140 {
lab=b}
N 460 40 460 140 {
lab=#net3}
N 480 40 480 140 {
lab=#net12}
N 870 40 870 140 {
lab=#net4}
N 890 40 890 140 {
lab=#net5}
N 1320 40 1320 140 {
lab=#net2}
N 1340 40 1340 140 {
lab=#net1}
N 480 -50 480 40 {
lab=#net12}
N 40 140 40 270 {
lab=a}
N 60 140 60 270 {
lab=b}
N 460 140 460 270 {
lab=#net3}
N 480 140 480 270 {
lab=#net12}
N 870 140 870 270 {
lab=#net4}
N 890 140 890 270 {
lab=#net5}
N 1320 140 1320 270 {
lab=#net2}
N 1340 140 1340 270 {
lab=#net1}
N 1150 -20 1150 100 {
lab=#net13}
N 430 -90 700 -90 {
lab=#net3}
N 430 -50 700 -50 {
lab=#net12}
N 840 -90 1110 -90 {
lab=#net4}
N 840 -50 1110 -50 {
lab=#net5}
N -200 -160 1270 -160 {
lab=#net2}
N 740 -20 740 100 {
lab=#net14}
N 330 -20 330 100 {
lab=#net15}
N -90 -20 -90 100 {
lab=#net16}
N 10 -50 290 -50 {
lab=b}
N 10 -90 290 -90 {
lab=a}
N 1270 -160 1270 -90 {
lab=#net2}
N 1270 -50 1270 -0 {
lab=#net1}
N -200 0 1270 0 {
lab=#net1}
N -200 -50 -130 -90 {
lab=#net1}
N -200 -90 -130 -50 {
lab=#net2}
C {delay_cell_2.sym} 20 -30 0 0 {name=x1}
C {delay_cell_2.sym} 440 -30 0 0 {name=x2}
C {delay_cell_2.sym} 850 -30 0 0 {name=x3}
C {delay_cell_2.sym} 1260 -30 0 0 {name=x4}
C {devices/vsource.sym} -190 -250 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} -130 -250 0 0 {name=V2 value=0.6}
C {devices/vsource.sym} -70 -250 0 0 {name=V3 value=0}
C {devices/gnd.sym} -70 -202.5 0 0 {name=l1 lab=gnd}
C {devices/vdd.sym} -70 -290 0 0 {name=l2 lab=avss}
C {devices/vdd.sym} -130 -290 0 0 {name=l3 lab=vb}
C {devices/vdd.sym} -190 -290 0 0 {name=l4 lab=avdd}
C {devices/vdd.sym} -190 -210 2 0 {name=l5 lab=avss}
C {devices/vdd.sym} -130 -210 2 0 {name=l6 lab=avss}
C {devices/code_shown.sym} 170 -180 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/code.sym} 160 -320 0 0 {name=s2 only_toplevel=false value=""
.control
set temp=25
alter v10 1.8
alter v11 0
alter v12 1.8
save a b c d @V3[i] @V6[i] @V5[i]
tran 0.01n 200n 50n
*plot @V3[i] @V5[i] @6[i]
*plot @V5[i]
*plot @V3[i]
*plot @v6[i]
*plot a b c d
plot a b
fft a
plot db(mag(a)) xlimit 0.5g 10g ylimit 0.0 -200
.endc
.end
"}
C {devices/lab_pin.sym} 280 -120 0 0 {name=l7 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 280 -20 0 0 {name=l8 sig_type=std_logic lab=b}
C {devices/vdd.sym} -90 -120 0 0 {name=l13 lab=avdd}
C {devices/vdd.sym} 330 -120 0 0 {name=l14 lab=avdd}
C {devices/vdd.sym} 740 -120 0 0 {name=l15 lab=avdd}
C {devices/vdd.sym} 1150 -120 0 0 {name=l16 lab=avdd}
C {devices/vdd.sym} -50 -120 0 0 {name=l17 lab=vb}
C {devices/vdd.sym} 370 -120 0 0 {name=l18 lab=vb}
C {devices/vdd.sym} 780 -120 0 0 {name=l19 lab=vb}
C {devices/vdd.sym} 1190 -120 0 0 {name=l20 lab=vb}
C {devices/vdd.sym} 10 320 3 0 {name=l23 lab=avdd}
C {devices/vdd.sym} 90 320 1 0 {name=l28 lab=avss}
C {devices/vsource.sym} -10 -250 0 0 {name=V4 value=0.3}
C {devices/vdd.sym} -10 -290 0 0 {name=l29 lab=vc}
C {devices/vdd.sym} -10 -210 2 0 {name=l30 lab=avss}
C {devices/lab_pin.sym} 40 467.5 0 0 {name=l35 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 60 467.5 0 1 {name=l36 sig_type=std_logic lab=d}
C {ma2022/inv_buffer.sym} 90 420 3 1 {name=x5}
C {devices/vdd.sym} 430 320 3 0 {name=l21 lab=avdd}
C {devices/vdd.sym} 510 320 1 0 {name=l22 lab=avss}
C {ma2022/inv_buffer.sym} 510 420 3 1 {name=x6}
C {devices/vdd.sym} 840 320 3 0 {name=l26 lab=avdd}
C {devices/vdd.sym} 920 320 1 0 {name=l27 lab=avss}
C {ma2022/inv_buffer.sym} 920 420 3 1 {name=x7}
C {devices/vdd.sym} 1290 320 3 0 {name=l33 lab=avdd}
C {devices/vdd.sym} 1370 320 1 0 {name=l34 lab=avss}
C {ma2022/inv_buffer.sym} 1370 420 3 1 {name=x8}
C {devices/vdd.sym} 360 -240 2 0 {name=l37 lab=avss}
C {devices/vdd.sym} 360 -300 0 0 {name=l38 lab=tail}
C {devices/vsource.sym} 360 -270 0 0 {name=V5 value=0}
C {devices/code.sym} 430 -320 0 0 {name=s4 only_toplevel=false value="
.control
set temp=125
alter v10 1.8 *ff
alter v11 0.0 *tt
alter v12 1.8 *ss
compose values start=0.0 stop=1.8 step=0.1
foreach val $&values
	alter v2 $val
	*alter v4 1.8-$val
	save a b c d @V3[i] @V5[i] @V6[i]
	tran 0.01n 50n 20n
	run
end
*plot tran1.c tran2.c tran3.c tran4.c tran5.c tran6.c tran7.c tran8.c tran9.c tran10.c xlimit 98ns 1ß0ns
*plot tran1.d tran2.d tran3.d tran4.d tran5.d tran6.d tran7.d tran8.d tran9.d tran10.d xlimit 98ns 100ns
*plot tran1.@V3[i] tran5.@V3[i] tran10.@V3[i]
*plot tran1.@V5[i] tran5.@V5[i] tran10.@V5[i]
*plot tran1.@V3[i] tran5.@V3[i] tran10.@V3[i]
*plot tran1.@V6[i] tran5.@V6[i] tran10.@V6[i]
*plot tran2.c tran5.c tran8.c tran10.c xlimit 98ns 100ns
*plot tran2.a tran5.a tran8.a tran10.a xlimit 98ns 100ns
fft tran1.a tran2.a tran3.a tran4.a tran5.a tran6.a tran7.a tran8.a tran9.a tran10.a tran11.a tran12.a tran13.a tran14.a tran15.a tran16.a tran17.a tran18.a tran19.a
*fft tran1.c tran2.c tran3.c tran4.c tran5.c tran6.c tran7.c tran8.c tran9.c tran10.c tran11.c tran12.c tran13.c tran14.c tran15.c tran16.c tran17.c tran18.c tran19.c
plot db(mag(fft(tran1.a))) db(mag(fft(tran2.a))) db(mag(fft(tran3.a))) db(mag(fft(tran4.a))) db(mag(fft(tran5.a))) db(mag(fft(tran6.a))) db(mag(fft(tran7.a))) db(mag(fft(tran8.a))) db(mag(fft(tran9.a))) db(mag(fft(tran10.a))) db(mag(fft(tran11.a)))  db(mag(fft(tran12.a)))  db(mag(fft(tran13.a))) db(mag(fft(tran14.a))) db(mag(fft(tran15.a))) db(mag(fft(tran16.a))) db(mag(fft(tran17.a))) db(mag(fft(tran18.a))) db(mag(fft(tran19.a))) xlimit 0.1g 10g
*plot db(mag(fft(tran1.c))) db(mag(fft(tran2.c))) db(mag(fft(tran3.c))) db(mag(fft(tran4.c))) db(mag(fft(tran5.c))) db(mag(fft(tran6.c))) db(mag(fft(tran7.c))) db(mag(fft(tran8.c))) db(mag(fft(tran9.c))) db(mag(fft(tran10.c))) db(mag(fft(tran11.c)))  db(mag(fft(tran12.c)))  db(mag(fft(tran13.c))) db(mag(fft(tran14.c))) db(mag(fft(tran15.c))) db(mag(fft(tran16.c))) db(mag(fft(tran17.c))) db(mag(fft(tran18.c))) db(mag(fft(tran19.c))) xlimit 0.1g 10g
.endc
.end
"}
C {devices/capa.sym} 10 30 1 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -20 30 0 0 {name=l39 sig_type=std_logic lab=avss}
C {devices/capa.sym} 430 30 1 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 400 30 0 0 {name=l40 sig_type=std_logic lab=avss}
C {devices/capa.sym} 840 30 1 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 810 30 0 0 {name=l41 sig_type=std_logic lab=avss}
C {devices/capa.sym} 1290 30 1 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1260 30 0 0 {name=l42 sig_type=std_logic lab=avss}
C {devices/capa.sym} 1370 30 3 1 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1400 30 0 1 {name=l43 sig_type=std_logic lab=avss}
C {devices/capa.sym} 920 30 3 1 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 950 30 0 1 {name=l44 sig_type=std_logic lab=avss}
C {devices/capa.sym} 510 30 3 1 {name=C7
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 540 30 0 1 {name=l45 sig_type=std_logic lab=avss}
C {devices/capa.sym} 90 30 3 1 {name=C8
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 120 30 0 1 {name=l46 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 620 -260 0 0 {name=V10 value=1.8}
C {devices/vdd.sym} 620 -290 0 0 {name=l86 lab=bit0}
C {devices/vdd.sym} 620 -230 2 0 {name=l87 lab=avss}
C {devices/vsource.sym} 680 -260 0 0 {name=V11 value=1.8}
C {devices/vdd.sym} 680 -290 0 0 {name=l88 lab=bit1}
C {devices/vdd.sym} 680 -230 2 0 {name=l89 lab=avss}
C {devices/vsource.sym} 740 -260 0 0 {name=V12 value=1.8}
C {devices/vdd.sym} 740 -290 0 0 {name=l90 lab=bit2}
C {devices/vdd.sym} 740 -230 2 0 {name=l91 lab=avss}
C {devices/vdd.sym} 1140 -230 3 0 {name=l48 lab=bit0}
C {devices/vdd.sym} 1140 -250 3 0 {name=l52 lab=bit1}
C {devices/vdd.sym} 1140 -270 3 0 {name=l53 lab=bit2}
C {devices/vsource.sym} 830 -260 0 0 {name=V6 value=0}
C {devices/vdd.sym} 830 -290 0 0 {name=l32 lab=avdd}
C {devices/vdd.sym} 830 -230 2 0 {name=l60 lab=tail2}
C {ma2022/current_vc1.sym} 1020 -260 0 0 {name=x9}
C {devices/vdd.sym} 940 -210 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 1040 -260 1 0 {name=l12 lab=vctrl}
C {ma2022/current_tg1.sym} 1290 -190 0 0 {name=x10}
C {devices/vdd.sym} 1220 -300 0 0 {name=l24 lab=vctrl}
C {devices/vdd.sym} 1270 -200 2 0 {name=l47 lab=avss}
C {devices/vdd.sym} 940 -310 0 0 {name=l9 lab=tail2}
C {devices/vdd.sym} 1270 -300 0 0 {name=l10 lab=tail2}
C {devices/vdd.sym} 1360 -270 1 1 {name=l25 lab=ss}
C {devices/vdd.sym} 1360 -250 1 1 {name=l31 lab=tt}
C {devices/vdd.sym} 1360 -230 1 1 {name=l49 lab=ff}
C {ma2022/current_tails1.sym} 0 150 0 0 {name=x11}
C {devices/vdd.sym} -90 200 2 0 {name=l50 lab=avss}
C {devices/vdd.sym} -150 130 3 0 {name=l51 lab=ss}
C {devices/vdd.sym} -150 150 3 0 {name=l54 lab=tt}
C {devices/vdd.sym} -150 170 3 0 {name=l55 lab=ff}
C {ma2022/current_tails1.sym} 420 150 0 0 {name=x12}
C {devices/vdd.sym} 330 200 2 0 {name=l56 lab=avss}
C {devices/vdd.sym} 270 130 3 0 {name=l57 lab=ss}
C {devices/vdd.sym} 270 150 3 0 {name=l58 lab=tt}
C {devices/vdd.sym} 270 170 3 0 {name=l59 lab=ff}
C {ma2022/current_tails1.sym} 830 150 0 0 {name=x13}
C {devices/vdd.sym} 740 200 2 0 {name=l61 lab=avss}
C {devices/vdd.sym} 680 130 3 0 {name=l62 lab=ss}
C {devices/vdd.sym} 680 150 3 0 {name=l63 lab=tt}
C {devices/vdd.sym} 680 170 3 0 {name=l64 lab=ff}
C {ma2022/current_tails1.sym} 1240 150 0 0 {name=x14}
C {devices/vdd.sym} 1150 200 2 0 {name=l65 lab=avss}
C {devices/vdd.sym} 1090 130 3 0 {name=l66 lab=ss}
C {devices/vdd.sym} 1090 150 3 0 {name=l67 lab=tt}
C {devices/vdd.sym} 1090 170 3 0 {name=l68 lab=ff}
