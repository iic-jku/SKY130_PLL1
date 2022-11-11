v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 440 470 600 470 {
lab=#net1}
N 440 390 440 470 {
lab=#net1}
N 600 360 600 470 {
lab=#net1}
N 510 120 560 120 {
lab=clk}
N 510 140 560 140 {
lab=nclk}
N 600 360 690 360 {
lab=#net1}
N 220 330 300 330 {
lab=#net2}
N 300 330 440 330 {
lab=#net2}
N 850 360 980 360 {
lab=v_out}
N 110 230 110 300 {
lab=nclk}
N 740 250 740 330 {
lab=clk}
C {devices/lab_pin.sym} 560 140 2 0 {name=l15 sig_type=std_logic lab=nclk}
C {devices/lab_pin.sym} 560 120 2 0 {name=l9 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 300 390 1 1 {name=l35 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 980 360 2 0 {name=l28 sig_type=std_logic lab=v_out}
C {devices/iopin.sym} 690 20 0 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 690 40 0 0 {name=l4 sig_type=std_logic lab=vss}
C {devices/iopin.sym} 690 60 0 0 {name=p3 lab=ref_in}
C {devices/iopin.sym} 690 80 0 0 {name=p4 lab=vco_in}
C {devices/iopin.sym} 690 100 0 0 {name=p5 lab=vbias}
C {devices/iopin.sym} 690 120 0 0 {name=p6 lab=v_out}
C {devices/lab_pin.sym} 440 360 0 0 {name=p2 lab=vbias}
C {devices/lab_pin.sym} 410 170 3 0 {name=l6 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 180 170 3 0 {name=l7 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 520 420 3 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 520 300 1 0 {name=p7 lab=vdd}
C {devices/lab_pin.sym} 410 90 1 0 {name=p8 lab=vdd}
C {devices/lab_pin.sym} 180 90 1 0 {name=p9 lab=vdd}
C {devices/lab_pin.sym} 60 330 1 0 {name=l11 sig_type=std_logic lab=vco_in}
C {devices/lab_pin.sym} 130 130 1 0 {name=l12 sig_type=std_logic lab=ref_in}
C {inv_buffer2.sym} 280 170 0 0 {name=x2}
C {differential.sym} 460 160 0 0 {name=x1}
C {ota_2.sym} 590 370 0 0 {name=x3}
C {sky130_fd_pr/cap_mim_m3_1.sym} 300 360 0 0 {name=C1 model=cap_mim_m3_1 W=5 L=5 MF=1 spiceprefix=X}
C {tgate_1.sym} 840 400 0 0 {name=x4}
C {devices/lab_pin.sym} 780 420 3 0 {name=l10 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 780 330 1 0 {name=p10 lab=vdd}
C {devices/lab_pin.sym} 740 250 1 0 {name=l18 sig_type=std_logic lab=clk}
C {tgate_1.sym} 210 370 0 0 {name=x5}
C {devices/lab_pin.sym} 150 390 3 0 {name=l13 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 150 300 1 0 {name=p11 lab=vdd}
C {devices/lab_pin.sym} 110 230 1 0 {name=l23 sig_type=std_logic lab=nclk}
