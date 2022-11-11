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
C {devices/lab_pin.sym} 1150 -1260 0 1 {name=l6 sig_type=std_logic lab=f_10}
C {sky130_stdcells/dfxbp_1.sym} 970 -1530 0 0 {name=x2 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
C {devices/capa.sym} 870 -1490 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 870 -1460 3 0 {name=l27 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1150 -1280 0 1 {name=l22 sig_type=std_logic lab=f_5}
C {sky130_stdcells/dfxbp_1.sym} 1190 -1550 0 0 {name=x3 VGND=VGND VNB=VNB VPB=VPB VPWR=VPWR prefix=sky130_fd_sc_hd__ }
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
C {devices/lab_pin.sym} 970 -1280 3 1 {name=l33 sig_type=std_logic lab=s1}
C {devices/lab_pin.sym} 970 -1260 3 0 {name=l34 sig_type=std_logic lab=s2}
C {devices/vdd.sym} 1020 -1310 0 0 {name=l35 lab=avdd}
C {devices/vdd.sym} 1020 -1230 2 0 {name=l36 lab=avss}
C {ma2022/inv_buffer.sym} 1120 -1230 0 0 {name=x14}
C {devices/lab_pin.sym} 670 -1280 0 0 {name=l5 sig_type=std_logic lab=s1}
C {devices/iopin.sym} 1430 -1450 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 1430 -1430 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 1430 -1410 0 0 {name=p3 lab=f_in}
C {devices/iopin.sym} 1430 -1390 0 0 {name=p4 lab=f_5}
C {devices/iopin.sym} 1430 -1370 0 0 {name=p5 lab=f_10}
C {devices/lab_pin.sym} 1280 -1540 1 1 {name=l10 sig_type=std_logic lab=q_3}
C {devices/lab_pin.sym} 660 -1520 3 1 {name=l2 sig_type=std_logic lab=f_in}
C {devices/lab_pin.sym} 880 -1540 3 1 {name=l3 sig_type=std_logic lab=f_in}
C {devices/lab_pin.sym} 1100 -1560 3 1 {name=l11 sig_type=std_logic lab=f_in}
C {devices/lab_pin.sym} 1060 -1520 1 1 {name=l4 sig_type=std_logic lab=q_2}
C {devices/lab_pin.sym} 840 -1500 1 1 {name=l7 sig_type=std_logic lab=q_1}
