#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J rajmund_combine_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools

python combine_samples.py