v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 20 -50 40 -50 {
lab=b}
N 240 -50 260 -50 {
lab=#net1}
N 240 -90 260 -90 {
lab=#net2}
N 460 -90 480 -90 {
lab=#net3}
N 460 -50 480 -50 {
lab=#net4}
N 620 -50 640 -50 {
lab=#net5}
N -200 -50 -200 0 {
lab=#net6}
N -200 -50 -180 -50 {
lab=#net6}
N -200 -90 -180 -90 {
lab=#net5}
N -200 -150 -200 -90 {
lab=#net5}
N -200 -160 460 -160 {
lab=#net5}
N 640 -150 640 -70 {
lab=#net5}
N 640 -70 640 -50 {
lab=#net5}
N 620 -90 660 -90 {
lab=#net6}
N 660 -90 660 0 {
lab=#net6}
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
N 30 -50 30 -30 {
lab=b}
N 30 -30 30 -20 {
lab=b}
N -200 0 -200 20 {
lab=#net6}
N 660 0 660 20 {
lab=#net6}
N -200 -160 -200 -150 {
lab=#net5}
N 640 -160 640 -150 {
lab=#net5}
N 460 -160 640 -160 {
lab=#net5}
N -40 -50 20 -50 {
lab=b}
N -40 -90 30 -90 {
lab=a}
N 30 -90 40 -90 {
lab=a}
N 30 -120 30 -90 {
lab=a}
N 180 -90 240 -90 {
lab=#net2}
N 180 -50 240 -50 {
lab=#net1}
N 400 -90 460 -90 {
lab=#net3}
N 400 -50 460 -50 {
lab=#net4}
N 210 -90 210 40 {
lab=#net2}
N 430 -90 430 40 {
lab=#net3}
N 450 -50 450 40 {
lab=#net4}
N 690 -90 690 40 {
lab=#net6}
N 660 -90 690 -90 {
lab=#net6}
N 640 -50 710 -50 {
lab=#net5}
N 710 -50 710 40 {
lab=#net5}
N -10 -290 -10 -280 {
lab=vc}
N -10 -220 -10 -210 {
lab=avss}
N -10 325 -10 355 {
lab=c}
N 10 325 10 355 {
lab=d}
N 10 -50 10 40 {
lab=b}
N -10 -90 -10 40 {
lab=a}
N 210 325 210 355 {
lab=#net7}
N 230 325 230 355 {
lab=#net8}
N 430 325 430 355 {
lab=#net9}
N 450 325 450 355 {
lab=#net10}
N 690 325 690 355 {
lab=#net11}
N 710 325 710 355 {
lab=#net12}
N -200 120 660 120 {
lab=#net6}
N -10 40 -10 140 {
lab=a}
N 10 40 10 140 {
lab=b}
N 210 40 210 140 {
lab=#net2}
N 230 40 230 140 {
lab=#net1}
N 430 40 430 140 {
lab=#net3}
N 450 40 450 140 {
lab=#net4}
N 690 40 690 140 {
lab=#net6}
N 710 40 710 140 {
lab=#net5}
N -200 20 -200 120 {
lab=#net6}
N 660 20 660 120 {
lab=#net6}
N 520 -20 530 -20 {
lab=#net13}
N 530 10 540 10 {
lab=tail}
N 540 10 540 40 {
lab=tail}
N 530 40 540 40 {
lab=tail}
N 300 -20 310 -20 {
lab=#net14}
N 310 10 320 10 {
lab=tail}
N 320 10 320 40 {
lab=tail}
N 310 40 320 40 {
lab=tail}
N 80 -20 90 -20 {
lab=#net15}
N 90 10 100 10 {
lab=tail}
N 100 10 100 40 {
lab=tail}
N 90 40 100 40 {
lab=tail}
N -140 -20 -130 -20 {
lab=#net16}
N -130 10 -120 10 {
lab=tail}
N -120 10 -120 40 {
lab=tail}
N -130 40 -120 40 {
lab=tail}
N 230 -50 230 40 {
lab=#net1}
C {delay_cell.sym} -30 -30 0 0 {name=x1}
C {delay_cell.sym} 190 -30 0 0 {name=x2}
C {delay_cell.sym} 410 -30 0 0 {name=x3}
C {delay_cell.sym} 630 -30 0 0 {name=x4}
C {devices/vsource.sym} -190 -250 0 0 {name=V1 value=1.8}
C {devices/vsource.sym} -130 -250 0 0 {name=V2 value=0.6}
C {devices/vsource.sym} -70 -250 0 0 {name=V3 value=0}
C {devices/gnd.sym} -70 -202.5 0 0 {name=l1 lab=gnd}
C {devices/vdd.sym} -70 -290 0 0 {name=l2 lab=avss}
C {devices/vdd.sym} -130 -290 0 0 {name=l3 lab=vb}
C {devices/vdd.sym} -190 -290 0 0 {name=l4 lab=avdd}
C {devices/vdd.sym} -190 -210 2 0 {name=l5 lab=avss}
C {devices/vdd.sym} -130 -210 2 0 {name=l6 lab=avss}
C {devices/code_shown.sym} 170 -180 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/code.sym} 160 -320 0 0 {name=s2 only_toplevel=false value=""
.control
save a b c d @V1[i] @V2[i] @V3[i] @V4[i] @V5[i]
tran 0.01n 100n 50n
*plot @V1[i] @V2[i] @V3[i] @V4[i]
plot @V5[i]
plot @V3[i]
plot a b c d
fft a
plot db(mag(a)) xlimit 0.5g 10g ylimit 0.0 -200
.endc
.end
"}
C {devices/lab_pin.sym} 30 -120 0 0 {name=l7 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 30 -20 0 0 {name=l8 sig_type=std_logic lab=b}
C {devices/vdd.sym} -140 -120 0 0 {name=l13 lab=avdd}
C {devices/vdd.sym} 80 -120 0 0 {name=l14 lab=avdd}
C {devices/vdd.sym} 300 -120 0 0 {name=l15 lab=avdd}
C {devices/vdd.sym} 520 -120 0 0 {name=l16 lab=avdd}
C {devices/vdd.sym} -100 -120 0 0 {name=l17 lab=vb}
C {devices/vdd.sym} 120 -120 0 0 {name=l18 lab=vb}
C {devices/vdd.sym} 340 -120 0 0 {name=l19 lab=vb}
C {devices/vdd.sym} 560 -120 0 0 {name=l20 lab=vb}
C {devices/vdd.sym} -40 190 3 0 {name=l23 lab=avdd}
C {devices/vdd.sym} 40 190 1 0 {name=l28 lab=avss}
C {devices/vsource.sym} -10 -250 0 0 {name=V4 value=1.3
}
C {devices/vdd.sym} -10 -290 0 0 {name=l29 lab=vc}
C {devices/vdd.sym} -10 -210 2 0 {name=l30 lab=avss}
C {devices/lab_pin.sym} -10 337.5 0 0 {name=l35 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 10 337.5 0 1 {name=l36 sig_type=std_logic lab=d}
C {ma2022/inv_buffer.sym} 40 290 3 1 {name=x5}
C {devices/vdd.sym} 180 190 3 0 {name=l21 lab=avdd}
C {devices/vdd.sym} 260 190 1 0 {name=l22 lab=avss}
C {ma2022/inv_buffer.sym} 260 290 3 1 {name=x6}
C {devices/vdd.sym} 400 190 3 0 {name=l26 lab=avdd}
C {devices/vdd.sym} 480 190 1 0 {name=l27 lab=avss}
C {ma2022/inv_buffer.sym} 480 290 3 1 {name=x7}
C {devices/vdd.sym} 660 190 3 0 {name=l33 lab=avdd}
C {devices/vdd.sym} 740 190 1 0 {name=l34 lab=avss}
C {ma2022/inv_buffer.sym} 740 290 3 1 {name=x8}
C {devices/vdd.sym} 490 10 3 0 {name=l25 lab=vc}
C {sky130_fd_pr/nfet_01v8.sym} 510 10 0 0 {name=M1
L=0.15
W=2.8
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 270 10 3 0 {name=l10 lab=vc}
C {sky130_fd_pr/nfet_01v8.sym} 290 10 0 0 {name=M2
L=0.15
W=2.8
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 50 10 3 0 {name=l12 lab=vc}
C {sky130_fd_pr/nfet_01v8.sym} 70 10 0 0 {name=M3
L=0.15
W=2.8
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} -170 10 3 0 {name=l32 lab=vc}
C {sky130_fd_pr/nfet_01v8.sym} -150 10 0 0 {name=M4
L=0.15
W=2.8
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 360 -240 2 0 {name=l37 lab=avss}
C {devices/vdd.sym} 360 -300 0 0 {name=l38 lab=tail}
C {devices/vdd.sym} 530 40 2 0 {name=l9 lab=tail}
C {devices/vdd.sym} 310 40 2 0 {name=l11 lab=tail}
C {devices/vdd.sym} 90 40 2 0 {name=l24 lab=tail}
C {devices/vdd.sym} -130 40 2 0 {name=l31 lab=tail}
C {devices/vsource.sym} 360 -270 0 0 {name=V5 value=0}
C {devices/code.sym} 430 -320 0 0 {name=s4 only_toplevel=false value="
.control
compose values start=0.0 stop=1.8 step=0.2
foreach val $&values
	alter v2 $val
	save a b c d @V3[i] @V5[i]
	tran 0.01n 100n 50n
	run
end
*plot tran1.c tran2.c tran3.c tran4.c tran5.c tran6.c tran7.c tran8.c tran9.c tran10.c xlimit 98ns 1ß0ns
*plot tran1.d tran2.d tran3.d tran4.d tran5.d tran6.d tran7.d tran8.d tran9.d tran10.d xlimit 98ns 100ns
*plot tran1.@V3[i] tran5.@V3[i] tran10.@V3[i]
plot tran1.@V5[i] tran5.@V5[i] tran10.@V5[i]
*plot tran2.c tran5.c tran8.c tran10.c xlimit 98ns 100ns
*plot tran2.a tran5.a tran8.a tran10.a xlimit 98ns 100ns
fft tran1.a tran2.a tran3.a tran4.a tran5.a tran6.a tran7.a tran8.a tran9.a tran10.a
plot db(mag(fft(tran1.a))) db(mag(fft(tran2.a))) db(mag(fft(tran3.a))) db(mag(fft(tran4.a))) db(mag(fft(tran5.a))) db(mag(fft(tran6.a))) db(mag(fft(tran7.a))) db(mag(fft(tran8.a))) db(mag(fft(tran9.a))) db(mag(fft(tran10.a))) xlimit 0.1g 10g
.endc
.end
"}
C {devices/capa.sym} -40 80 1 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -70 80 0 0 {name=l39 sig_type=std_logic lab=avss}
C {devices/capa.sym} 180 80 1 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 150 80 0 0 {name=l40 sig_type=std_logic lab=avss}
C {devices/capa.sym} 400 80 1 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 80 0 0 {name=l41 sig_type=std_logic lab=avss}
C {devices/capa.sym} 630 80 1 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 600 80 0 0 {name=l42 sig_type=std_logic lab=avss}
C {devices/capa.sym} 740 80 3 1 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 770 80 0 1 {name=l43 sig_type=std_logic lab=avss}
C {devices/capa.sym} 480 80 3 1 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 510 80 0 1 {name=l44 sig_type=std_logic lab=avss}
C {devices/capa.sym} 260 80 3 1 {name=C7
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 290 80 0 1 {name=l45 sig_type=std_logic lab=avss}
C {devices/capa.sym} 40 80 3 1 {name=C8
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 70 80 0 1 {name=l46 sig_type=std_logic lab=avss}
