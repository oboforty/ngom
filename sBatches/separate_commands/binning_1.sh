#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:30:00
#SBATCH -J rajmund_example_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load MetaBat/2.12.1


metabat2 -i /home/oboforty/data/assembly/SRR4342129.final.contigs.fa -o /home/oboforty/out/SRR4342129.binning