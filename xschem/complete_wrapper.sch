v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 800 -210 890 -210 {
lab=ref_in}
N 800 -230 800 -210 {
lab=ref_in}
N 800 -310 800 -290 {
lab=#net1}
N 800 -410 800 -310 {
lab=#net1}
N 380 -410 800 -410 {
lab=#net1}
C {sscs-22-project-wrapper/xschem/sky130-10-bit-SAR-ADC/xschem/src/esd_diodes/esd_diodes.sym} 650 -200 0 1 {name=x1}
C {sscs-22-project-wrapper/xschem/sky130-10-bit-SAR-ADC/xschem/src/esd_diodes/esd_diodes.sym} 650 -300 0 1 {name=x2}
C {ma2022/out_buf.sym} 560 -470 0 0 {name=x3}
C {ma2022/full_IC_1.sym} 230 -380 0 0 {name=x4}
C {sky130_fd_pr/res_iso_pw.sym} 800 -260 0 0 {name=R2
rho=3050
W=2.00
L=10.53
model=res_iso_pw
spiceprefix=X
mult=1}
C {devices/lab_pin.sym} 780 -260 0 0 {name=p1 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 500 -290 0 0 {name=p2 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 630 -430 0 0 {name=p3 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 380 -450 0 1 {name=p4 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 380 -470 0 1 {name=p5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 500 -310 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 500 -210 0 0 {name=p7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 500 -190 0 0 {name=p8 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 380 -430 0 1 {name=p9 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 560 -480 0 0 {name=p10 sig_type=std_logic lab=out}
C {devices/lab_pin.sym} 630 -530 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 380 -390 0 1 {name=p12 sig_type=std_logic lab=s_out}
C {devices/lab_pin.sym} 380 -370 0 1 {name=p13 sig_type=std_logic lab=s_in}
C {devices/lab_pin.sym} 380 -330 0 1 {name=p15 sig_type=std_logic lab=read}
C {devices/lab_pin.sym} 380 -350 0 1 {name=p14 sig_type=std_logic lab=load}
C {devices/lab_pin.sym} 380 -310 0 1 {name=p16 sig_type=std_logic lab=clk_in}
C {devices/lab_pin.sym} 380 -290 0 1 {name=p17 sig_type=std_logic lab=reset}
C {devices/lab_pin.sym} 710 -480 0 1 {name=p18 sig_type=std_logic lab=ref_out}
C {devices/lab_pin.sym} 890 -210 0 1 {name=p19 sig_type=std_logic lab=ref_in}
C {devices/iopin.sym} 870 -550 0 0 { name=p20 lab=vss }
C {devices/iopin.sym} 870 -570 0 0 { name=p21 lab=vdd }
C {devices/iopin.sym} 870 -480 0 0 { name=p22 lab=s_out }
C {devices/iopin.sym} 870 -460 0 0 { name=p23 lab=s_in }
C {devices/iopin.sym} 870 -380 0 0 { name=p24 lab=reset }
C {devices/iopin.sym} 870 -520 0 0 { name=p25 lab=ref_out }
C {devices/iopin.sym} 870 -500 0 0 { name=p26 lab=ref_in }
C {devices/iopin.sym} 870 -420 0 0 { name=p27 lab=read }
C {devices/iopin.sym} 870 -440 0 0 { name=p28 lab=load }
C {devices/iopin.sym} 870 -400 0 0 { name=p29 lab=clk_in }
