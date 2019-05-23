#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 07:30:00
#SBATCH -J rajmund_example_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load megahit


megahit -1 /home/oboforty/thrash/DNA_trimmed/SRR4342129_1.paired.trimmed.fastq.gz -2 /home/oboforty/thrash/DNA_trimmed/SRR4342129_2.paired.trimmed.fastq.gz -t 4 -o megahit_result_SRR4342129 --kmin-1pass --k-min 65 --k-max 105 --k-step 10


