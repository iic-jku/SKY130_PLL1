module wrapper #(parameter N=96, M=10) (
    input ref_in, clk_in, s_in, read, load, reset, vco_in,
    output s_out,
    output reg [M-1:0] dac, 
    output reg [2:0] corner,
    output lock,
    //input vco_1, vco_2, vco_3, vco_4,
    //output vco_out,
    output reg[2:0] slope_ctrl,
    output reg[7:0] vbias1, vbias2, vbias3
);
//divider=4bit, upper=10bit, lower=10bit, ref_time=10bit

reg[N-1:0] r_config; //slope-ctrl r_config[72:70]
reg[M-1:0] dac_tmp;
//wire lock_tmp, mux_tmp1, mux_tmp2;
reg[2:0] corner_tmp;

//clk_divider    d1(.clk_in(ref_in), .divider(r_config[3:0]), .clk_out(clk_out));
shiftregister  #(.N(N)) d2 (.clk(clk_in), .reset(reset), .load(load), .read(read), .s_in(s_in), .s_out(s_out), .r_read(r_config), .r_load(r_config));
//clock_divider  d3 (.clock_in(clock_in), .clock_out(clock_out));
//fll_wrapper_2 #(.N(M)) d4 (.ref(ref_in), .reset(reset), .clk(clock_out), .upper(r_config[25:15]), .lower(r_config[14:4]), .ref_time(r_config[36:26]), .pwm(dac), .corner(corner), .lock(lock));
fll_wrapper_2 #(.N(M)) d5 (.ref(ref_in), .reset(reset), .clk(vco_in), .upper(r_config[29:20]), .lower(r_config[19:10]), .ref_time(r_config[9:0]), .dac(dac_tmp), .corner(corner_tmp), .lock(lock_tmp), .test(r_config[55]), .test_val(r_config[54:45]), .buffer_val(r_config[65:56]));
mux #(.N(3)) m1 (.sel(r_config[33]), .in0(corner_tmp), .in1(r_config[32:30]), .out(corner));//corner
mux #(.N(8)) m2 (.sel(r_config[44]), .in0(dac_tmp), .in1(r_config[43:34]), .out(dac));//dac
//mux #(.N(1)) m3 (.sel(r_config[46]), .in0(lock_tmp), .in1(r_config[45]), .out(lock));//lock
//mux #(.N(1)) m4 (.sel(r_config[47]), .in0(vco_1), .in1(vco_2), .out(mux_tmp1));
//mux #(.N(1)) m5 (.sel(r_config[47]), .in0(vco_3), .in1(vco_4), .out(mux_tmp2));
//mux #(.N(1)) m6 (.sel(r_config[48]), .in0(mux_tmp1), .in1(mux_tmp2), .out(vco_out));
//audiodac_dsmod #(.AB(5)) d6 (.audio_i(r_config[41:37]), .audio_rd_o(), .ds_o(bias), .ds_n_o(), .rst_n_i(~reset), .clk_i(ref_in), .mode_i(0), .volume_i(15), .osr_i(0));
//vco_core_8 core (.vdd(vdd), .vss(vss), .vb1(bias1), .vb2(bias2), .b0(corner[0]), .b1(corner[1]), .b2(corner[2]), .inv1(out1), .inv2(out2), .inv3(out3), .inv4(out4), .inv5(out5), .inv6(out6), .inv7(out7), .inv8(out8));
//assign shift_val = r_config;
assign slope_ctrl = r_config[68:66];
assign vbias1 = r_config[76:69];
assign vbias2 = r_config[84:77];
assign vbias3 = r_config[92:85];
endmodule