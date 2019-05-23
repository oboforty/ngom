#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J rajmund_checkm_modify_binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load CheckM/1.0.12

# this will split some problematic bins, see if they are improved
checkm tetra -t 4 /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/out/tetra_c.tsv


checkm outliers /home/oboforty/data/checkm_c /home/oboforty/data/combined_binning /home/oboforty/out/tetra_c.tsv /home/oboforty/out/outliers.tsv -x fa
