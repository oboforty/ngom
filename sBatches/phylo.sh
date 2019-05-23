#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J rajmund_phylophlan_modified
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

#module load phylophlan/0.99
#module load python/3.7.2
module load bioinfo-tools
module load biopython/1.73
module load FastTree/2.1.10
module load muscle/3.8.31
module load usearch/5.2.32

cd /home/oboforty/phylophlan

python phylophlan.py -i prokka_annotated --nproc 4
