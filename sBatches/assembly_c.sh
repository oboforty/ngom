#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 09:30:00
#SBATCH -J rajmund_assembly_combined
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load megahit


megahit -1 /home/oboforty/data/combined/combined_1.paired.trimmed.fastq.gz -2 /home/oboforty/data/combined/combined_2.paired.trimmed.fastq.gz -t 4 -o megahit_result_combined --kmin-1pass --k-min 65 --k-max 105 --k-step 10
