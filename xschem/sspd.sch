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
N 750 360 980 360 {
lab=v_out}
N 750 360 750 530 {
lab=v_out}
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
C {ma2022/differential.sym} 460 160 0 0 {name=x1}
C {devices/lab_pin.sym} 560 140 2 0 {name=l15 sig_type=std_logic lab=nclk}
C {devices/lab_pin.sym} 560 120 2 0 {name=l9 sig_type=std_logic lab=clk}
C {ma2022/ota_2.sym} 590 370 0 0 {name=x3}
C {devices/capa.sym} 300 360 0 1 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 300 390 1 1 {name=l35 sig_type=std_logic lab=avss}
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
C {devices/lab_pin.sym} 980 360 2 0 {name=l28 sig_type=std_logic lab=v_out}
C {devices/lab_pin.sym} 300 330 1 0 {name=l29 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 640 360 1 0 {name=l30 sig_type=std_logic lab=s2}
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
C {devices/capa.sym} 930 390 0 0 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 930 420 3 0 {name=l44 sig_type=std_logic lab=avss}
C {devices/iopin.sym} 690 20 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 690 40 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 690 60 0 0 {name=p3 lab=ref_in}
C {devices/iopin.sym} 690 80 0 0 {name=p4 lab=vco_in}
C {devices/iopin.sym} 690 100 0 0 {name=p5 lab=v_bias}
C {devices/iopin.sym} 690 120 0 0 {name=p6 lab=v_out}
C {devices/lab_pin.sym} 440 360 0 0 {name=l2 sig_type=std_logic lab=v_bias}
C {devices/lab_pin.sym} 410 170 3 0 {name=l1 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 180 170 3 0 {name=l3 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 520 420 3 0 {name=l5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 520 300 1 0 {name=l6 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 410 90 1 0 {name=l7 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 90 1 0 {name=l8 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 110 330 1 0 {name=l11 sig_type=std_logic lab=vco_in}
C {devices/lab_pin.sym} 130 130 1 0 {name=l12 sig_type=std_logic lab=ref_in}
C {ma2022/inv_buffer2.sym} 280 170 0 0 {name=x2}
