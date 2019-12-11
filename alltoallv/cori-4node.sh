#!/bin/bash -l

#SBATCH -q debug
#SBATCH -C knl
#SBATCH -A m1982
#SBATCH -t 00:30:00

#SBATCH -N 4
#SBATCH -J alltoallv-cori-4nodes
#SBATCH -o alltoallv-cori-4nodes.o%j

srun -N 4 --ntasks-per-node 64 ./alltoallv-test 0.001 10