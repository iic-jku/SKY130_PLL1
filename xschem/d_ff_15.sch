v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 200 410 200 {
lab=f_5}
N 590 180 630 180 {
lab=#net1}
N 810 50 810 160 {
lab=#net2}
N 300 50 810 50 {
lab=#net2}
N 130 220 190 220 {
lab=#net3}
N 300 90 590 90 {
lab=#net1}
N 590 90 590 180 {
lab=#net1}
N 130 70 130 220 {
lab=#net3}
N 130 70 180 70 {
lab=#net3}
N 370 490 410 490 {
lab=#net4}
N 130 510 190 510 {
lab=#net5}
N 130 360 130 510 {
lab=#net5}
N 130 360 180 360 {
lab=#net5}
N 590 340 590 470 {
lab=#net6}
N 300 340 590 340 {
lab=#net6}
N 300 380 370 380 {
lab=#net4}
N 370 380 370 490 {
lab=#net4}
N 590 470 700 470 {
lab=#net6}
C {devices/iopin.sym} 30 20 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 30 40 0 0 {name=p2 lab=vss}
C {devices/iopin.sym} 30 60 0 0 {name=p3 lab=f_in}
C {devices/iopin.sym} 30 80 0 0 {name=p5 lab=f_15}
C {devices/lab_pin.sym} 590 490 1 1 {name=l6 sig_type=std_logic lab=f_15}
C {sky130_stdcells/dfxbp_1.sym} 280 210 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 240 70 0 1 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 810 180 1 1 {name=l8 sig_type=std_logic lab=q_3}
C {devices/lab_pin.sym} 370 200 3 1 {name=l7 lab=f_5}
C {devices/lab_pin.sym} 590 200 1 1 {name=l19 sig_type=std_logic lab=q_2}
C {devices/lab_pin.sym} 370 220 1 1 {name=l21 sig_type=std_logic lab=q_1}
C {devices/lab_pin.sym} 370 510 1 1 {name=l22 sig_type=std_logic lab=q_4}
C {devices/lab_pin.sym} 190 200 3 1 {name=l2 lab=f_in}
C {devices/lab_pin.sym} 410 180 3 1 {name=l3 lab=f_in}
C {devices/lab_pin.sym} 630 160 3 1 {name=l9 lab=f_in}
C {devices/lab_pin.sym} 190 490 3 1 {name=l4 lab=f_5}
C {devices/lab_pin.sym} 410 470 3 1 {name=l10 lab=f_5}
C {sky130_stdcells/dfxbp_1.sym} 500 190 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} 720 170 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} 280 500 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/dfxbp_1.sym} 500 480 0 0 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nand2_1.sym} 240 360 0 1 {name=x7 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
