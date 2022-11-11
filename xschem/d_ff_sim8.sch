v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 910 -1520 950 -1520 {
lab=s1}
N 1130 -1540 1170 -1540 {
lab=#net1}
N 1350 -1670 1350 -1560 {
lab=#net2}
N 840 -1670 1350 -1670 {
lab=#net2}
N 670 -1500 730 -1500 {
lab=#net3}
N 840 -1630 1130 -1630 {
lab=#net1}
N 1130 -1630 1130 -1540 {
lab=#net1}
N 670 -1650 670 -1500 {
lab=#net3}
N 670 -1650 720 -1650 {
lab=#net3}
N 910 -1230 950 -1230 {
lab=#net4}
N 670 -1210 730 -1210 {
lab=#net5}
N 670 -1360 670 -1210 {
lab=#net5}
N 670 -1360 720 -1360 {
lab=#net5}
N 1130 -1380 1130 -1250 {
lab=#net6}
N 840 -1380 1130 -1380 {
lab=#net6}
N 840 -1340 910 -1340 {
lab=#net4}
N 910 -1340 910 -1230 {
lab=#net4}
N 1130 -1250 1240 -1250 {
lab=#net6}
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
save clkin s1 out @V1[i] @V3[i] @V5[i]
tran 0.05n 200n 0n
plot @V1[i] @V3[i] @V5[i]
plot clkin out
plot out
fft clkin s1 out
plot db(mag(clkin)) db(mag(s1)) db(mag(out)) xlimit 0.0meg 5g ylimit 0.0 -120
.endc
.end
"}
C {devices/lab_pin.sym} 1130 -1230 1 1 {name=l6 sig_type=std_logic lab=out}
C {devices/vsource.sym} 830 -1810 0 0 {name=V3 value="PULSE(0.0 1.8 10n 5p 5p 240p 500p)"}
C {devices/vdd.sym} 830 -1780 2 0 {name=l11 lab=avss}
C {devices/vdd.sym} 830 -1840 0 0 {name=l12 lab=clkin}
C {devices/vsource.sym} 720 -1810 0 0 {name=V5 value=1.8}
C {devices/vdd.sym} 720 -1840 0 0 {name=l15 lab=VPWR}
C {devices/vdd.sym} 720 -1780 2 0 {name=l16 lab=avss}
C {devices/vsource.sym} 780 -1810 0 0 {name=V6 value=0}
C {devices/vdd.sym} 780 -1840 0 0 {name=l17 lab=VGND}
C {devices/vdd.sym} 780 -1780 2 0 {name=l18 lab=avss}
C {sky130_stdcells/dfxbp_1.sym} 820 -1510 0 0 {name=x1 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} 1040 -1530 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 940 -1490 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 940 -1460 3 0 {name=l27 sig_type=std_logic lab=avss}
C {sky130_stdcells/dfxbp_1.sym} 1260 -1550 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/vdd.sym} 730 -1520 0 0 {name=l23 lab=clkin}
C {devices/vdd.sym} 950 -1540 0 0 {name=l2 lab=clkin}
C {devices/vdd.sym} 1170 -1560 0 0 {name=l9 lab=clkin}
C {sky130_stdcells/nand2_1.sym} 780 -1650 0 1 {name=x5 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 1160 -1510 0 0 {name=C3
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1160 -1480 3 0 {name=l5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1350 -1540 1 1 {name=l8 sig_type=std_logic lab=q_3}
C {sky130_stdcells/dfxbp_1.sym} 820 -1220 0 0 {name=x4 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} 1040 -1240 0 0 {name=x6 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 940 -1200 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 940 -1170 3 0 {name=l1 sig_type=std_logic lab=avss}
C {devices/vdd.sym} 730 -1230 0 0 {name=l13 lab=s1}
C {devices/vdd.sym} 950 -1250 0 0 {name=l14 lab=s1}
C {sky130_stdcells/nand2_1.sym} 780 -1360 0 1 {name=x8 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 1220 -1220 0 0 {name=C4
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 1220 -1190 3 0 {name=l20 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 910 -1520 3 1 {name=l31 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 1130 -1520 1 1 {name=l19 sig_type=std_logic lab=q_2}
C {devices/lab_pin.sym} 910 -1500 1 1 {name=l21 sig_type=std_logic lab=q_1}
C {devices/lab_pin.sym} 910 -1210 1 1 {name=l22 sig_type=std_logic lab=q_4}
