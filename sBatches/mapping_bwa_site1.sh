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

bwa index /home/oboforty/data/modified_binning/modified_binning_3.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_3.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align3.sam
samtools view -Sb /home/oboforty/out/mapping137/align3.sam > /home/oboforty/out/mapping137/align3.bam
rm /home/oboforty/out/mapping137/align3.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_23.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_23.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align23.sam
samtools view -Sb /home/oboforty/out/mapping137/align23.sam > /home/oboforty/out/mapping137/align23.bam
rm /home/oboforty/out/mapping137/align23.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_4.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_4.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align4.sam
samtools view -Sb /home/oboforty/out/mapping137/align4.sam > /home/oboforty/out/mapping137/align4.bam
rm /home/oboforty/out/mapping137/align4.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_8.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_8.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align8.sam
samtools view -Sb /home/oboforty/out/mapping137/align8.sam > /home/oboforty/out/mapping137/align8.bam
rm /home/oboforty/out/mapping137/align8.sam

bwa index /home/oboforty/data/modified_binning/modified_binning1.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning1.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align1.sam
samtools view -Sb /home/oboforty/out/mapping137/align1.sam > /home/oboforty/out/mapping137/align1.bam
rm /home/oboforty/out/mapping137/align1.sam

bwa index /home/oboforty/data/modified_binning/modified_binning14.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning14.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align14.sam
samtools view -Sb /home/oboforty/out/mapping137/align14.sam > /home/oboforty/out/mapping137/align14.bam
rm /home/oboforty/out/mapping137/align14.sam


bwa index /home/oboforty/data/modified_binning/modified_binning_12.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_12.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align12.sam
samtools view -Sb /home/oboforty/out/mapping137/align12.sam > /home/oboforty/out/mapping137/align12.bam
rm /home/oboforty/out/mapping137/align12.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_19.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_19.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align19.sam
samtools view -Sb /home/oboforty/out/mapping137/align19.sam > /home/oboforty/out/mapping137/align19.bam
rm /home/oboforty/out/mapping137/align19.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_22.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_22.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align22.sam
samtools view -Sb /home/oboforty/out/mapping137/align22.sam > /home/oboforty/out/mapping137/align22.bam
rm /home/oboforty/out/mapping137/align22.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_18.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_18.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align18.sam
samtools view -Sb /home/oboforty/out/mapping137/align18.sam > /home/oboforty/out/mapping137/align18.bam
rm /home/oboforty/out/mapping137/align18.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_27.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_27.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align27.sam
samtools view -Sb /home/oboforty/out/mapping137/align27.sam > /home/oboforty/out/mapping137/align27.bam
rm /home/oboforty/out/mapping137/align27.sam

bwa index /home/oboforty/data/modified_binning/modified_binning13.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning13.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align13.sam
samtools view -Sb /home/oboforty/out/mapping137/align13.sam > /home/oboforty/out/mapping137/align13.bam
rm /home/oboforty/out/mapping137/align13.sam


bwa index /home/oboforty/data/modified_binning/modified_binning_5.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_5.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align5.sam
samtools view -Sb /home/oboforty/out/mapping137/align5.sam > /home/oboforty/out/mapping137/align5.bam
rm /home/oboforty/out/mapping137/align5.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_11.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_11.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align11.sam
samtools view -Sb /home/oboforty/out/mapping137/align11.sam > /home/oboforty/out/mapping137/align11.bam
rm /home/oboforty/out/mapping137/align11.sam

bwa index /home/oboforty/data/modified_binning/modified_binning26.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning26.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align26.sam
samtools view -Sb /home/oboforty/out/mapping137/align26.sam > /home/oboforty/out/mapping137/align26.bam
rm /home/oboforty/out/mapping137/align26.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_21.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_21.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align21.sam
samtools view -Sb /home/oboforty/out/mapping137/align21.sam > /home/oboforty/out/mapping137/align21.bam
rm /home/oboforty/out/mapping137/align21.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_15.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_15.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align15.sam
samtools view -Sb /home/oboforty/out/mapping137/align15.sam > /home/oboforty/out/mapping137/align15.bam
rm /home/oboforty/out/mapping137/align15.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_25.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_25.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align25.sam
samtools view -Sb /home/oboforty/out/mapping137/align25.sam > /home/oboforty/out/mapping137/align25.bam
rm /home/oboforty/out/mapping137/align25.sam


bwa index /home/oboforty/data/modified_binning/modified_binning_20.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_20.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align20.sam
samtools view -Sb /home/oboforty/out/mapping137/align20.sam > /home/oboforty/out/mapping137/align20.bam
rm /home/oboforty/out/mapping137/align20.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_10.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_10.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align10.sam
samtools view -Sb /home/oboforty/out/mapping137/align10.sam > /home/oboforty/out/mapping137/align10.bam
rm /home/oboforty/out/mapping137/align10.sam

bwa index /home/oboforty/data/modified_binning/modified_binning9.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning9.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align9.sam
samtools view -Sb /home/oboforty/out/mapping137/align9.sam > /home/oboforty/out/mapping137/align9.bam
rm /home/oboforty/out/mapping137/align9.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_2.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_2.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align2.sam
samtools view -Sb /home/oboforty/out/mapping137/align2.sam > /home/oboforty/out/mapping137/align2.bam
rm /home/oboforty/out/mapping137/align2.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_24.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_24.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align24.sam
samtools view -Sb /home/oboforty/out/mapping137/align24.sam > /home/oboforty/out/mapping137/align24.bam
rm /home/oboforty/out/mapping137/align24.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_17.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_17.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align17.sam
samtools view -Sb /home/oboforty/out/mapping137/align17.sam > /home/oboforty/out/mapping137/align17.bam
rm /home/oboforty/out/mapping137/align17.sam

bwa index /home/oboforty/data/modified_binning/modified_binning16.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning16.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align16.sam
samtools view -Sb /home/oboforty/out/mapping137/align16.sam > /home/oboforty/out/mapping137/align16.bam
rm /home/oboforty/out/mapping137/align16.sam

bwa index /home/oboforty/data/modified_binning/modified_binning_6.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning_6.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align6.sam
samtools view -Sb /home/oboforty/out/mapping137/align6.sam > /home/oboforty/out/mapping137/align6.bam
rm /home/oboforty/out/mapping137/align6.sam

bwa index /home/oboforty/data/modified_binning/modified_binning7.fa
bwa mem -t 4 /home/oboforty/data/modified_binning/modified_binning7.fa /home/oboforty/data/RNA_trimmed/SRR4342137.1.fastq.gz /home/oboforty/data/RNA_trimmed/SRR4342137.2.fastq.gz > /home/oboforty/out/mapping137/align7.sam
samtools view -Sb /home/oboforty/out/mapping137/align7.sam > /home/oboforty/out/mapping137/align7.bam
rm /home/oboforty/out/mapping137/align7.sam

