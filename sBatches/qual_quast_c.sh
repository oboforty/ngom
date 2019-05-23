#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 03:30:00
#SBATCH -J rajmund_check_assembly_combined
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load quast


metaquast.py -o /home/oboforty/out/combined.asmcheck.txt /home/oboforty/data/assembly/combined.final.contigs.fa -1 /home/oboforty/data/raw_combined/combined_1.paired.trimmed.fastq.gz -2 /home/oboforty/data/raw_combined/combined_2.paired.trimmed.fastq.gz

