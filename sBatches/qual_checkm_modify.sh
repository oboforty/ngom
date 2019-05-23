#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 03:30:00
#SBATCH -J rajmund_modify_binnings
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load CheckM/1.0.12

# everything above 10
checkm modify /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/data/combined_binning/combined_binning_14.fa /home/oboforty/out/modified_binning14.fa -o /home/oboforty/out/outliers.tsv
checkm modify /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/data/combined_binning/combined_binning_13.fa /home/oboforty/out/modified_binning13.fa -o /home/oboforty/out/outliers.tsv
checkm modify /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/data/combined_binning/combined_binning_7.fa /home/oboforty/out/modified_binning7.fa -o /home/oboforty/out/outliers.tsv
checkm modify /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/data/combined_binning/combined_binning_9.fa /home/oboforty/out/modified_binning9.fa -o /home/oboforty/out/outliers.tsv
checkm modify /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/data/combined_binning/combined_binning_1.fa /home/oboforty/out/modified_binning1.fa -o /home/oboforty/out/outliers.tsv
checkm modify /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/data/combined_binning/combined_binning_16.fa /home/oboforty/out/modified_binning16.fa -o /home/oboforty/out/outliers.tsv
checkm modify /home/oboforty/data/assembly/combined.final.contigs.fa /home/oboforty/data/combined_binning/combined_binning_26.fa /home/oboforty/out/modified_binning26.fa -o /home/oboforty/out/outliers.tsv
