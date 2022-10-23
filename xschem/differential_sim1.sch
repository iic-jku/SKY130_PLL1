v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 440 70 490 70 {
lab=clk}
N 440 90 490 90 {
lab=nclk}
C {devices/code_shown.sym} 30 -30 0 0 {name=s1 only_toplevel=false value=".lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice.tt.red tt"}
C {devices/vsource.sym} 40 -130 0 0 {name=V1 value=0}
C {devices/vsource.sym} 90 -130 0 0 {name=V2 value=1.8}
C {devices/vsource.sym} 210 -130 0 0 {name=V3 value="PULSE(1.8 0.0 0 5ps 5ps 20ns 40ns)"}
C {devices/vdd.sym} 90 -160 0 0 {name=l3 lab=avdd}
C {devices/vdd.sym} 40 -160 0 0 {name=l4 lab=avss}
C {devices/vdd.sym} 210 -100 2 0 {name=l6 lab=avss}
C {devices/vdd.sym} 90 -100 2 0 {name=l7 lab=avss}
C {devices/gnd.sym} 40 -100 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 150 -130 0 0 {name=V5 value=0.9}
C {devices/vdd.sym} 150 -100 2 0 {name=l25 lab=avss}
C {devices/code.sym} 410 -180 0 0 {name=s5 only_toplevel=false value="
.control
save s_in clk nclk @V1[i] @V3[i]
tran 0.01n 120n 0n
plot s_in clk nclk
*plot clk
*plot nclk
plot @V1[i] @V3[i]
.endc
.end
"}
C {devices/vdd.sym} 150 -160 0 0 {name=l2 lab=vc}
C {devices/vdd.sym} 340 120 2 0 {name=l1 lab=avss}
C {devices/vdd.sym} 340 40 0 0 {name=l5 lab=avdd}
C {devices/lab_pin.sym} 490 90 2 0 {name=l15 sig_type=std_logic lab=nclk}
C {devices/lab_pin.sym} 490 70 2 0 {name=l9 sig_type=std_logic lab=clk}
C {ma2022/differential.sym} 390 110 0 0 {name=x1}
C {devices/vdd.sym} 210 -160 0 0 {name=l8 lab=s_in}
C {devices/vdd.sym} 60 80 0 0 {name=l11 lab=s_in}
C {devices/vdd.sym} 110 130 2 0 {name=l12 lab=avss}
C {devices/vdd.sym} 110 50 0 0 {name=l13 lab=avdd}
C {ma2022/inv_buffer.sym} 210 130 0 0 {name=x2}
C {devices/vdd.sym} 60 100 2 0 {name=l14 lab=avss}
C {devices/vdd.sym} 240 100 2 0 {name=l16 lab=avdd}
