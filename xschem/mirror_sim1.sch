v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -270 380 -270 470 {
lab=swi}
N -270 230 -270 320 {
lab=swi}
N -280 200 -270 200 {
lab=avdd}
N -280 170 -280 200 {
lab=avdd}
N -280 170 -270 170 {
lab=avdd}
N -280 530 -270 530 {
lab=avss}
N -280 500 -280 530 {
lab=avss}
N -280 500 -270 500 {
lab=avss}
N -270 320 -270 380 {
lab=swi}
N -230 200 -190 200 {
lab=swi}
N -230 500 -200 500 {
lab=avdd}
N -230 200 -230 230 {
lab=swi}
N -270 230 -230 230 {
lab=swi}
N 390 260 400 260 {
lab=avdd}
N 400 230 400 260 {
lab=avdd}
N 390 230 400 230 {
lab=avdd}
N 530 260 540 260 {
lab=avdd}
N 540 230 540 260 {
lab=avdd}
N 530 230 540 230 {
lab=avdd}
N 670 260 680 260 {
lab=avdd}
N 680 230 680 260 {
lab=avdd}
N 670 230 680 230 {
lab=avdd}
N 270 420 270 580 {
lab=swo1}
N 210 420 210 580 {
lab=swi}
N 230 710 250 710 {
lab=#net1}
N 200 750 280 750 {
lab=bit0}
N 240 620 240 710 {
lab=#net1}
N 240 750 240 770 {
lab=bit0}
N 520 420 520 580 {
lab=swo2}
N 460 420 460 580 {
lab=swi}
N 480 710 500 710 {
lab=#net2}
N 450 750 530 750 {
lab=bit1}
N 490 620 490 710 {
lab=#net2}
N 490 750 490 770 {
lab=bit1}
N 770 420 770 580 {
lab=swo3}
N 710 420 710 580 {
lab=swi}
N 730 710 750 710 {
lab=#net3}
N 700 750 780 750 {
lab=bit2}
N 740 620 740 710 {
lab=#net3}
N 740 750 740 770 {
lab=bit2}
N -70 460 -70 480 {
lab=pos1}
N 1020 420 1020 580 {
lab=swo4}
N 960 420 960 580 {
lab=swi}
N 980 710 1000 710 {
lab=#net4}
N 950 750 1030 750 {
lab=bit3}
N 990 620 990 710 {
lab=#net4}
N 990 750 990 770 {
lab=bit3}
N 250 260 260 260 {
lab=avdd}
N 260 230 260 260 {
lab=avdd}
N 250 230 260 230 {
lab=avdd}
C {devices/code_shown.sym} 80 100 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {devices/vsource.sym} -310 0 0 0 {name=V1 value=0}
C {devices/vsource.sym} -260 0 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} -140 0 0 0 {name=V3 value="PULSE(1.8 0.0 0 5ps 5ps 150ps 320ps)"}
C {devices/vdd.sym} -260 -30 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} -310 -30 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} -140 30 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} -260 30 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} -310 30 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -200 0 0 0 {name=V5 value=1.8}
C {devices/vdd.sym} -200 30 2 0 {name=l25 lab=avss}
C {devices/vdd.sym} -200 -30 0 0 {name=l2 lab=vc}
C {sky130_fd_pr/pfet_01v8.sym} -250 200 0 1 {name=M7
L=0.15
W=5.6
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
C {devices/lab_pin.sym} -270 170 1 0 {name=l8 sig_type=std_logic lab=avdd}
C {devices/vdd.sym} -140 -30 0 0 {name=l16 lab=clk_in}
C {sky130_fd_pr/nfet_01v8.sym} -250 500 0 1 {name=M2
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
C {devices/lab_pin.sym} -270 530 3 0 {name=l13 sig_type=std_logic lab=avss}
C {devices/capa.sym} -190 230 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -190 260 3 0 {name=l26 sig_type=std_logic lab=avss}
C {devices/code.sym} 190 -50 0 0 {name=s3 only_toplevel=false value=""
.control
alter v4=1.8
alter v6=1.8
alter v7=1.8
save clk_in clk_out inv_out @V1[i] buf_out
tran 0.01n 50n 20n
plot clk_in clk_out
*plot @V1[i]
*plot clk_out inv_out buf_out xlimit 49ns 50ns
*fft clk_in clk_out inv_out buf_out
*plot db(mag(clk_in)) db(mag(clk_out)) xlimit 0.1g 15g ylimit 0.0 -200
*plot db(mag(inv_out)) db(mag(buf_out)) xlimit 0.1g 15g ylimit 0.0 -200
.endc
.end
"}
C {devices/code.sym} 310 -50 0 0 {name=s4 only_toplevel=false value=""
.control
compose values start=0.0 stop=1.8 step=0.2
foreach val $&values
	alter v5 $val
	save buf_out vc inv_out clk_out s1 @V1[i]
	tran 0.01n 50n 20n
	run
end
plot tran1.buf_out tran2.buf_out tran3.buf_out tran4.buf_out tran5.buf_out tran6.buf_out tran7.buf_out tran8.buf_out tran9.buf_out tran10.buf_out xlimit 49ns 50ns
plot tran1.inv_out tran2.inv_out tran3.inv_out tran4.inv_out tran5.inv_out tran6.inv_out tran7.inv_out tran8.inv_out tran9.inv_out tran10.inv_out xlimit 49ns 50ns
plot tran1.clk_out tran2.clk_out tran3.clk_out tran4.clk_out tran5.clk_out tran6.clk_out tran7.clk_out tran8.clk_out tran9.clk_out tran10.clk_out xlimit 49ns 50ns
plot tran1.s1 tran2.s1 tran3.s1 tran4.s1 tran5.s1 tran6.s1 tran7.s1 tran8.s1 tran9.s1 tran10.s1 xlimit 49ns 50ns
plot tran1.@V1[i] tran5.@V1[i] tran10.@V1[i]
.endc
.end
"}
C {devices/capa.sym} -200 530 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -200 560 3 0 {name=l43 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 390 230 1 0 {name=l22 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 370 260 0 0 {name=M1
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
C {devices/lab_pin.sym} 530 230 1 0 {name=l24 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 510 260 0 0 {name=M15
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
C {devices/lab_pin.sym} 670 230 1 0 {name=l40 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 650 260 0 0 {name=M16
L=0.15
W=0.7
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
C {devices/lab_pin.sym} -70 460 2 0 {name=l41 sig_type=std_logic lab=pos1}
C {devices/lab_pin.sym} 390 290 3 0 {name=l42 sig_type=std_logic lab=pos1}
C {devices/lab_pin.sym} 530 290 3 0 {name=l47 sig_type=std_logic lab=pos1}
C {devices/lab_pin.sym} 670 290 3 0 {name=l51 sig_type=std_logic lab=pos1}
C {sky130_fd_pr/pfet_01v8.sym} 240 400 1 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 240 600 3 0 {name=M18
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
C {devices/lab_pin.sym} 240 420 3 0 {name=l52 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 240 580 1 0 {name=l53 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 210 500 0 0 {name=l54 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 270 500 2 0 {name=l55 sig_type=std_logic lab=swo1}
C {sky130_fd_pr/nfet_01v8.sym} 280 730 3 0 {name=M19
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
C {sky130_fd_pr/pfet_01v8.sym} 200 730 3 0 {name=M20
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
C {devices/lab_pin.sym} 280 710 1 0 {name=l56 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 200 710 1 0 {name=l57 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 170 710 0 0 {name=l60 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 310 710 2 0 {name=l58 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 490 400 1 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 490 600 3 0 {name=M22
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
C {devices/lab_pin.sym} 490 420 3 0 {name=l59 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 490 580 1 0 {name=l61 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 460 500 0 0 {name=l62 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 520 500 2 0 {name=l63 sig_type=std_logic lab=swo2}
C {sky130_fd_pr/nfet_01v8.sym} 530 730 3 0 {name=M23
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
C {sky130_fd_pr/pfet_01v8.sym} 450 730 3 0 {name=M24
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
C {devices/lab_pin.sym} 530 710 1 0 {name=l64 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 450 710 1 0 {name=l65 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 420 710 0 0 {name=l66 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 560 710 2 0 {name=l67 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 740 400 1 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 740 600 3 0 {name=M26
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
C {devices/lab_pin.sym} 740 420 3 0 {name=l68 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 740 580 1 0 {name=l69 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 710 500 0 0 {name=l70 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 770 500 2 0 {name=l71 sig_type=std_logic lab=swo3}
C {sky130_fd_pr/nfet_01v8.sym} 780 730 3 0 {name=M27
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
C {sky130_fd_pr/pfet_01v8.sym} 700 730 3 0 {name=M28
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
C {devices/lab_pin.sym} 780 710 1 0 {name=l72 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 700 710 1 0 {name=l73 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 670 710 0 0 {name=l74 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 810 710 2 0 {name=l75 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 630 260 2 1 {name=l76 sig_type=std_logic lab=swo1}
C {devices/lab_pin.sym} 490 260 2 1 {name=l77 sig_type=std_logic lab=swo2}
C {devices/lab_pin.sym} 350 260 2 1 {name=l78 sig_type=std_logic lab=swo3}
C {devices/lab_pin.sym} 240 380 2 0 {name=l80 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 240 770 2 0 {name=l81 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 490 380 2 0 {name=l82 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 490 770 2 0 {name=l83 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 740 770 2 0 {name=l84 sig_type=std_logic lab=bit2}
C {devices/lab_pin.sym} 740 380 2 0 {name=l85 sig_type=std_logic lab=bit2}
C {devices/vsource.sym} 240 860 0 0 {name=V4 value=1.8}
C {devices/vdd.sym} 240 830 0 0 {name=l86 lab=bit0}
C {devices/vdd.sym} 240 890 2 0 {name=l87 lab=avss}
C {devices/vsource.sym} 490 860 0 0 {name=V6 value=1.8}
C {devices/vdd.sym} 490 830 0 0 {name=l88 lab=bit1}
C {devices/vdd.sym} 490 890 2 0 {name=l89 lab=avss}
C {devices/vsource.sym} 740 860 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 740 830 0 0 {name=l90 lab=bit2}
C {devices/vdd.sym} 740 890 2 0 {name=l91 lab=avss}
C {devices/code.sym} 70 -50 0 0 {name=s2 only_toplevel=false value=""
.control
compose bits values 000 001 
foreach val $&bits
	alter v4 $val
	alter v6 $val
	alter v7 $val
	save clk_out @V1[i]
	tran 0.01n 50n 20n
	run
end
plot tran1.clk_out tran2.clk_out
*plot tran1.clk_out tran2.clk_out tran3.clk_out tran4.clk_out tran5.clk_out tran6.clk_out tran7.clk_out tran8.clk_out xlimit 49ns 50ns
*plot tran1.s1 tran2.s1 tran3.s1 tran4.s1 tran5.s1 tran6.s1 tran7.s1 tran8.s1 tran9.s1 tran10.s1 xlimit 49ns 50ns
*plot tran1.@V1[i] tran5.@V1[i] tran10.@V1[i]
.endc
.end
"}
C {devices/code.sym} 420 -50 0 0 {name=s5 only_toplevel=false value="
.control
set temp=25
alter v4 0
alter v6 0
alter v7 0
alter v9 0
save clk_in vc @V1[i] @V8[i]
tran 0.01n 50n 20n
run
*plot clk_out clk_in
plot @V8[i]
*plot tran1.clk_out tran2.clk_out tran3.clk_out tran4.clk_out tran5.clk_out tran6.clk_out tran7.clk_out tran8.clk_out xlimit 49ns 50ns
*plot tran1.s1 tran2.s1 tran3.s1 tran4.s1 tran5.s1 tran6.s1 tran7.s1 tran8.s1 tran9.s1 tran10.s1 xlimit 49ns 50ns
*plot tran1.@V1[i] tran5.@V1[i] tran10.@V1[i]
.endc
.end
"}
C {devices/lab_pin.sym} -190 200 1 0 {name=l79 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} -200 500 1 0 {name=l15 sig_type=std_logic lab=avdd}
C {devices/vsource.sym} -70 510 0 0 {name=V8 value=0}
C {devices/lab_pin.sym} -70 540 3 0 {name=l1 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 990 400 1 0 {name=M3
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
C {sky130_fd_pr/nfet_01v8.sym} 990 600 3 0 {name=M5
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
C {devices/lab_pin.sym} 990 420 3 0 {name=l5 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 990 580 1 0 {name=l9 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 960 500 0 0 {name=l12 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 1020 500 2 0 {name=l14 sig_type=std_logic lab=swo4}
C {sky130_fd_pr/nfet_01v8.sym} 1030 730 3 0 {name=M6
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
C {sky130_fd_pr/pfet_01v8.sym} 950 730 3 0 {name=M8
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
C {devices/lab_pin.sym} 1030 710 1 0 {name=l17 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 950 710 1 0 {name=l18 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 920 710 0 0 {name=l19 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1060 710 2 0 {name=l20 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 990 770 2 0 {name=l21 sig_type=std_logic lab=bit3}
C {devices/lab_pin.sym} 990 380 2 0 {name=l23 sig_type=std_logic lab=bit3}
C {devices/vsource.sym} 990 860 0 0 {name=V9 value=1.8}
C {devices/vdd.sym} 990 830 0 0 {name=l27 lab=bit3}
C {devices/vdd.sym} 990 890 2 0 {name=l28 lab=avss}
C {devices/lab_pin.sym} 250 230 1 0 {name=l29 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 230 260 0 0 {name=M9
L=0.15
W=5.6
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
C {devices/lab_pin.sym} 250 290 3 0 {name=l30 sig_type=std_logic lab=pos1}
C {devices/lab_pin.sym} 210 260 2 1 {name=l31 sig_type=std_logic lab=swo4}
