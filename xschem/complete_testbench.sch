v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 770 150 830 150 {
lab=slope}
N 810 250 1010 250 {
lab=v_coarse}
N 1220 140 1270 140 {
lab=v_out}
N 1000 140 1040 140 {
lab=#net1}
N 290 290 350 290 {
lab=vco_out}
N 350 150 350 290 {
lab=vco_out}
N 510 150 550 150 {
lab=f_div}
C {devices/code_shown.sym} 540 -40 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/vsource.sym} 210 -130 0 0 {name=V1 value=0}
C {devices/vsource.sym} 260 -130 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 690 -130 0 0 {name=V3 value="PULSE 0.0 1.8 50ps 1ps 1ps 20ns 40ns"}
C {devices/vdd.sym} 260 -160 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 210 -160 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 690 -100 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} 260 -100 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 210 -100 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 320 -130 0 0 {name=V5 value=1.3078}
C {devices/vdd.sym} 320 -100 2 0 {name=l25 lab=avss}
C {devices/vdd.sym} 690 -160 0 0 {name=l16 lab=ref_in}
C {devices/code.sym} 530 -190 0 0 {name=s5 only_toplevel=false value="
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
*save ref_in vco_out f_div slope v_out @V1[i] @V2[i] @V3[i] @V4[i] @V15[i]
save vco_out f_div ref_in v_out vtgate
tran 0.02n 20000n 0n
stop when time > 15u
snsave sim.snap
*plot vco_out
*plot f_div
*plot ref_in slope
*plot slope
plot v_out
*plot vtgate
*plot @V1[i] @V2[i] @V3[i] @V4[i] @V15[i]
*fft ref_in vco_out f_div
*plot db(mag(ref_in)) db(mag(f_div)) db(mag(vco_out)) xlimit 0.1meg 4g ylimit 5 -60
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
C {devices/vdd.sym} 830 130 0 0 {name=l8 lab=ref_in}
C {devices/vsource.sym} 940 -130 0 0 {name=V4 value="PULSE 0.0 1.8 4u 10ps 10ps 20us 25us"}
C {devices/vdd.sym} 940 -100 2 0 {name=l24 lab=avss}
C {devices/vdd.sym} 940 -160 0 0 {name=l26 lab=vtgate}
C {devices/vdd.sym} 940 90 0 0 {name=l23 lab=vbias}
C {devices/res.sym} 810 280 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 810 370 2 0 {name=l106 lab=avss}
C {devices/res.sym} 910 280 0 0 {name=R2
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 910 310 2 0 {name=l105 lab=avss}
C {devices/lab_pin.sym} 810 310 0 0 {name=l107 sig_type=std_logic lab=filter}
C {devices/vdd.sym} 590 200 2 0 {name=l17 lab=avss}
C {devices/vdd.sym} 590 100 0 0 {name=l70 lab=avdd}
C {devices/lab_pin.sym} 770 150 3 1 {name=l101 sig_type=std_logic lab=slope}
C {devices/vdd.sym} 710 100 0 0 {name=l109 lab=vbias2}
C {devices/vsource.sym} 390 -130 0 0 {name=V13 value=0.7}
C {devices/vdd.sym} 390 -160 0 0 {name=l110 lab=vbias2}
C {devices/vdd.sym} 390 -100 2 0 {name=l111 lab=avss}
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
C {devices/vdd.sym} 900 190 2 0 {name=l18 lab=avss}
C {devices/vdd.sym} 900 90 0 0 {name=l19 lab=avdd}
C {devices/vsource.sym} 810 340 0 0 {name=V19 value="PWL 0 1.08 +50p 1.8 +50p 0.0 +50p 1.8 +50p 0.0 +50p 1.08 +220n 1.08"}
C {devices/vdd.sym} 60 120 0 0 {name=l13 lab=avdd}
C {devices/vdd.sym} 60 320 2 0 {name=l14 lab=avss}
C {devices/vdd.sym} 100 120 0 0 {name=l32 lab=vbias3}
C {devices/lab_pin.sym} 140 120 3 1 {name=l33 sig_type=std_logic lab=v_out}
C {devices/lab_pin.sym} 290 290 1 1 {name=l34 sig_type=std_logic lab=vco_out}
C {devices/vdd.sym} 430 190 2 0 {name=l35 lab=avss}
C {devices/vdd.sym} 430 110 0 0 {name=l36 lab=avdd}
C {devices/lab_pin.sym} 510 150 3 1 {name=l28 sig_type=std_logic lab=f_div}
C {devices/vsource.sym} 1200 -130 0 0 {name=V6 value=0}
C {devices/vsource.sym} 1250 -130 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 1250 -160 0 0 {name=l5 lab=1b}
C {devices/vdd.sym} 1200 -160 0 0 {name=l9 lab=0b}
C {devices/vdd.sym} 1250 -100 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 1200 -100 2 0 {name=l12 lab=avss}
C {devices/vdd.sym} 680 100 0 0 {name=l15 lab=1b}
C {devices/vdd.sym} 650 100 0 0 {name=l20 lab=1b}
C {devices/vdd.sym} 620 100 0 0 {name=l21 lab=1b}
C {devices/vdd.sym} 180 120 0 0 {name=l22 lab=1b}
C {devices/vdd.sym} 220 120 0 0 {name=l30 lab=1b}
C {devices/vdd.sym} 200 120 0 0 {name=l31 lab=0b}
C {devices/capa.sym} 960 280 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} 960 310 2 0 {name=l39 lab=avss}
C {ma2022/vco_core.sym} -10 330 0 0 {name=x1}
C {ma2022/f_div.sym} 330 200 0 0 {name=x4}
C {slopebuf2.sym} 540 220 0 0 {name=x3}
C {sspd2.sym} 980 170 0 0 {name=x2}
C {devices/lab_pin.sym} 1270 140 0 1 {name=l100 sig_type=std_logic lab=v_out}
C {ma2022/voltage_control2.sym} 980 290 0 0 {name=x5}
C {devices/vdd.sym} 1130 190 2 0 {name=l1 lab=avss}
C {devices/vdd.sym} 1130 90 0 0 {name=l29 lab=avdd}
C {devices/vdd.sym} 1180 90 0 0 {name=l37 lab=vtgate}
C {devices/lab_pin.sym} 1010 250 0 1 {name=l38 sig_type=std_logic lab=v_coarse}
C {devices/lab_pin.sym} 1080 90 3 1 {name=l40 sig_type=std_logic lab=v_coarse}
