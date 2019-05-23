#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:30:00
#SBATCH -J rajmund_analyze_binnings
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load CheckM/1.0.12

# compares modified and original binnings
checkm bin_compare -x fa -y fa /home/oboforty/data/assembly/combined.final.contigs.fa  /home/oboforty/data/combined_binning/ /home/oboforty/data/modified_binning/ /home/oboforty/tmp/bin_comparison.tsv

# qa plot
checkm bin_qa_plot -x fa /home/oboforty/data/modified_binning/ /home/oboforty/data/combined_binning /home/oboforty/tmp/modified_qa
checkm bin_qa_plot -x fa /home/oboforty/data/combined_binning/ /home/oboforty/data/combined_binning /home/oboforty/tmp/combined_qa
