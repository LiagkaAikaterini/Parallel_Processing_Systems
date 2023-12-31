#!/bin/bash

#PBS -o dmm8.out
#PBS -e dmm8.err
#PBS -l walltime=01:00:00
#PBS -l nodes=dungani:ppn=24:cuda

export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
export CUDA_VISIBLE_DEVICES=2

gpu_kernels="3"
gpu_prog="./dmm_main"

cd /home/parallel/parlab20/a4/dmm-skeleton/cuda
echo "Benchmark started on $(date) in $(hostname)"
for i in $gpu_kernels; do
    GPU_KERNEL=$i $gpu_prog 2048 2048 2048
done
echo "Benchmark ended on $(date) in $(hostname)"
