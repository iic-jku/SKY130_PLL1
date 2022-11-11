v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1720 280 1820 280 {
lab=v_out}
N 1720 250 1720 280 {
lab=v_out}
N 600 120 640 120 {
lab=fout2}
N 1500 -790 1520 -790 {
lab=#net1}
N 50 -790 50 -740 {
lab=#net1}
N 50 -890 50 -830 {
lab=#net2}
N 1500 -830 1540 -830 {
lab=#net2}
N 530 -790 530 -770 {
lab=b}
N 530 -770 530 -760 {
lab=b}
N 50 -900 50 -890 {
lab=#net2}
N 530 -860 530 -830 {
lab=a}
N 710 -830 710 -700 {
lab=#net3}
N 1120 -830 1120 -700 {
lab=#net4}
N 1140 -790 1140 -700 {
lab=#net5}
N 1570 -830 1570 -700 {
lab=#net2}
N 1540 -830 1570 -830 {
lab=#net2}
N 1520 -790 1590 -790 {
lab=#net1}
N 1590 -790 1590 -700 {
lab=#net1}
N 310 -790 310 -700 {
lab=b}
N 290 -830 290 -700 {
lab=a}
N 290 -700 290 -600 {
lab=a}
N 310 -700 310 -600 {
lab=b}
N 710 -700 710 -600 {
lab=#net3}
N 730 -700 730 -600 {
lab=#net6}
N 1120 -700 1120 -600 {
lab=#net4}
N 1140 -700 1140 -600 {
lab=#net5}
N 1570 -700 1570 -600 {
lab=#net2}
N 1590 -700 1590 -600 {
lab=#net1}
N 730 -790 730 -700 {
lab=#net6}
N 290 -600 290 -470 {
lab=a}
N 310 -600 310 -470 {
lab=b}
N 710 -600 710 -470 {
lab=#net3}
N 730 -600 730 -470 {
lab=#net6}
N 1120 -600 1120 -470 {
lab=#net4}
N 1140 -600 1140 -470 {
lab=#net5}
N 1570 -600 1570 -470 {
lab=#net2}
N 1590 -600 1590 -470 {
lab=#net1}
N 1400 -760 1400 -640 {
lab=#net7}
N 680 -830 950 -830 {
lab=#net3}
N 680 -790 950 -790 {
lab=#net6}
N 1090 -830 1360 -830 {
lab=#net4}
N 1090 -790 1360 -790 {
lab=#net5}
N 50 -900 1520 -900 {
lab=#net2}
N 990 -760 990 -640 {
lab=#net8}
N 580 -760 580 -640 {
lab=#net9}
N 160 -760 160 -640 {
lab=#net10}
N 260 -790 540 -790 {
lab=b}
N 260 -830 540 -830 {
lab=a}
N 1520 -900 1520 -830 {
lab=#net2}
N 1520 -790 1520 -740 {
lab=#net1}
N 50 -740 1520 -740 {
lab=#net1}
N 50 -790 120 -830 {
lab=#net1}
N 50 -830 120 -790 {
lab=#net2}
N 290 -290 290 -240 {
lab=c}
N 310 -290 310 -240 {
lab=d}
N 710 -290 710 -240 {
lab=e}
N 730 -290 730 -240 {
lab=f}
N 1120 -290 1120 -240 {
lab=g}
N 1140 -290 1140 -240 {
lab=h}
N 1570 -290 1570 -240 {
lab=j}
N 1590 -290 1590 -240 {
lab=k}
N 1820 280 1880 280 {
lab=v_out}
N 2170 250 2180 250 {
lab=avdd}
N 2180 220 2180 250 {
lab=avdd}
N 2170 220 2180 220 {
lab=avdd}
N 2170 340 2180 340 {
lab=avss}
N 2180 310 2180 340 {
lab=avss}
N 2170 310 2180 310 {
lab=avss}
N 2130 250 2130 310 {
lab=#net11}
N 1040 120 1140 120 {
lab=slope}
N 1670 110 1820 110 {
lab=v_out}
N 1450 110 1610 110 {
lab=#net12}
N 2070 280 2130 280 {
lab=#net11}
N 1880 280 1910 280 {
lab=v_out}
N 1880 110 1880 280 {
lab=v_out}
N 1820 110 1880 110 {
lab=v_out}
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
.include /foss/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
*save c ref_in vtgate fin fout2 v_buf slope clk nclk filter v_out @V1[i] @V2[i] @V3[i] @V4[i] @V15[i] s1 s2
save fout2 v_out
tran 0.01n 10000n 10n
run
*plot c
*plot fin
plot fout2
*plot v_buf
*plot slope ref_in
*plot filter
plot v_out
*plot @V1[i] @V2[i] @V3[i] @V4[i] @V15[i]
*fft c fout2 ref_in
*plot db(mag(c)) db(mag(fout2)) db(mag(ref_in)) xlimit 0.1meg 4g ylimit 5 -60
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
C {devices/vdd.sym} 140 -160 0 0 {name=l2 lab=vbias}
C {devices/vdd.sym} 1280 100 0 0 {name=l8 lab=ref_in}
C {devices/vsource.sym} 630 -130 0 0 {name=V4 value="PULSE 1.8 0.0 1u 1ps 1ps 10us 12us"}
C {devices/vdd.sym} 630 -100 2 0 {name=l24 lab=avss}
C {devices/vdd.sym} 630 -160 0 0 {name=l26 lab=vtgate}
C {devices/vdd.sym} 1390 60 0 0 {name=l23 lab=vbias}
C {devices/capa.sym} 1090 150 0 1 {name=C7
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1090 180 1 1 {name=l37 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1880 110 0 1 {name=l100 sig_type=std_logic lab=v_out}
C {devices/res.sym} 1720 310 0 0 {name=R1
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1720 400 2 0 {name=l106 lab=avss}
C {devices/res.sym} 1820 310 0 0 {name=R2
value=4k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1820 340 2 0 {name=l105 lab=avss}
C {devices/lab_pin.sym} 1720 340 0 0 {name=l107 sig_type=std_logic lab=filter}
C {devices/capa.sym} 1710 140 0 0 {name=C10
m=1
value=200p
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 1640 110 3 0 {name=R3
value=8k
footprint=1206
device=resistor
m=1}
C {devices/vdd.sym} 1710 170 2 0 {name=l108 lab=avss}
C {ma2022/slopebuf.sym} 810 190 0 0 {name=x17}
C {devices/vdd.sym} 860 170 2 0 {name=l17 lab=avss}
C {devices/vdd.sym} 860 70 0 0 {name=l70 lab=avdd}
C {devices/vdd.sym} 950 70 0 0 {name=l97 lab=bit0}
C {devices/vdd.sym} 920 70 0 0 {name=l98 lab=bit1}
C {devices/vdd.sym} 890 70 0 0 {name=l99 lab=bit2}
C {devices/lab_pin.sym} 1040 120 3 1 {name=l101 sig_type=std_logic lab=slope}
C {devices/vdd.sym} 980 70 0 0 {name=l109 lab=vbias2}
C {devices/vsource.sym} 1050 -130 0 0 {name=V7 value=0.0}
C {devices/vdd.sym} 1050 -160 0 0 {name=l85 lab=bit0}
C {devices/vdd.sym} 1050 -100 2 0 {name=l92 lab=avss}
C {devices/vsource.sym} 1110 -130 0 0 {name=V8 value=0.0}
C {devices/vdd.sym} 1110 -160 0 0 {name=l93 lab=bit1}
C {devices/vdd.sym} 1110 -100 2 0 {name=l94 lab=avss}
C {devices/vsource.sym} 1170 -130 0 0 {name=V10 value=0.0}
C {devices/vdd.sym} 1170 -160 0 0 {name=l95 lab=bit2}
C {devices/vdd.sym} 1170 -100 2 0 {name=l96 lab=avss}
C {devices/vsource.sym} 1230 -130 0 0 {name=V13 value=0.7}
C {devices/vdd.sym} 1230 -160 0 0 {name=l110 lab=vbias2}
C {devices/vdd.sym} 1230 -100 2 0 {name=l111 lab=avss}
C {devices/vdd.sym} 280 150 2 0 {name=l116 lab=avss}
C {devices/vdd.sym} 280 70 0 0 {name=l118 lab=avdd}
C {ma2022/inv_buffer2.sym} 380 150 0 0 {name=x16}
C {ma2022/d_ff_15.sym} 560 140 0 0 {name=x15}
C {devices/vdd.sym} 500 150 2 0 {name=l28 lab=avss}
C {devices/vdd.sym} 500 70 0 0 {name=l43 lab=avdd}
C {devices/lab_pin.sym} 600 100 3 1 {name=l45 sig_type=std_logic lab=fout1}
C {devices/vdd.sym} 690 160 2 0 {name=l103 lab=avss}
C {devices/vdd.sym} 690 80 0 0 {name=l104 lab=avdd}
C {ma2022/inv_buffer2.sym} 790 160 0 0 {name=x19}
C {devices/lab_pin.sym} 600 120 1 1 {name=l46 sig_type=std_logic lab=fout2}
C {devices/lab_pin.sym} 820 120 3 1 {name=l102 sig_type=std_logic lab=v_buf}
C {devices/vsource.sym} 1290 -130 0 0 {name=V11 value="PULSE 0.0 1.8 0 1ps 1ps 331ps 666ps"}
C {devices/vdd.sym} 1290 -100 2 0 {name=l47 lab=avss}
C {devices/vdd.sym} 1290 -160 0 0 {name=l48 lab=vco_in2}
C {devices/vdd.sym} 100 150 2 0 {name=l13 lab=avss}
C {devices/vdd.sym} 100 70 0 0 {name=l14 lab=avdd}
C {ma2022/inv_buffer2.sym} 200 150 0 0 {name=x8}
C {devices/vsource.sym} -90 -130 0 0 {name=V15 value=1.8}
C {devices/vdd.sym} -90 -160 0 0 {name=l112 lab=VPWR}
C {devices/vdd.sym} -90 -100 2 0 {name=l113 lab=avss}
C {devices/vsource.sym} -30 -130 0 0 {name=V16 value=0.0}
C {devices/vdd.sym} -30 -160 0 0 {name=l114 lab=VGND}
C {devices/vdd.sym} -30 -100 2 0 {name=l115 lab=avss}
C {devices/capa.sym} -150 -130 0 0 {name=C16
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} -150 -100 2 0 {name=l27 lab=avss}
C {devices/vdd.sym} -150 -160 0 0 {name=l148 lab=avdd}
C {devices/capa.sym} -210 -130 0 0 {name=C17
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} -210 -100 2 0 {name=l149 lab=avss}
C {devices/vdd.sym} -210 -160 0 0 {name=l150 lab=avdd}
C {devices/capa.sym} -270 -130 0 0 {name=C18
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/vdd.sym} -270 -100 2 0 {name=l151 lab=avss}
C {devices/vdd.sym} -270 -160 0 0 {name=l152 lab=avdd}
C {devices/lab_pin.sym} 50 110 0 0 {name=l58 sig_type=std_logic lab=c}
C {delay_cell_4.sym} 100 -740 0 0 {name=x4}
C {delay_cell_4.sym} 520 -740 0 0 {name=x5}
C {delay_cell_4.sym} 930 -740 0 0 {name=x6}
C {delay_cell_4.sym} 1340 -740 0 0 {name=x7}
C {devices/lab_pin.sym} 530 -860 0 0 {name=l49 sig_type=std_logic lab=a}
C {devices/lab_pin.sym} 530 -760 0 0 {name=l50 sig_type=std_logic lab=b}
C {devices/vdd.sym} 160 -860 0 0 {name=l51 lab=avdd}
C {devices/vdd.sym} 580 -860 0 0 {name=l52 lab=avdd}
C {devices/vdd.sym} 990 -860 0 0 {name=l53 lab=avdd}
C {devices/vdd.sym} 1400 -860 0 0 {name=l54 lab=avdd}
C {devices/vdd.sym} 200 -860 0 0 {name=l55 lab=v_out}
C {devices/vdd.sym} 620 -860 0 0 {name=l56 lab=v_out}
C {devices/vdd.sym} 1030 -860 0 0 {name=l57 lab=v_out}
C {devices/vdd.sym} 1440 -860 0 0 {name=l59 lab=v_out}
C {devices/vdd.sym} 260 -420 3 0 {name=l60 lab=avdd}
C {devices/vdd.sym} 340 -420 1 0 {name=l61 lab=avss}
C {devices/lab_pin.sym} 290 -270 0 0 {name=l62 sig_type=std_logic lab=c}
C {devices/lab_pin.sym} 310 -270 0 1 {name=l63 sig_type=std_logic lab=d}
C {ma2022/inv_buffer.sym} 340 -320 3 1 {name=x9}
C {devices/vdd.sym} 680 -420 3 0 {name=l64 lab=avdd}
C {devices/vdd.sym} 760 -420 1 0 {name=l65 lab=avss}
C {ma2022/inv_buffer.sym} 760 -320 3 1 {name=x10}
C {devices/vdd.sym} 1090 -420 3 0 {name=l66 lab=avdd}
C {devices/vdd.sym} 1170 -420 1 0 {name=l67 lab=avss}
C {ma2022/inv_buffer.sym} 1170 -320 3 1 {name=x11}
C {devices/vdd.sym} 1540 -420 3 0 {name=l68 lab=avdd}
C {devices/vdd.sym} 1620 -420 1 0 {name=l69 lab=avss}
C {ma2022/inv_buffer.sym} 1620 -320 3 1 {name=x12}
C {devices/capa.sym} 260 -710 1 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 230 -710 0 0 {name=l71 sig_type=std_logic lab=avss}
C {devices/capa.sym} 680 -710 1 0 {name=C8
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 650 -710 0 0 {name=l72 sig_type=std_logic lab=avss}
C {devices/capa.sym} 1090 -710 1 0 {name=C9
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1060 -710 0 0 {name=l73 sig_type=std_logic lab=avss}
C {devices/capa.sym} 1540 -710 1 0 {name=C11
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 1620 -710 3 1 {name=C12
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1650 -710 0 1 {name=l75 sig_type=std_logic lab=avss}
C {devices/capa.sym} 1170 -710 3 1 {name=C13
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1200 -710 0 1 {name=l76 sig_type=std_logic lab=avss}
C {devices/capa.sym} 760 -710 3 1 {name=C14
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 790 -710 0 1 {name=l77 sig_type=std_logic lab=avss}
C {devices/capa.sym} 340 -710 3 1 {name=C15
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 370 -710 0 1 {name=l78 sig_type=std_logic lab=avss}
C {ma2022/current_tails_1.sym} 250 -590 0 0 {name=x13}
C {devices/vdd.sym} 160 -540 2 0 {name=l79 lab=avss}
C {devices/vdd.sym} 100 -610 3 0 {name=l80 lab=ss}
C {devices/vdd.sym} 100 -590 3 0 {name=l81 lab=tt}
C {devices/vdd.sym} 100 -570 3 0 {name=l82 lab=ff}
C {ma2022/current_tails_1.sym} 670 -590 0 0 {name=x14}
C {devices/vdd.sym} 580 -540 2 0 {name=l83 lab=avss}
C {devices/vdd.sym} 520 -610 3 0 {name=l84 lab=ss}
C {devices/vdd.sym} 520 -590 3 0 {name=l86 lab=tt}
C {devices/vdd.sym} 520 -570 3 0 {name=l87 lab=ff}
C {ma2022/current_tails_1.sym} 1080 -590 0 0 {name=x18}
C {devices/vdd.sym} 990 -540 2 0 {name=l88 lab=avss}
C {devices/vdd.sym} 930 -610 3 0 {name=l89 lab=ss}
C {devices/vdd.sym} 930 -590 3 0 {name=l90 lab=tt}
C {devices/vdd.sym} 930 -570 3 0 {name=l91 lab=ff}
C {ma2022/current_tails_1.sym} 1490 -590 0 0 {name=x20}
C {devices/vdd.sym} 1400 -540 2 0 {name=l117 lab=avss}
C {devices/vdd.sym} 1340 -610 3 0 {name=l119 lab=ss}
C {devices/vdd.sym} 1340 -590 3 0 {name=l120 lab=tt}
C {devices/vdd.sym} 1340 -570 3 0 {name=l121 lab=ff}
C {devices/lab_pin.sym} 710 -270 0 0 {name=l122 sig_type=std_logic lab=e}
C {devices/lab_pin.sym} 730 -270 0 1 {name=l123 sig_type=std_logic lab=f}
C {devices/lab_pin.sym} 1120 -270 0 0 {name=l124 sig_type=std_logic lab=g}
C {devices/lab_pin.sym} 1140 -270 0 1 {name=l125 sig_type=std_logic lab=h}
C {devices/lab_pin.sym} 1570 -270 0 0 {name=l126 sig_type=std_logic lab=j}
C {devices/lab_pin.sym} 1590 -270 0 1 {name=l127 sig_type=std_logic lab=k}
C {devices/vsource.sym} 1730 -800 0 0 {name=V12 value=1.8}
C {devices/vdd.sym} 1730 -830 0 0 {name=l128 lab=b0}
C {devices/vdd.sym} 1730 -770 2 0 {name=l129 lab=avss}
C {devices/vsource.sym} 1790 -800 0 0 {name=V14 value=1.8}
C {devices/vdd.sym} 1790 -830 0 0 {name=l130 lab=b1}
C {devices/vdd.sym} 1790 -770 2 0 {name=l131 lab=avss}
C {devices/vsource.sym} 1850 -800 0 0 {name=V17 value=1.8}
C {devices/vdd.sym} 1850 -830 0 0 {name=l132 lab=b2}
C {devices/vdd.sym} 1850 -770 2 0 {name=l133 lab=avss}
C {devices/vdd.sym} 1960 -750 3 0 {name=l134 lab=b0}
C {devices/vdd.sym} 1960 -770 3 0 {name=l135 lab=b1}
C {devices/vdd.sym} 1960 -790 3 0 {name=l136 lab=b2}
C {ma2022/stf_ctrl.sym} 2110 -710 0 0 {name=x22}
C {devices/vdd.sym} 2040 -820 0 0 {name=l139 lab=vctrl}
C {devices/vdd.sym} 2090 -720 2 0 {name=l140 lab=avss}
C {devices/vdd.sym} 2180 -790 1 1 {name=l141 lab=ss}
C {devices/vdd.sym} 2180 -770 1 1 {name=l142 lab=tt}
C {devices/vdd.sym} 2180 -750 1 1 {name=l143 lab=ff}
C {devices/vdd.sym} 2090 -820 0 0 {name=l144 lab=avdd}
C {devices/vsource.sym} 2240 -770 0 0 {name=V18 value=0.8}
C {devices/vdd.sym} 2240 -800 0 0 {name=l145 lab=vctrl}
C {devices/vdd.sym} 2240 -740 2 0 {name=l146 lab=avss}
C {devices/lab_pin.sym} 1510 -710 0 0 {name=l41 sig_type=std_logic lab=avss}
C {devices/capa.sym} 1880 310 0 0 {name=C19
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1880 340 3 0 {name=l42 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 2150 310 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 2150 250 0 0 {name=M5
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
C {devices/lab_pin.sym} 2170 340 3 0 {name=l74 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 2170 220 1 0 {name=l137 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 410 110 3 1 {name=l29 sig_type=std_logic lab=fin}
C {ma2022/sspd.sym} 1430 140 0 0 {name=x3}
C {devices/vdd.sym} 1350 160 2 0 {name=l18 lab=avss}
C {devices/vdd.sym} 1350 60 0 0 {name=l19 lab=avdd}
C {ma2022/tgate_1.sym} 2060 320 0 0 {name=x2}
C {devices/vdd.sym} 2000 340 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 2000 250 0 0 {name=l12 lab=avdd}
C {devices/vdd.sym} 1960 250 0 0 {name=l15 lab=vstart}
C {devices/vsource.sym} 2020 80 0 0 {name=V6 value="PULSE 0.0 1.8 20n 1ps 1ps 12us 12us"}
C {devices/vdd.sym} 2020 110 2 0 {name=l20 lab=avss}
C {devices/vdd.sym} 2020 50 0 0 {name=l21 lab=vstart}
C {devices/vsource.sym} 1720 370 0 0 {name=V19 value=1.08}
C {ma2022/tgate_1.sym} 1270 160 0 0 {name=x1}
C {devices/vdd.sym} 1210 180 2 0 {name=l1 lab=avss}
C {devices/vdd.sym} 1210 90 0 0 {name=l5 lab=avdd}
C {devices/vdd.sym} 1170 90 0 0 {name=l9 lab=vtgate}
