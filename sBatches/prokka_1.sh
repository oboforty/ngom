#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 02:00:00
#SBATCH -J rajmund_annotate_prokka1
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load prokka/1.12-12547ca

prokka --outdir /home/oboforty/tmp/prokka3 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_3.fa
prokka --outdir /home/oboforty/tmp/prokka23 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_23.fa
prokka --outdir /home/oboforty/tmp/prokka4 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_4.fa
prokka --outdir /home/oboforty/tmp/prokka8 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_8.fa
prokka --outdir /home/oboforty/tmp/prokka1 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning1.fa
prokka --outdir /home/oboforty/tmp/prokka14 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning14.fa

prokka --outdir /home/oboforty/tmp/prokka12 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_12.fa
prokka --outdir /home/oboforty/tmp/prokka19 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_19.fa
prokka --outdir /home/oboforty/tmp/prokka22 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_22.fa
prokka --outdir /home/oboforty/tmp/prokka18 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_18.fa
prokka --outdir /home/oboforty/tmp/prokka27 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_27.fa
prokka --outdir /home/oboforty/tmp/prokka13 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning13.fa

prokka --outdir /home/oboforty/tmp/prokka5 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_5.fa
prokka --outdir /home/oboforty/tmp/prokka11 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_11.fa
prokka --outdir /home/oboforty/tmp/prokka26 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning26.fa
prokka --outdir /home/oboforty/tmp/prokka21 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_21.fa
prokka --outdir /home/oboforty/tmp/prokka15 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_15.fa
prokka --outdir /home/oboforty/tmp/prokka25 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_25.fa

prokka --outdir /home/oboforty/tmp/prokka20 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_20.fa
prokka --outdir /home/oboforty/tmp/prokka10 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_10.fa
prokka --outdir /home/oboforty/tmp/prokka9 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning9.fa
prokka --outdir /home/oboforty/tmp/prokka2 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_2.fa
prokka --outdir /home/oboforty/tmp/prokka24 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_24.fa
prokka --outdir /home/oboforty/tmp/prokka17 --cpus 4 --addgenes --metagenome /home/oboforty/data/modified_binning/modified_binning_17.fa


prokka --outdir /home/oboforty/tmp/prokka16 --cpus 4 --addgenes --metagenome --kingdom Archaea /home/oboforty/data/modified_binning/modified_binning16.fa
prokka --outdir /home/oboforty/tmp/prokka6 --cpus 4 --addgenes --metagenome --kingdom Archaea /home/oboforty/data/modified_binning/modified_binning_6.fa
prokka --outdir /home/oboforty/tmp/prokka7 --cpus 4 --addgenes --metagenome --kingdom Archaea /home/oboforty/data/modified_binning/modified_binning7.fa
