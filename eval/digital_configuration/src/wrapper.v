module wrapper #(parameter N=96, M=10) (
    input clk_in, s_in, read, load, reset,
    output s_out, debug0, debug1
    //input vco_1, vco_2, vco_3, vco_4,
    //output vco_out,
);
//divider=4bit, upper=10bit, lower=10bit, ref_time=10bit

wire[N-1:0] r_config;
wire[M-1:0] dac_tmp;
wire[2:0] corner_tmp;
wire ref_in_temp;
wire vco_in_temp;
wire [M-1:0] dac_temp;
wire [2:0] corner_temp;
wire lock_temp;

//clk_divider    d1(.clk_in(ref_in), .divider(r_config[3:0]), .clk_out(clk_out));
shiftregister  #(.N(N)) d2 (.clk(clk_in), .reset(reset), .load(load), .read(read), .s_in(s_in), .s_out(s_out), .r_read(r_config), .r_load(r_config));
fll_wrapper_2 #(.N(M)) d5 (.ref(ref_in_temp), .reset(reset), .clk(vco_in_temp), .upper(r_config[29:20]), .lower(r_config[19:10]), .ref_time(r_config[9:0]), .dac(dac_tmp), .corner(corner_tmp), .lock(lock_tmp), .test(r_config[57]), .test_val(r_config[56:47]), .buffer_val(r_config[67:58]));
mux #(.N(3)) m1 (.sel(r_config[33]), .in0(corner_tmp), .in1(r_config[32:30]), .out(corner_temp));//corner
mux #(.N(10)) m2 (.sel(r_config[44]), .in0(dac_tmp), .in1(r_config[43:34]), .out(dac_temp));//dac
mux #(.N(1)) m3 (.sel(r_config[46]), .in0(lock_tmp), .in1(r_config[45]), .out(lock_temp));//lock

assign debug0 = r_config[94];
assign debug1 = r_config[95];
//assign help1 = s_in;
//assign help2 = s_out;
//assign help3 = load;
//assign help4 = reset;

endmodule