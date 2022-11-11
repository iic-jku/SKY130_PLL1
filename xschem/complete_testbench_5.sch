v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1210 270 1310 270 {
lab=v_out}
N 1210 240 1210 270 {
lab=v_out}
N 1310 270 1370 270 {
lab=v_out}
N 1660 240 1670 240 {
lab=avdd}
N 1670 210 1670 240 {
lab=avdd}
N 1660 210 1670 210 {
lab=avdd}
N 1660 330 1670 330 {
lab=avss}
N 1670 300 1670 330 {
lab=avss}
N 1660 300 1670 300 {
lab=avss}
N 1620 240 1620 300 {
lab=v_out}
N 1370 100 1370 270 {
lab=v_out}
N 1050 100 1100 100 {
lab=#net1}
N 1280 100 1370 100 {
lab=v_out}
N 820 110 880 110 {
lab=slope}
N 530 110 600 110 {
lab=f_div}
N 310 250 370 110 {
lab=vco_out}
N 1660 270 1780 270 {
lab=#net2}
N 1560 270 1620 270 {
lab=v_out}
N 1370 270 1400 270 {
lab=v_out}
N 1400 270 1560 270 {
lab=v_out}
C {devices/code_shown.sym} 770 -30 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/vsource.sym} 340 -130 0 0 {name=V1 value=0}
C {devices/vsource.sym} 390 -130 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 530 -130 0 0 {name=V3 value="PULSE 0.0 1.8 50ps 1ps 1ps 20ns 40ns"}
C {devices/vdd.sym} 390 -160 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 340 -160 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 530 -100 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} 390 -100 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 340 -100 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 450 -130 0 0 {name=V5 value=1.3078}
C {devices/vdd.sym} 450 -100 2 0 {name=l25 lab=avss}
C {devices/vdd.sym} 530 -160 0 0 {name=l16 lab=ref_in}
C {devices/code.sym} 750 -180 0 0 {name=s5 only_toplevel=false value="
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
save ref_in vco_out f_div slope v_out @V1[i] @V2[i] @V3[i] @V4[i] @V15[i]
tran 0.01n 10000n 10n
run
plot vco_out
plot f_div
plot ref_in slope
plot v_out
plot @V1[i] @V2[i] @V3[i] @V4[i] @V15[i]
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
C {devices/vdd.sym} 450 -160 0 0 {name=l2 lab=vbias}
C {devices/vdd.sym} 880 90 0 0 {name=l8 lab=ref_in}
C {devices/vsource.sym} 940 -130 0 0 {name=V4 value="PULSE 1.8 0.0 1u 1ps 1ps 10us 12us"}
C {devices/vdd.sym} 940 -100 2 0 {name=l24 lab=avss}
C {devices/vdd.sym} 940 -160 0 0 {name=l26 lab=vtgate}
C {devices/vdd.sym} 990 50 0 0 {name=l23 lab=vbias}
C {devices/lab_pin.sym} 1370 100 0 1 {name=l100 sig_type=std_logic lab=v_out}
C {devices/res.sym} 1210 300 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1210 390 2 0 {name=l106 lab=avss}
C {devices/res.sym} 1310 300 0 0 {name=R2
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1310 330 2 0 {name=l105 lab=avss}
C {devices/lab_pin.sym} 1210 330 0 0 {name=l107 sig_type=std_logic lab=filter}
C {devices/vdd.sym} 640 160 2 0 {name=l17 lab=avss}
C {devices/vdd.sym} 640 60 0 0 {name=l70 lab=avdd}
C {devices/vdd.sym} 730 60 0 0 {name=l97 lab=bit0}
C {devices/vdd.sym} 700 60 0 0 {name=l98 lab=bit1}
C {devices/vdd.sym} 670 60 0 0 {name=l99 lab=bit2}
C {devices/lab_pin.sym} 820 110 3 1 {name=l101 sig_type=std_logic lab=slope}
C {devices/vdd.sym} 760 60 0 0 {name=l109 lab=vbias2}
C {devices/vsource.sym} 1200 -130 0 0 {name=V7 value=0.0}
C {devices/vdd.sym} 1200 -160 0 0 {name=l85 lab=bit0}
C {devices/vdd.sym} 1200 -100 2 0 {name=l92 lab=avss}
C {devices/vsource.sym} 1260 -130 0 0 {name=V8 value=0.0}
C {devices/vdd.sym} 1260 -160 0 0 {name=l93 lab=bit1}
C {devices/vdd.sym} 1260 -100 2 0 {name=l94 lab=avss}
C {devices/vsource.sym} 1320 -130 0 0 {name=V10 value=0.0}
C {devices/vdd.sym} 1320 -160 0 0 {name=l95 lab=bit2}
C {devices/vdd.sym} 1320 -100 2 0 {name=l96 lab=avss}
C {devices/vsource.sym} 1380 -130 0 0 {name=V13 value=0.7}
C {devices/vdd.sym} 1380 -160 0 0 {name=l110 lab=vbias2}
C {devices/vdd.sym} 1380 -100 2 0 {name=l111 lab=avss}
C {devices/vsource.sym} 1440 -130 0 0 {name=V11 value="PULSE 0.0 1.8 0 1ps 1ps 331ps 666ps"}
C {devices/vdd.sym} 1440 -100 2 0 {name=l47 lab=avss}
C {devices/vdd.sym} 1440 -160 0 0 {name=l48 lab=vco_in2}
C {devices/vsource.sym} 220 -130 0 0 {name=V15 value=1.8}
C {devices/vdd.sym} 220 -160 0 0 {name=l112 lab=VPWR}
C {devices/vdd.sym} 220 -100 2 0 {name=l113 lab=avss}
C {devices/vsource.sym} 280 -130 0 0 {name=V16 value=0.0}
C {devices/vdd.sym} 280 -160 0 0 {name=l114 lab=VGND}
C {devices/vdd.sym} 280 -100 2 0 {name=l115 lab=avss}
C {devices/capa.sym} 160 -130 0 0 {name=C16
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 160 -100 2 0 {name=l27 lab=avss}
C {devices/vdd.sym} 160 -160 0 0 {name=l148 lab=avdd}
C {devices/capa.sym} 100 -130 0 0 {name=C17
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 100 -100 2 0 {name=l149 lab=avss}
C {devices/vdd.sym} 100 -160 0 0 {name=l150 lab=avdd}
C {devices/capa.sym} 40 -130 0 0 {name=C18
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 40 -100 2 0 {name=l151 lab=avss}
C {devices/vdd.sym} 40 -160 0 0 {name=l152 lab=avdd}
C {devices/vsource.sym} 1190 -290 0 0 {name=V12 value=1.8}
C {devices/vdd.sym} 1190 -320 0 0 {name=l128 lab=b0_ff}
C {devices/vdd.sym} 1190 -260 2 0 {name=l129 lab=avss}
C {devices/vsource.sym} 1250 -290 0 0 {name=V14 value=0.0}
C {devices/vdd.sym} 1250 -320 0 0 {name=l130 lab=b1_tt}
C {devices/vdd.sym} 1250 -260 2 0 {name=l131 lab=avss}
C {devices/vdd.sym} 1310 -320 0 0 {name=l132 lab=b2_ss}
C {devices/vdd.sym} 1310 -260 2 0 {name=l133 lab=avss}
C {devices/vsource.sym} 1370 -290 0 0 {name=V18 value=0.8}
C {devices/vdd.sym} 1370 -320 0 0 {name=l145 lab=vbias3}
C {devices/vdd.sym} 1370 -260 2 0 {name=l146 lab=avss}
C {devices/capa.sym} 1370 300 0 0 {name=C19
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1370 330 3 0 {name=l42 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 1640 300 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 1640 240 0 0 {name=M5
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
C {devices/lab_pin.sym} 1660 330 3 0 {name=l74 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1660 210 1 0 {name=l137 sig_type=std_logic lab=avdd}
C {devices/vdd.sym} 950 150 2 0 {name=l18 lab=avss}
C {devices/vdd.sym} 950 50 0 0 {name=l19 lab=avdd}
C {devices/vsource.sym} 1210 360 0 0 {name=V19 value=0.4}
C {devices/vdd.sym} 80 80 0 0 {name=l13 lab=avdd}
C {devices/vdd.sym} 80 280 2 0 {name=l14 lab=avss}
C {devices/vdd.sym} 240 80 0 0 {name=l11 lab=b0_ff}
C {devices/vdd.sym} 220 80 0 0 {name=l9 lab=b1_tt}
C {devices/vdd.sym} 200 80 0 0 {name=l5 lab=b2_ss}
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
C {devices/capa.sym} 1780 300 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1780 330 3 0 {name=l1 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 1310 -290 0 0 {name=V6 value=0.8}
