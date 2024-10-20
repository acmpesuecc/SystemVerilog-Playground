# simulation_run.do - ModelSim Simulation Script

# Compile the source and testbench files
vlib work
vlog ../src/PISO.sv
vlog tb_PISO.sv

# Run the simulation
vsim tb_PISO
run -all

# Exit simulation
quit
