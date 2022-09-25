v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 840 -1520 880 -1520 {
lab=s1}
N 1060 -1540 1100 -1540 {
lab=#net1}
N 1280 -1670 1280 -1560 {
lab=#net2}
N 770 -1670 1280 -1670 {
lab=#net2}
N 600 -1500 660 -1500 {
lab=#net3}
N 770 -1630 1060 -1630 {
lab=#net1}
N 1060 -1630 1060 -1540 {
lab=#net1}
N 600 -1650 600 -1500 {
lab=#net3}
N 600 -1650 650 -1650 {
lab=#net3}
N 850 -1280 920 -1280 {
lab=s2}
N 850 -1260 850 -1230 {
lab=#net4}
N 670 -1230 850 -1230 {
lab=#net4}
N 670 -1260 670 -1230 {
lab=#net4}
C {sky130_stdcells/dfxbp_1.sym} 750 -1510 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} 610 -1810 0 0 {name=V1 value=0}
C {devices/vsource.sym} 660 -1810 0 0 {name=V2 value=1.8}
C {devices/vdd.sym} 660 -1840 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 610 -1840 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 660 -1780 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 610 -1780 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} 920 -1760 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/code.sym} 1050 -1890 0 0 {name=s2 only_toplevel=false value="
.include /foss/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.control
set temp=25
save clkin din s1 s2 out1 out2 @V1[i]
tran 0.01n 2000n 0n
*plot @V1[i]
*plot clkin din s1 s2 out1 xlimit 500ns 10ns
*plot clkin s1 s2 
*plot clkin s1 s2
plot clkin s2
fft clkin s1 s2
*plot db(mag(out1)) xlimit 0.1g 15g ylimit 0.0 -200
*plot db(mag(clk)) xlimit 0.1g 15g ylimit 0.0 -200
plot db(mag(clkin)) db(mag(s1)) db(mag(s2)) xlimit 0.0meg 50meg ylimit 0.0 -200
.endc
.end
"}
C {devices/lab_pin.sym} 1460 -1240 0 1 {name=l6 sig_type=std_logic lab=out2}
C {sky130_stdcells/dfxbp_1.sym} 970 -1530 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} 830 -1810 0 0 {name=V3 value="PULSE(0.0 1.8 10n 1p 1p 20n 40n)"}
C {devices/vdd.sym} 830 -1780 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 830 -1840 0 0 {name=l12 lab=clkin}
C {devices/vsource.sym} 720 -1810 0 0 {name=V5 value=1.8}
C {devices/vdd.sym} 720 -1840 0 0 {name=l15 lab=VPWR}
C {devices/vdd.sym} 720 -1780 2 0 {name=l16 lab=avss}
C {devices/vsource.sym} 780 -1810 0 0 {name=V6 value=0}
C {devices/vdd.sym} 780 -1840 0 0 {name=l17 lab=VGND}
C {devices/vdd.sym} 780 -1780 2 0 {name=l18 lab=avss}
C {devices/capa.sym} 870 -1490 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 870 -1460 3 0 {name=l27 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1460 -1260 0 1 {name=l22 sig_type=std_logic lab=out1}
C {sky130_stdcells/dfxbp_1.sym} 1190 -1550 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/vdd.sym} 660 -1520 0 0 {name=l23 lab=clkin}
C {devices/vdd.sym} 880 -1540 0 0 {name=l24 lab=clkin}
C {devices/vdd.sym} 1100 -1560 0 0 {name=l25 lab=clkin}
C {devices/lab_pin.sym} 840 -1520 3 1 {name=l26 sig_type=std_logic lab=s1}
C {sky130_stdcells/nand2_1.sym} 710 -1650 0 1 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 1090 -1510 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1090 -1480 3 0 {name=l1 sig_type=std_logic lab=avss}
C {sky130_stdcells/dfxbp_1.sym} 760 -1270 0 0 {name=x12 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 920 -1280 1 0 {name=l14 sig_type=std_logic lab=s2}
C {devices/capa.sym} 820 -1200 0 1 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 820 -1170 1 1 {name=l29 sig_type=std_logic lab=avss}
C {devices/capa.sym} 870 -1310 2 1 {name=C5
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 870 -1340 3 1 {name=l31 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1280 -1260 3 1 {name=l33 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 1280 -1240 3 0 {name=l34 sig_type=std_logic lab=s2}
C {devices/vdd.sym} 1330 -1290 0 0 {name=l35 lab=avdd}
C {devices/vdd.sym} 1330 -1210 2 0 {name=l36 lab=avss}
C {ma2022/inv_buffer.sym} 1430 -1210 0 0 {name=x14}
C {devices/lab_pin.sym} 670 -1280 0 0 {name=l5 sig_type=std_logic lab=s1}
