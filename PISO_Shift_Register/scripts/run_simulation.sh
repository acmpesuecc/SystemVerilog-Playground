#!/bin/bash

# run_simulation.sh - Shell script to run the simulation

# Navigate to the project directory
cd $(dirname "$0")/..

# Run the ModelSim simulation script
vsim -c -do sim/simulation_run.do
