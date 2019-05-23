#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 01:00:00
#SBATCH -J rajmund_mapping_bwa_site1
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load bwa/0.7.17
module load samtools/1.9

samtools sort -o /home/oboforty/out/mapping137/align3.sorted.bam /home/oboforty/out/mapping137/align3.bam
samtools sort -o /home/oboforty/out/mapping137/align23.sorted.bam /home/oboforty/out/mapping137/align23.bam
samtools sort -o /home/oboforty/out/mapping137/align4.sorted.bam /home/oboforty/out/mapping137/align4.bam
samtools sort -o /home/oboforty/out/mapping137/align8.sorted.bam /home/oboforty/out/mapping137/align8.bam
samtools sort -o /home/oboforty/out/mapping137/align1.sorted.bam /home/oboforty/out/mapping137/align1.bam
samtools sort -o /home/oboforty/out/mapping137/align14.sorted.bam /home/oboforty/out/mapping137/align14.bam
samtools sort -o /home/oboforty/out/mapping137/align12.sorted.bam /home/oboforty/out/mapping137/align12.bam
samtools sort -o /home/oboforty/out/mapping137/align19.sorted.bam /home/oboforty/out/mapping137/align19.bam
samtools sort -o /home/oboforty/out/mapping137/align22.sorted.bam /home/oboforty/out/mapping137/align22.bam
samtools sort -o /home/oboforty/out/mapping137/align18.sorted.bam /home/oboforty/out/mapping137/align18.bam
samtools sort -o /home/oboforty/out/mapping137/align27.sorted.bam /home/oboforty/out/mapping137/align27.bam
samtools sort -o /home/oboforty/out/mapping137/align13.sorted.bam /home/oboforty/out/mapping137/align13.bam
samtools sort -o /home/oboforty/out/mapping137/align5.sorted.bam /home/oboforty/out/mapping137/align5.bam
samtools sort -o /home/oboforty/out/mapping137/align11.sorted.bam /home/oboforty/out/mapping137/align11.bam
samtools sort -o /home/oboforty/out/mapping137/align26.sorted.bam /home/oboforty/out/mapping137/align26.bam
samtools sort -o /home/oboforty/out/mapping137/align21.sorted.bam /home/oboforty/out/mapping137/align21.bam
samtools sort -o /home/oboforty/out/mapping137/align15.sorted.bam /home/oboforty/out/mapping137/align15.bam
samtools sort -o /home/oboforty/out/mapping137/align25.sorted.bam /home/oboforty/out/mapping137/align25.bam
samtools sort -o /home/oboforty/out/mapping137/align20.sorted.bam /home/oboforty/out/mapping137/align20.bam
samtools sort -o /home/oboforty/out/mapping137/align10.sorted.bam /home/oboforty/out/mapping137/align10.bam
samtools sort -o /home/oboforty/out/mapping137/align9.sorted.bam /home/oboforty/out/mapping137/align9.bam
samtools sort -o /home/oboforty/out/mapping137/align2.sorted.bam /home/oboforty/out/mapping137/align2.bam
samtools sort -o /home/oboforty/out/mapping137/align24.sorted.bam /home/oboforty/out/mapping137/align24.bam
samtools sort -o /home/oboforty/out/mapping137/align17.sorted.bam /home/oboforty/out/mapping137/align17.bam
samtools sort -o /home/oboforty/out/mapping137/align16.sorted.bam /home/oboforty/out/mapping137/align16.bam
samtools sort -o /home/oboforty/out/mapping137/align6.sorted.bam /home/oboforty/out/mapping137/align6.bam
samtools sort -o /home/oboforty/out/mapping137/align7.sorted.bam /home/oboforty/out/mapping137/align7.bam



samtools sort -o /home/oboforty/out/mapping139/align3.sorted.bam /home/oboforty/out/mapping139/align3.bam
samtools sort -o /home/oboforty/out/mapping139/align23.sorted.bam /home/oboforty/out/mapping139/align23.bam
samtools sort -o /home/oboforty/out/mapping139/align4.sorted.bam /home/oboforty/out/mapping139/align4.bam
samtools sort -o /home/oboforty/out/mapping139/align8.sorted.bam /home/oboforty/out/mapping139/align8.bam
samtools sort -o /home/oboforty/out/mapping139/align1.sorted.bam /home/oboforty/out/mapping139/align1.bam
samtools sort -o /home/oboforty/out/mapping139/align14.sorted.bam /home/oboforty/out/mapping139/align14.bam
samtools sort -o /home/oboforty/out/mapping139/align12.sorted.bam /home/oboforty/out/mapping139/align12.bam
samtools sort -o /home/oboforty/out/mapping139/align19.sorted.bam /home/oboforty/out/mapping139/align19.bam
samtools sort -o /home/oboforty/out/mapping139/align22.sorted.bam /home/oboforty/out/mapping139/align22.bam
samtools sort -o /home/oboforty/out/mapping139/align18.sorted.bam /home/oboforty/out/mapping139/align18.bam
samtools sort -o /home/oboforty/out/mapping139/align27.sorted.bam /home/oboforty/out/mapping139/align27.bam
samtools sort -o /home/oboforty/out/mapping139/align13.sorted.bam /home/oboforty/out/mapping139/align13.bam
samtools sort -o /home/oboforty/out/mapping139/align5.sorted.bam /home/oboforty/out/mapping139/align5.bam
samtools sort -o /home/oboforty/out/mapping139/align11.sorted.bam /home/oboforty/out/mapping139/align11.bam
samtools sort -o /home/oboforty/out/mapping139/align26.sorted.bam /home/oboforty/out/mapping139/align26.bam
samtools sort -o /home/oboforty/out/mapping139/align21.sorted.bam /home/oboforty/out/mapping139/align21.bam
samtools sort -o /home/oboforty/out/mapping139/align15.sorted.bam /home/oboforty/out/mapping139/align15.bam
samtools sort -o /home/oboforty/out/mapping139/align25.sorted.bam /home/oboforty/out/mapping139/align25.bam
samtools sort -o /home/oboforty/out/mapping139/align20.sorted.bam /home/oboforty/out/mapping139/align20.bam
samtools sort -o /home/oboforty/out/mapping139/align10.sorted.bam /home/oboforty/out/mapping139/align10.bam
samtools sort -o /home/oboforty/out/mapping139/align9.sorted.bam /home/oboforty/out/mapping139/align9.bam
samtools sort -o /home/oboforty/out/mapping139/align2.sorted.bam /home/oboforty/out/mapping139/align2.bam
samtools sort -o /home/oboforty/out/mapping139/align24.sorted.bam /home/oboforty/out/mapping139/align24.bam
samtools sort -o /home/oboforty/out/mapping139/align17.sorted.bam /home/oboforty/out/mapping139/align17.bam
samtools sort -o /home/oboforty/out/mapping139/align16.sorted.bam /home/oboforty/out/mapping139/align16.bam
samtools sort -o /home/oboforty/out/mapping139/align6.sorted.bam /home/oboforty/out/mapping139/align6.bam
samtools sort -o /home/oboforty/out/mapping139/align7.sorted.bam /home/oboforty/out/mapping139/align7.bam
