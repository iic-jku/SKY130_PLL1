v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 440 470 600 470 {
lab=s2}
N 440 390 440 470 {
lab=s2}
N 600 360 600 470 {
lab=s2}
N 110 330 160 330 {
lab=vco_in}
N 510 120 560 120 {
lab=clk}
N 510 140 560 140 {
lab=nclk}
N 750 360 750 530 {
lab=#net1}
N 220 330 220 500 {
lab=s1}
N 160 330 160 500 {
lab=vco_in}
N 690 360 690 530 {
lab=s2}
N 600 360 690 360 {
lab=s2}
N 220 330 300 330 {
lab=s1}
N 300 330 440 330 {
lab=s1}
N 1100 500 1200 500 {
lab=v_out}
N 1100 470 1100 500 {
lab=v_out}
N 1120 360 1260 360 {
lab=v_out}
N 1200 500 1260 360 {
lab=v_out}
N 750 360 1060 360 {
lab=#net1}
C {devices/code_shown.sym} 460 -30 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/vsource.sym} 30 -130 0 0 {name=V1 value=0}
C {devices/vsource.sym} 80 -130 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 220 -130 0 0 {name=V3 value="PULSE 0.0 1.8 50ps 1ps 1ps 20ns 40ns"}
C {devices/vdd.sym} 80 -160 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 30 -160 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 220 -100 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} 80 -100 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 30 -100 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 140 -130 0 0 {name=V5 value=1.3078}
C {devices/vdd.sym} 140 -100 2 0 {name=l25 lab=avss}
C {devices/vdd.sym} 220 -160 0 0 {name=l16 lab=ref_in}
C {devices/code.sym} 440 -180 0 0 {name=s5 only_toplevel=false value="
.control
save ref_in vco_in clk nclk v_out @V1[i] @V3[i] s1 s2
tran 0.005n 30000n 0n
run
*plot clk nclk xlimit 40n 160n
*plot ref_in vco_in xlimit 0n 160n
*plot s1 v_out
*plot s1
plot ref_in vco_in
plot v_out
*fft vco_in
*plot db(mag(vco_in)) xlimit 0.1meg 200meg ylimit 0.0 -60
*plot v_out
*plot clk nclk s1 s2 v_out
*plot s2
*plot s1 s2
*plot @V1[i] @V3[i]
*compose values values 10.738n 10.666n 10.596n
*foreach val $&values
*	echo run = $val
*	alter @v4[pulse] = [ 1.8 0.0 0 5ps 5ps 5.323ns $val ] $ vector
*	save ref_in vco_in clk nclk v_out @V1[i] @V3[i] s1 s2
*	tran 0.001n 280n 40n
*	run
*end
*plot tran1.vco_in tran2.vco_in tran3.vco_in
*plot tran1.s2 tran2.s2 tran3.s2
*plot tran1.v_out tran2.v_out tran3.v_out
*plot tran1.v_out
*plot tran2.v_out
*plot tran3.v_out
*plot tran1.s2
*plot tran2.s2
*plot tran3.s2
*compose values start=0.0 stop=1.8 step=0.1
*foreach val $&values
*	echo run = $val
*	alter v5 $val
*	save ref_in vco_in clk nclk v_out @V1[i] @V3[i] s1 s2
*	tran 0.05n 280n 40n
*	run
*end
.endc
.end
"}
C {devices/vdd.sym} 140 -160 0 0 {name=l2 lab=vc}
C {ma2022/differential.sym} 460 160 0 0 {name=x1}
C {devices/vdd.sym} 410 170 2 0 {name=l1 lab=avss}
C {devices/vdd.sym} 410 90 0 0 {name=l5 lab=avdd}
C {devices/vdd.sym} 130 130 0 0 {name=l8 lab=ref_in}
C {devices/lab_pin.sym} 560 140 2 0 {name=l15 sig_type=std_logic lab=nclk}
C {devices/lab_pin.sym} 560 120 2 0 {name=l9 sig_type=std_logic lab=clk}
C {ma2022/inv_buffer.sym} 280 180 0 0 {name=x2}
C {devices/vdd.sym} 180 180 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 180 100 0 0 {name=l12 lab=avdd}
C {devices/vdd.sym} 130 150 2 0 {name=l13 lab=avss}
C {devices/vdd.sym} 310 150 2 0 {name=l14 lab=avdd}
C {ma2022/ota_2.sym} 590 370 0 0 {name=x3}
C {devices/capa.sym} 300 360 0 1 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 300 390 1 1 {name=l35 sig_type=std_logic lab=avss}
C {devices/vdd.sym} 520 420 2 0 {name=l18 lab=avss}
C {devices/vdd.sym} 520 300 0 0 {name=l19 lab=avdd}
C {sky130_fd_pr/nfet_01v8.sym} 720 340 1 0 {name=M11
L=0.15
W=1.4
nf=2
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
C {devices/lab_pin.sym} 720 360 3 0 {name=l32 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 190 310 1 0 {name=M1
L=0.15
W=1.4
nf=2
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
C {devices/lab_pin.sym} 190 330 3 0 {name=l20 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 630 -130 0 0 {name=V4 value="PULSE 0.0 1.8 0 200ps 1ps 4.800ns 10.0002ns"}
C {devices/vdd.sym} 630 -100 2 0 {name=l24 lab=avss}
C {devices/vdd.sym} 630 -160 0 0 {name=l26 lab=vco_in}
C {devices/vdd.sym} 110 330 0 0 {name=l27 lab=vco_in}
C {devices/lab_pin.sym} 300 330 1 0 {name=l29 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 640 360 1 0 {name=l30 sig_type=std_logic lab=s2}
C {devices/vdd.sym} 440 360 3 0 {name=l23 lab=vc}
C {devices/lab_pin.sym} 190 290 1 0 {name=l21 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 720 320 1 0 {name=l22 sig_type=std_logic lab=nclk}
C {devices/capa.sym} 510 90 2 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 510 60 1 0 {name=l31 sig_type=std_logic lab=avss}
C {devices/capa.sym} 510 170 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 510 200 3 0 {name=l33 sig_type=std_logic lab=avss}
C {devices/capa.sym} 640 390 0 0 {name=C6
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 640 420 3 0 {name=l36 sig_type=std_logic lab=avss}
C {devices/capa.sym} 110 360 0 0 {name=C7
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 110 390 3 0 {name=l37 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 190 520 1 1 {name=M2
L=0.15
W=1.4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 720 550 1 1 {name=M3
L=0.15
W=1.4
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 190 540 3 0 {name=l34 sig_type=std_logic lab=nclk}
C {devices/lab_pin.sym} 720 570 3 0 {name=l38 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 720 530 1 0 {name=l39 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 190 500 1 0 {name=l40 sig_type=std_logic lab=avdd}
C {devices/vsource.sym} 970 -130 0 0 {name=V6 value=1.3078}
C {devices/vdd.sym} 970 -100 2 0 {name=l41 lab=avss}
C {devices/vdd.sym} 970 -160 0 0 {name=l42 lab=vb}
C {devices/capa.sym} 930 390 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 930 420 3 0 {name=l44 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1260 360 0 1 {name=l100 sig_type=std_logic lab=v_out}
C {devices/res.sym} 1100 530 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1100 590 0 0 {name=V9 value=1.08}
C {devices/vdd.sym} 1100 620 2 0 {name=l106 lab=avss}
C {devices/res.sym} 1200 530 0 0 {name=R2
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1200 560 2 0 {name=l105 lab=avss}
C {devices/lab_pin.sym} 1100 560 0 0 {name=l107 sig_type=std_logic lab=filter}
C {devices/capa.sym} 1160 390 0 0 {name=C10
m=1
value=200p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1090 360 3 0 {name=R3
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1160 420 2 0 {name=l108 lab=avss}
