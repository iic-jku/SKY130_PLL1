v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1000 320 1100 320 {
lab=v_out}
N 1100 320 1160 320 {
lab=v_out}
N 1450 290 1460 290 {
lab=avdd}
N 1460 260 1460 290 {
lab=avdd}
N 1450 260 1460 260 {
lab=avdd}
N 1450 380 1460 380 {
lab=avss}
N 1460 350 1460 380 {
lab=avss}
N 1450 350 1460 350 {
lab=avss}
N 1410 290 1410 350 {
lab=avss}
N 820 110 880 110 {
lab=slope}
N 530 110 600 110 {
lab=f_div}
N 310 250 370 110 {
lab=vco_out}
N 1450 320 1570 320 {
lab=#net1}
N 1330 100 1330 320 {
lab=v_out}
N 1330 100 1370 100 {
lab=v_out}
N 1160 320 1330 320 {
lab=v_out}
N 1410 350 1450 380 {
lab=avss}
N 1050 100 1100 100 {
lab=#net2}
C {devices/code_shown.sym} 770 -30 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/vsource.sym} 210 -130 0 0 {name=V1 value=0}
C {devices/vsource.sym} 260 -130 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 530 -130 0 0 {name=V3 value="PULSE 0.0 1.8 50ps 1ps 1ps 20ns 40ns"}
C {devices/vdd.sym} 260 -160 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 210 -160 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 530 -100 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} 260 -100 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 210 -100 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 320 -130 0 0 {name=V5 value=1.3078}
C {devices/vdd.sym} 320 -100 2 0 {name=l25 lab=avss}
C {devices/vdd.sym} 530 -160 0 0 {name=l16 lab=ref_in}
C {devices/code.sym} 750 -180 0 0 {name=s5 only_toplevel=false value="
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
*save ref_in vco_out f_div slope v_out @V1[i] @V2[i] @V3[i] @V4[i] @V15[i]
save vco_out f_div v_out
tran 0.05n 10000n 5.0n
run
plot vco_out
plot f_div
*plot ref_in slope
plot v_out
*plot @V1[i] @V2[i] @V3[i] @V4[i] @V15[i]
fft ref_in vco_out f_div
plot db(mag(ref_in)) db(mag(f_div)) db(mag(vco_out)) xlimit 0.1meg 4g ylimit 5 -60
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
C {devices/vdd.sym} 320 -160 0 0 {name=l2 lab=vbias}
C {devices/vdd.sym} 880 90 0 0 {name=l8 lab=ref_in}
C {devices/vsource.sym} 940 -130 0 0 {name=V4 value="PULSE 1.8 0.0 1u 1ps 1ps 10us 12us"}
C {devices/vdd.sym} 940 -100 2 0 {name=l24 lab=avss}
C {devices/vdd.sym} 940 -160 0 0 {name=l26 lab=vtgate}
C {devices/vdd.sym} 990 50 0 0 {name=l23 lab=vbias}
C {devices/lab_pin.sym} 1370 100 0 1 {name=l100 sig_type=std_logic lab=v_out}
C {devices/res.sym} 1000 350 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1000 440 2 0 {name=l106 lab=avss}
C {devices/res.sym} 1100 350 0 0 {name=R2
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1100 380 2 0 {name=l105 lab=avss}
C {devices/lab_pin.sym} 1000 380 0 0 {name=l107 sig_type=std_logic lab=filter}
C {devices/vdd.sym} 640 160 2 0 {name=l17 lab=avss}
C {devices/vdd.sym} 640 60 0 0 {name=l70 lab=avdd}
C {devices/lab_pin.sym} 820 110 3 1 {name=l101 sig_type=std_logic lab=slope}
C {devices/vdd.sym} 760 60 0 0 {name=l109 lab=vbias2}
C {devices/vsource.sym} 390 -130 0 0 {name=V13 value=0.7}
C {devices/vdd.sym} 390 -160 0 0 {name=l110 lab=vbias2}
C {devices/vdd.sym} 390 -100 2 0 {name=l111 lab=avss}
C {devices/vsource.sym} 1180 -130 0 0 {name=V11 value="PULSE 0.0 1.8 0 1ps 1ps 331ps 666ps"}
C {devices/vdd.sym} 1180 -100 2 0 {name=l47 lab=avss}
C {devices/vdd.sym} 1180 -160 0 0 {name=l48 lab=vco_in2}
C {devices/vsource.sym} 90 -130 0 0 {name=V15 value=1.8}
C {devices/vdd.sym} 90 -160 0 0 {name=l112 lab=VPWR}
C {devices/vdd.sym} 90 -100 2 0 {name=l113 lab=avss}
C {devices/vsource.sym} 150 -130 0 0 {name=V16 value=0.0}
C {devices/vdd.sym} 150 -160 0 0 {name=l114 lab=VGND}
C {devices/vdd.sym} 150 -100 2 0 {name=l115 lab=avss}
C {devices/capa.sym} 30 -130 0 0 {name=C16
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 30 -100 2 0 {name=l27 lab=avss}
C {devices/vdd.sym} 30 -160 0 0 {name=l148 lab=avdd}
C {devices/vsource.sym} 450 -130 0 0 {name=V18 value=0.8}
C {devices/vdd.sym} 450 -160 0 0 {name=l145 lab=vbias3}
C {devices/vdd.sym} 450 -100 2 0 {name=l146 lab=avss}
C {devices/capa.sym} 1160 350 0 0 {name=C19
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1160 380 3 0 {name=l42 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 1430 350 0 0 {name=M4
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
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 1430 290 0 0 {name=M5
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
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1450 380 3 0 {name=l74 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1450 260 1 0 {name=l137 sig_type=std_logic lab=avdd}
C {devices/vdd.sym} 950 150 2 0 {name=l18 lab=avss}
C {devices/vdd.sym} 950 50 0 0 {name=l19 lab=avdd}
C {devices/vsource.sym} 1000 410 0 0 {name=V19 value="PWL 0 0 +1n 1.8 +1n 0.0 +1n 1.08 +20u 1.08"}
C {devices/vdd.sym} 80 80 0 0 {name=l13 lab=avdd}
C {devices/vdd.sym} 80 280 2 0 {name=l14 lab=avss}
C {devices/vdd.sym} 120 80 0 0 {name=l32 lab=vbias3}
C {devices/lab_pin.sym} 160 80 3 1 {name=l33 sig_type=std_logic lab=v_out}
C {devices/lab_pin.sym} 310 250 1 1 {name=l34 sig_type=std_logic lab=vco_out}
C {devices/vdd.sym} 450 150 2 0 {name=l35 lab=avss}
C {devices/vdd.sym} 450 70 0 0 {name=l36 lab=avdd}
C {devices/lab_pin.sym} 530 110 3 1 {name=l28 sig_type=std_logic lab=f_div}
C {devices/vdd.sym} 1190 150 2 0 {name=l29 lab=avss}
C {devices/vdd.sym} 1140 50 0 0 {name=l37 lab=avdd}
C {devices/vdd.sym} 1190 50 0 0 {name=l38 lab=avdd}
C {devices/vdd.sym} 1240 50 0 0 {name=l39 lab=avdd}
C {vco_core.sym} 10 290 0 0 {name=x1}
C {voltage_control.sym} 1040 250 0 0 {name=x2}
C {sspd.sym} 1030 130 0 0 {name=x3}
C {slopebuf.sym} 590 180 0 0 {name=x4}
C {f_div.sym} 350 160 0 0 {name=x6}
C {devices/capa.sym} 1570 350 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1570 380 3 0 {name=l1 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 1420 -130 0 0 {name=V6 value=0}
C {devices/vsource.sym} 1470 -130 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 1470 -160 0 0 {name=l5 lab=1b}
C {devices/vdd.sym} 1420 -160 0 0 {name=l9 lab=0b}
C {devices/vdd.sym} 1470 -100 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 1420 -100 2 0 {name=l12 lab=avss}
C {devices/vdd.sym} 730 60 0 0 {name=l15 lab=1b}
C {devices/vdd.sym} 700 60 0 0 {name=l20 lab=1b}
C {devices/vdd.sym} 670 60 0 0 {name=l21 lab=1b}
C {devices/vdd.sym} 200 80 0 0 {name=l22 lab=1b}
C {devices/vdd.sym} 240 80 0 0 {name=l30 lab=1b}
C {devices/vdd.sym} 220 80 0 0 {name=l31 lab=0b}
