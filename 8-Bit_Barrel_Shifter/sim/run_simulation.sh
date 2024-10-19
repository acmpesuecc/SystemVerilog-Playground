#!/bin/bash

# Compile the design and testbench
vlog src/barrel_shifter.sv src/tb_barrel_shifter.sv

# Run the simulation
vsim -c -do "run -all; quit" tb_barrel_shifter
