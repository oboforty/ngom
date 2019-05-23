#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 03:30:00
#SBATCH -J rajmund_checkm_quality_binning
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load CheckM/1.0.12

checkm lineage_wf -t 4 -x fa --reduced_tree /home/oboforty/data/modified_binning /home/oboforty/out/checkm_modified

checkm unique -x fa /home/oboforty/data/combined_binning/
