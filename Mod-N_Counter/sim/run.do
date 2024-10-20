# File: sim/run.do

# Create work library
vlib work

# Compile design and testbench
vlog ../rtl/mod_n_counter.sv
vlog ../tb/mod_n_counter_tb.sv

# Start simulation
vsim -novopt work.mod_n_counter_tb

# Add waves
add wave sim:/mod_n_counter_tb/*

# Run simulation
run -all