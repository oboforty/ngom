#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:20:00
#SBATCH -J rajmund_check_assembly_1
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load quast


metaquast.py -o /home/oboforty/out/SRR4342129.asmcheck.txt /home/oboforty/data/assembly/SRR4342129.final.contigs.fa -1 /home/oboforty/thrash/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz -2 /home/oboforty/thrash/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz

