#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:40:00
#SBATCH -J rajmund_binning_combined
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load MetaBat/2.12.1


metabat2 -i /home/oboforty/data/assembly/combined.final.contigs.fa -o /home/oboforty/out/combined.binning