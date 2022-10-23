v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 280 440 280 480 {
lab=clk_out}
N 240 410 240 510 {
lab=#net1}
N 280 510 290 510 {
lab=avss}
N 280 270 290 270 {
lab=avdd}
N 290 240 290 270 {
lab=avdd}
N 280 240 290 240 {
lab=avdd}
N 200 460 240 460 {
lab=#net1}
N 280 410 290 410 {
lab=avdd}
N -270 270 -260 270 {
lab=avdd}
N -260 240 -260 270 {
lab=avdd}
N -270 240 -260 240 {
lab=avdd}
N -90 270 -80 270 {
lab=avdd}
N -80 240 -80 270 {
lab=avdd}
N -90 240 -80 240 {
lab=avdd}
N 90 270 100 270 {
lab=avdd}
N 100 240 100 270 {
lab=avdd}
N 90 240 100 240 {
lab=avdd}
N 670 210 670 370 {
lab=swo1}
N 610 210 610 370 {
lab=swi}
N 630 500 650 500 {
lab=#net2}
N 600 540 680 540 {
lab=bit0}
N 640 410 640 500 {
lab=#net2}
N 640 540 640 560 {
lab=bit0}
N 920 210 920 370 {
lab=swo2}
N 860 210 860 370 {
lab=swi}
N 880 500 900 500 {
lab=#net3}
N 850 540 930 540 {
lab=bit1}
N 890 410 890 500 {
lab=#net3}
N 890 540 890 560 {
lab=bit1}
N 1170 210 1170 370 {
lab=swo3}
N 1110 210 1110 370 {
lab=swi}
N 1130 500 1150 500 {
lab=#net4}
N 1100 540 1180 540 {
lab=bit2}
N 1140 410 1140 500 {
lab=#net4}
N 1140 540 1140 560 {
lab=bit2}
N 280 460 440 460 {
lab=clk_out}
N 0 460 20 460 {
lab=#net5}
N -270 300 280 300 {
lab=#net6}
N 280 300 280 380 {
lab=#net6}
C {devices/code_shown.sym} 80 100 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/vsource.sym} -310 0 0 0 {name=V1 value=0}
C {devices/vsource.sym} -260 0 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} -140 0 0 0 {name=V3 value="PULSE(1.8 0.0 0 5ps 5ps 5ns 10ns)"}
C {devices/vdd.sym} -260 -30 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} -310 -30 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} -140 30 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} -260 30 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} -310 30 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -200 0 0 0 {name=V5 value=0.8
}
C {devices/vdd.sym} -200 30 2 0 {name=l25 lab=avss}
C {sky130_fd_pr/nfet_01v8.sym} 260 510 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 260 410 0 0 {name=M6
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
C {devices/lab_pin.sym} 280 240 1 0 {name=l11 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 260 270 0 0 {name=M4
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
C {devices/vdd.sym} -180 460 0 0 {name=l12 lab=clk_in}
C {devices/lab_pin.sym} 440 460 2 0 {name=l14 sig_type=std_logic lab=clk_out}
C {devices/vdd.sym} -140 -30 0 0 {name=l16 lab=clk_in}
C {devices/capa.sym} 400 490 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 400 520 3 0 {name=l35 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 290 510 2 0 {name=l9 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 280 540 3 0 {name=l1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 290 410 2 0 {name=l5 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -270 240 1 0 {name=l22 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} -290 270 0 0 {name=M1
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
C {devices/lab_pin.sym} -90 240 1 0 {name=l24 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} -110 270 0 0 {name=M15
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
C {devices/lab_pin.sym} 90 240 1 0 {name=l40 sig_type=std_logic lab=avdd}
C {sky130_fd_pr/pfet_01v8.sym} 70 270 0 0 {name=M16
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
C {sky130_fd_pr/pfet_01v8.sym} 640 190 3 1 {name=M17
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
C {sky130_fd_pr/nfet_01v8.sym} 640 390 3 0 {name=M18
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
C {devices/lab_pin.sym} 640 210 3 0 {name=l52 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 640 370 1 0 {name=l53 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 610 290 0 0 {name=l54 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 670 290 2 0 {name=l55 sig_type=std_logic lab=swo1}
C {sky130_fd_pr/nfet_01v8.sym} 680 520 3 0 {name=M19
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
C {sky130_fd_pr/pfet_01v8.sym} 600 520 3 0 {name=M20
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
C {devices/lab_pin.sym} 680 500 1 0 {name=l56 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 600 500 1 0 {name=l57 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 570 500 0 0 {name=l60 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 710 500 2 0 {name=l58 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 890 190 3 1 {name=M21
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
C {sky130_fd_pr/nfet_01v8.sym} 890 390 3 0 {name=M22
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
C {devices/lab_pin.sym} 890 210 3 0 {name=l59 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 890 370 1 0 {name=l61 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 860 290 0 0 {name=l62 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 920 290 2 0 {name=l63 sig_type=std_logic lab=swo2}
C {sky130_fd_pr/nfet_01v8.sym} 930 520 3 0 {name=M23
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
C {sky130_fd_pr/pfet_01v8.sym} 850 520 3 0 {name=M24
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
C {devices/lab_pin.sym} 930 500 1 0 {name=l64 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 850 500 1 0 {name=l65 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 820 500 0 0 {name=l66 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 960 500 2 0 {name=l67 sig_type=std_logic lab=avss}
C {sky130_fd_pr/pfet_01v8.sym} 1140 190 3 1 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 1140 390 3 0 {name=M26
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
C {devices/lab_pin.sym} 1140 210 3 0 {name=l68 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1140 370 1 0 {name=l69 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1110 290 0 0 {name=l70 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 1170 290 2 0 {name=l71 sig_type=std_logic lab=swo3}
C {sky130_fd_pr/nfet_01v8.sym} 1180 520 3 0 {name=M27
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
C {sky130_fd_pr/pfet_01v8.sym} 1100 520 3 0 {name=M28
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
C {devices/lab_pin.sym} 1180 500 1 0 {name=l72 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1100 500 1 0 {name=l73 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1070 500 0 0 {name=l74 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1210 500 2 0 {name=l75 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 50 270 2 1 {name=l76 sig_type=std_logic lab=swo1}
C {devices/lab_pin.sym} -130 270 2 1 {name=l77 sig_type=std_logic lab=swo2}
C {devices/lab_pin.sym} -310 270 2 1 {name=l78 sig_type=std_logic lab=swo3}
C {devices/lab_pin.sym} 640 170 2 0 {name=l80 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 640 560 2 0 {name=l81 sig_type=std_logic lab=bit0}
C {devices/lab_pin.sym} 890 170 2 0 {name=l82 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 890 560 2 0 {name=l83 sig_type=std_logic lab=bit1}
C {devices/lab_pin.sym} 1140 560 2 0 {name=l84 sig_type=std_logic lab=bit2}
C {devices/lab_pin.sym} 1140 170 2 0 {name=l85 sig_type=std_logic lab=bit2}
C {devices/vsource.sym} 230 10 0 0 {name=V4 value=1.8}
C {devices/vdd.sym} 230 -20 0 0 {name=l86 lab=bit0}
C {devices/vdd.sym} 230 40 2 0 {name=l87 lab=avss}
C {devices/vsource.sym} 290 10 0 0 {name=V6 value=1.8}
C {devices/vdd.sym} 290 -20 0 0 {name=l88 lab=bit1}
C {devices/vdd.sym} 290 40 2 0 {name=l89 lab=avss}
C {devices/vsource.sym} 350 10 0 0 {name=V7 value=1.8}
C {devices/vdd.sym} 350 -20 0 0 {name=l90 lab=bit2}
C {devices/vdd.sym} 350 40 2 0 {name=l91 lab=avss}
C {devices/code.sym} 60 -50 0 0 {name=s5 only_toplevel=false value="
.control
save clk_in clk_out @V1[i] @V3[i]
alter v4 0
alter v6 0
alter v7 0
tran 0.05n 40n 20n
run
alter v4 1.8
alter v6 0
alter v7 0
tran 0.05n 40n 20n
run
alter v4 0
alter v6 1.8
alter v7 0
tran 0.05n 40n 20n
run
alter v4 1.8
alter v6 1.8
alter v7 0
tran 0.05n 40n 20n
run
alter v4 0
alter v6 0
alter v7 1.8
tran 0.05n 40n 20n
run
alter v4 1.8
alter v6 0
alter v7 1.8
tran 0.05n 40n 20n
run
alter v4 0
alter v6 1.8
alter v7 1.8
tran 0.05n 40n 20n
run
alter v4 1.8
alter v6 1.8
alter v7 1.8
tran 0.05n 40n 20n
run
plot tran1.clk_in tran1.clk_out tran2.clk_out tran3.clk_out tran4.clk_out tran5.clk_out tran6.clk_out tran7.clk_out tran8.clk_out xlimit 24n 32n
*plot tran1.clk_in tran2.clk_in tran3.clk_in tran4.clk_in tran5.clk_in tran6.clk_in tran7.clk_in tran8.clk_in
plot tran1.@V1[i] tran5.@V1[i] tran8.@V1[i] tran1.@V3[i] tran5.@V3[i] tran8.@V3[i]
*plot tran1.clk_in tran1.s3 tran1.clk_out
.endc
.end
"}
C {ma2022/inv_buffer.sym} -30 510 0 0 {name=x1}
C {devices/lab_pin.sym} -130 430 1 0 {name=l18 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -130 510 3 0 {name=l19 sig_type=std_logic lab=avss}
C {ma2022/inv_simple1.sym} 170 480 0 0 {name=x2}
C {devices/lab_pin.sym} 100 510 3 0 {name=l23 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 100 420 1 0 {name=l28 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -180 480 3 0 {name=l21 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 0 480 3 0 {name=l30 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -200 -30 1 0 {name=l2 sig_type=std_logic lab=swi}
C {devices/lab_pin.sym} 240 270 0 0 {name=l8 sig_type=std_logic lab=swi}
