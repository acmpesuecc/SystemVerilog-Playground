# File: syn/mod_n_counter.tcl

# Read the RTL design
read_verilog ../rtl/mod_n_counter.sv

# Set the top module
current_design mod_n_counter

# Set clock constraints (adjust as needed)
create_clock -name "clk" -period 10 [get_ports clk]

# Synthesize the design
compile

# Report timing and area
report_timing
report_area

# Write out the synthesized netlist
write -format verilog -output mod_n_counter_netlist.v
write_sdc mod_n_counter.sdc