v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -70 330 -70 370 {
lab=clk_out}
N -110 300 -110 400 {
lab=clk_in}
N -70 400 -60 400 {
lab=avss}
N -270 380 -270 470 {
lab=swi}
N -70 200 -60 200 {
lab=avdd}
N -60 170 -60 200 {
lab=avdd}
N -70 170 -60 170 {
lab=avdd}
N -270 230 -270 320 {
lab=swi}
N -280 200 -270 200 {
lab=avdd}
N -280 170 -280 200 {
lab=avdd}
N -280 170 -270 170 {
lab=avdd}
N -150 350 -110 350 {
lab=clk_in}
N -70 350 220 350 {
lab=clk_out}
N -280 530 -270 530 {
lab=avss}
N -280 500 -280 530 {
lab=avss}
N -280 500 -270 500 {
lab=avss}
N -270 320 -270 380 {
lab=swi}
N 650 330 650 370 {
lab=inv_out}
N 610 300 610 400 {
lab=clk_out}
N 650 400 660 400 {
lab=avss}
N 650 300 660 300 {
lab=avdd}
N 1100 230 1100 270 {
lab=buf_out}
N 1060 200 1060 300 {
lab=s1}
N 1100 300 1110 300 {
lab=avss}
N 1100 200 1110 200 {
lab=avdd}
N 1100 500 1100 540 {
lab=s1}
N 1060 470 1060 570 {
lab=buf_out}
N 1100 570 1110 570 {
lab=avss}
N 1100 470 1110 470 {
lab=avdd}
N -230 200 -190 200 {
lab=swi}
N -230 500 -200 500 {
lab=avdd}
N 960 330 960 370 {
lab=s1}
N 920 300 920 400 {
lab=inv_out}
N 960 400 970 400 {
lab=avss}
N 960 300 970 300 {
lab=avdd}
N 650 220 650 270 {
lab=avdd}
N 650 430 650 470 {
lab=avss}
N -230 200 -230 230 {
lab=swi}
N -270 230 -230 230 {
lab=swi}
N -70 300 -60 300 {
lab=avdd}
N 650 350 920 350 {
lab=inv_out}
N 10 660 20 660 {
lab=avdd}
N 20 630 20 660 {
lab=avdd}
N 10 630 20 630 {
lab=avdd}
N 150 660 160 660 {
lab=avdd}
N 160 630 160 660 {
lab=avdd}
N 150 630 160 630 {
lab=avdd}
N 290 660 300 660 {
lab=avdd}
N 300 630 300 660 {
lab=avdd}
N 290 630 300 630 {
lab=avdd}
N -110 820 -110 980 {
lab=swo1}
N -170 820 -170 980 {
lab=swi}
N -150 1110 -130 1110 {
lab=#net1}
N -180 1150 -100 1150 {
lab=bit0}
N -140 1020 -140 1110 {
lab=#net1}
N -140 1150 -140 1170 {
lab=bit0}
N 140 820 140 980 {
lab=swo2}
N 80 820 80 980 {
lab=swi}
N 100 1110 120 1110 {
lab=#net2}
N 70 1150 150 1150 {
lab=bit1}
N 110 1020 110 1110 {
lab=#net2}
N 110 1150 110 1170 {
lab=bit1}
N 390 820 390 980 {
lab=swo3}
N 330 820 330 980 {
lab=swi}
N 350 1110 370 1110 {
lab=#net3}
N 320 1150 400 1150 {
lab=bit2}
N 360 1020 360 1110 {
lab=#net3}
N 360 1150 360 1170 {
lab=bit2}
N -70 250 -70 270 {
lab=pos1}
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
C {sky130_fd_pr/nfet_01v8.sym} -90 400 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} -90 300 0 0 {name=M6
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
C {devices/lab_pin.sym} -70 170 1 0 {name=l11 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} -90 200 0 0 {name=M4
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
C {devices/vdd.sym} -150 350 0 0 {name=l12 lab=clk_in}
C {devices/lab_pin.sym} 220 350 2 0 {name=l14 sig_type=std_logic lab=clk_out}
C {devices/vdd.sym} -140 -30 0 0 {name=l16 lab=clk_in}
C {devices/capa.sym} 50 380 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 50 410 3 0 {name=l35 sig_type=std_logic lab=avss}
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
C {devices/lab_pin.sym} -60 400 2 0 {name=l9 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 630 400 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 630 300 0 0 {name=M8
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
C {devices/lab_pin.sym} 660 400 2 0 {name=l17 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 660 300 2 0 {name=l18 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 610 350 2 1 {name=l19 sig_type=std_logic lab=clk_out}
C {devices/lab_pin.sym} 800 350 3 1 {name=l20 sig_type=std_logic lab=inv_out}
C {devices/capa.sym} 800 380 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 800 410 3 0 {name=l23 sig_type=std_logic lab=avss}
C {devices/capa.sym} -190 230 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} -190 260 3 0 {name=l26 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 1080 300 0 0 {name=M9
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
C {sky130_fd_pr/pfet_01v8.sym} 1080 200 0 0 {name=M10
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
C {devices/lab_pin.sym} 1110 300 2 0 {name=l27 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1110 200 2 0 {name=l28 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1060 250 2 1 {name=l29 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 1100 250 2 0 {name=l30 sig_type=std_logic lab=buf_out}
C {devices/lab_pin.sym} 1100 170 1 0 {name=l31 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1100 330 3 0 {name=l32 sig_type=std_logic lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 1080 570 0 0 {name=M11
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
C {sky130_fd_pr/pfet_01v8.sym} 1080 470 0 0 {name=M12
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
C {devices/lab_pin.sym} 1110 570 2 0 {name=l33 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1110 470 2 0 {name=l34 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1100 520 2 0 {name=l37 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 1100 440 1 0 {name=l38 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1100 600 3 0 {name=l39 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1060 520 2 1 {name=l36 sig_type=std_logic lab=buf_out}
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
C {sky130_fd_pr/nfet_01v8.sym} 940 400 0 0 {name=M13
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
C {sky130_fd_pr/pfet_01v8.sym} 940 300 0 0 {name=M14
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
C {devices/lab_pin.sym} 970 400 2 0 {name=l44 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 970 300 2 0 {name=l45 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 960 270 1 0 {name=l48 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 960 430 3 0 {name=l49 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 960 350 2 0 {name=l46 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 650 470 3 0 {name=l21 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 650 220 1 0 {name=l50 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -70 430 3 0 {name=l1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -60 300 2 0 {name=l5 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 10 630 1 0 {name=l22 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} -10 660 0 0 {name=M1
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
C {devices/lab_pin.sym} 150 630 1 0 {name=l24 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 130 660 0 0 {name=M15
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
C {devices/lab_pin.sym} 290 630 1 0 {name=l40 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 270 660 0 0 {name=M16
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
C {devices/lab_pin.sym} -70 250 2 0 {name=l41 sig_type=std_logic lab=pos1}
C {devices/lab_pin.sym} 10 690 3 0 {name=l42 sig_type=std_logic lab=pos1}
C {devices/lab_pin.sym} 150 690 3 0 {name=l47 sig_type=std_logic lab=pos1}
C {devices/lab_pin.sym} 290 690 3 0 {name=l51 sig_type=std_logic lab=pos1}
C {sky130_fd_pr/pfet_01v8.sym} -140 800 1 0 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} -140 1000 3 0 {name=M18
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
C {devices/lab_pin.sym} -140 820 3 0 {name=l52 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -140 980 1 0 {name=l53 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -170 900 0 0 {name=l54 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} -110 900 2 0 {name=l55 sig_type=std_logic lab=swo1}
C {sky130_fd_pr/nfet_01v8.sym} -100 1130 3 0 {name=M19
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
C {sky130_fd_pr/pfet_01v8.sym} -180 1130 3 0 {name=M20
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
C {devices/lab_pin.sym} -100 1110 1 0 {name=l56 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -180 1110 1 0 {name=l57 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -210 1110 0 0 {name=l60 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -70 1110 2 0 {name=l58 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 110 800 1 0 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 110 1000 3 0 {name=M22
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
C {devices/lab_pin.sym} 110 820 3 0 {name=l59 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 110 980 1 0 {name=l61 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 80 900 0 0 {name=l62 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 140 900 2 0 {name=l63 sig_type=std_logic lab=swo2}
C {sky130_fd_pr/nfet_01v8.sym} 150 1130 3 0 {name=M23
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
C {sky130_fd_pr/pfet_01v8.sym} 70 1130 3 0 {name=M24
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
C {devices/lab_pin.sym} 150 1110 1 0 {name=l64 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 70 1110 1 0 {name=l65 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 40 1110 0 0 {name=l66 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 1110 2 0 {name=l67 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 360 800 1 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 360 1000 3 0 {name=M26
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
C {devices/lab_pin.sym} 360 820 3 0 {name=l68 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 360 980 1 0 {name=l69 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 330 900 0 0 {name=l70 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 390 900 2 0 {name=l71 sig_type=std_logic lab=swo3}
C {sky130_fd_pr/nfet_01v8.sym} 400 1130 3 0 {name=M27
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
C {sky130_fd_pr/pfet_01v8.sym} 320 1130 3 0 {name=M28
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
C {devices/lab_pin.sym} 400 1110 1 0 {name=l72 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 320 1110 1 0 {name=l73 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 290 1110 0 0 {name=l74 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 430 1110 2 0 {name=l75 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 250 660 2 1 {name=l76 sig_type=std_logic lab=swo1}
C {devices/lab_pin.sym} 110 660 2 1 {name=l77 sig_type=std_logic lab=swo2}
C {devices/lab_pin.sym} -30 660 2 1 {name=l78 sig_type=std_logic lab=swo3}
C {devices/lab_pin.sym} -140 780 2 0 {name=l80 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} -140 1170 2 0 {name=l81 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 110 780 2 0 {name=l82 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 110 1170 2 0 {name=l83 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 360 1170 2 0 {name=l84 sig_type=std_logic lab=bit2}
C {devices/lab_pin.sym} 360 780 2 0 {name=l85 sig_type=std_logic lab=bit2}
C {devices/vsource.sym} -140 1260 0 0 {name=V4 value=1.8}
C {devices/vdd.sym} -140 1230 0 0 {name=l86 lab=bit0}
C {devices/vdd.sym} -140 1290 2 0 {name=l87 lab=avss}
C {devices/vsource.sym} 110 1260 0 0 {name=V6 value=1.8}
C {devices/vdd.sym} 110 1230 0 0 {name=l88 lab=bit1}
C {devices/vdd.sym} 110 1290 2 0 {name=l89 lab=avss}
C {devices/vsource.sym} 360 1260 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 360 1230 0 0 {name=l90 lab=bit2}
C {devices/vdd.sym} 360 1290 2 0 {name=l91 lab=avss}
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
C {devices/lab_pin.sym} -70 230 0 0 {name=l92 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} -110 200 0 0 {name=l93 sig_type=std_logic lab=avss}
C {devices/code.sym} 420 -50 0 0 {name=s5 only_toplevel=false value="
.control
alter v4 0
alter v6 0
alter v7 0
save clk_in clk_out @V1[i]
tran 0.01n 50n 20n
run
plot clk_out clk_in
*plot tran1.clk_out tran2.clk_out tran3.clk_out tran4.clk_out tran5.clk_out tran6.clk_out tran7.clk_out tran8.clk_out xlimit 49ns 50ns
*plot tran1.s1 tran2.s1 tran3.s1 tran4.s1 tran5.s1 tran6.s1 tran7.s1 tran8.s1 tran9.s1 tran10.s1 xlimit 49ns 50ns
*plot tran1.@V1[i] tran5.@V1[i] tran10.@V1[i]
.endc
.end
"}
C {devices/lab_pin.sym} -190 200 1 0 {name=l79 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} -200 500 1 0 {name=l15 sig_type=std_logic lab=avdd}
