#!/bin/bash
#SBATCH --qos=regular
#SBATCH --time=420
#SBATCH --constraint=cpu
#SBATCH --nodes=1                # Use only one node

# Run the Python scripts using a single srun
srun --ntasks=20 --cpus-per-task=12 \
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-42.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-41.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-41.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-40.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-40.0.yaml' &\
    python3 run_sim.py 
'/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-39.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-39.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-38.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-38.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-17.5_-37.5.yaml' &\
    
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-42.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-41.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-41.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-40.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-40.0.yaml' &\
    python3 run_sim.py 
'/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-39.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-39.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-38.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-38.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-18.0_-37.5.yaml' &\

wait  # Wait for all background jobs to finish


# Capture the end times
#end_time=$(date +%s)

# Calculate and print the total runtime
#total_runtime=$((end_time - start_time))
#echo "Total runtime: $total_runtime seconds"
