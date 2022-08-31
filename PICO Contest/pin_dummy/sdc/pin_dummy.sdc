###############################################################################
# Created by write_sdc
# Wed Aug 31 14:11:35 2022
###############################################################################
current_design pin_dummy
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 1000.0000 [get_ports {clk}]
set_clock_transition 0.1500 [get_clocks {clk}]
set_clock_uncertainty 0.2500 clk
set_propagated_clock [get_clocks {clk}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avdd}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {avss}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cvdd}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {cvss}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {dvdd}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {dvss}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {load}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {read}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {ref}]
set_input_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {s_in}]
set_output_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {out}]
set_output_delay 200.0000 -clock [get_clocks {clk}] -add_delay [get_ports {s_out}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {out}]
set_load -pin_load 0.0334 [get_ports {s_out}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {avdd}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {avss}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cvdd}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {cvss}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dvdd}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {dvss}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {load}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {read}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {ref}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {s_in}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
