#!/bin/bash
#SBATCH --qos=regular
#SBATCH --time=240
#SBATCH --constraint=cpu
#SBATCH --nodes=1                # Use only one node

# Run the Python scripts using a single srun
srun --ntasks=10 --cpus-per-task=25 \
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-42.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-41.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-41.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-40.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-40.0.yaml' &\
    python3 run_sim.py 
'/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-39.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-39.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-38.5.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-38.0.yaml' &\
    python3 run_sim.py '/global/homes/o/ocamacho/pydfCSR_sims/config_files/W_chicane_config_base_-21.5_-37.5.yaml' &\
    

wait  # Wait for all background jobs to finish