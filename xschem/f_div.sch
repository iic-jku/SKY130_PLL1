v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 460 -80 500 -80 {
lab=#net1}
C {devices/lab_pin.sym} 680 -80 3 1 {name=l102 sig_type=std_logic lab=f_out}
C {devices/lab_pin.sym} 90 -90 0 0 {name=l58 sig_type=std_logic lab=f_in}
C {devices/iopin.sym} 90 -270 0 0 {name=p1 lab=avdd}
C {devices/iopin.sym} 90 -250 0 0 {name=p2 lab=avss}
C {devices/iopin.sym} 90 -230 0 0 {name=p3 lab=f_in}
C {devices/iopin.sym} 90 -210 0 0 {name=p4 lab=f_out}
C {devices/lab_pin.sym} 550 -120 3 1 {name=l1 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 360 -130 3 1 {name=l2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 140 -130 3 1 {name=l3 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 140 -50 1 1 {name=l4 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -50 1 1 {name=l5 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 550 -40 1 1 {name=l6 sig_type=std_logic lab=avss}
C {inv_buffer2.sym} 240 -50 0 0 {name=x1}
C {inv_buffer2.sym} 650 -40 0 0 {name=x2}
C {d_ff_15.sym} 420 -60 0 0 {name=x3}
