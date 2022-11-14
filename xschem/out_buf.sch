v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 960 -1640 960 -1540 {
lab=#net1}
N 1040 -1640 1040 -1540 {
lab=#net2}
N 1070 -1720 1070 -1620 {
lab=#net2}
N 1150 -1720 1150 -1620 {
lab=out}
N 1070 -1560 1070 -1460 {
lab=#net2}
N 1150 -1560 1150 -1460 {
lab=out}
N 1070 -1620 1070 -1560 {
lab=#net2}
N 1040 -1590 1070 -1590 {
lab=#net2}
N 1150 -1620 1150 -1560 {
lab=out}
N 1150 -1590 1260 -1590 {
lab=out}
C {sky130_stdcells/clkinv_2.sym} 680 -1590 0 0 {name=x2 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_4.sym} 760 -1590 0 0 {name=x3 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_8.sym} 840 -1590 0 0 {name=x4 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 920 -1590 0 0 {name=x5 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {devices/iopin.sym} 1260 -1590 0 0 {name=p1 lab=out}
C {devices/iopin.sym} 640 -1590 0 1 {name=p2 lab=in}
C {devices/iopin.sym} 990 -1790 1 1 {name=p3 lab=vdd}
C {devices/iopin.sym} 990 -1450 3 1 {name=p4 lab=vss}
C {sky130_stdcells/clkinv_16.sym} 1000 -1640 0 0 {name=x1 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 1000 -1540 0 0 {name=x6 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 1110 -1720 0 0 {name=x7 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 1110 -1620 0 0 {name=x8 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 1110 -1560 0 0 {name=x9 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/clkinv_16.sym} 1110 -1460 0 0 {name=x10 VGND=vss VNB=vss VPB=vdd VPWR=vdd prefix=sky130_fd_sc_hd__ }
