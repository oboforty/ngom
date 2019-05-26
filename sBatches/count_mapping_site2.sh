#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:30:00
#SBATCH -J rajmund_count
#SBATCH --mail-type=ALL
#SBATCH --mail-user rajmund.csombordi@gmail.com

module load bioinfo-tools
module load htseq

htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align3.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka3/PROKKA_04262019.gff) > /home/oboforty/out/count139/count3.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align23.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka23/PROKKA_04262019.gff) > /home/oboforty/out/count139/count23.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align4.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka4/PROKKA_04262019.gff) > /home/oboforty/out/count139/count4.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align8.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka8/PROKKA_04262019.gff) > /home/oboforty/out/count139/count8.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align1.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka1/PROKKA_04262019.gff) > /home/oboforty/out/count139/count1.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align14.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka14/PROKKA_04262019.gff) > /home/oboforty/out/count139/count14.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align12.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka12/PROKKA_04262019.gff) > /home/oboforty/out/count139/count12.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align19.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka19/PROKKA_04262019.gff) > /home/oboforty/out/count139/count19.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align22.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka22/PROKKA_04262019.gff) > /home/oboforty/out/count139/count22.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align18.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka18/PROKKA_04262019.gff) > /home/oboforty/out/count139/count18.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align27.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka27/PROKKA_04262019.gff) > /home/oboforty/out/count139/count27.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align13.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka13/PROKKA_04262019.gff) > /home/oboforty/out/count139/count13.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align5.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka5/PROKKA_04262019.gff) > /home/oboforty/out/count139/count5.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align11.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka11/PROKKA_04262019.gff) > /home/oboforty/out/count139/count11.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align26.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka26/PROKKA_04262019.gff) > /home/oboforty/out/count139/count26.out

htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align21.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka21/PROKKA_04262019.gff) > /home/oboforty/out/count139/count21.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align15.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka15/PROKKA_04262019.gff) > /home/oboforty/out/count139/count15.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align25.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka25/PROKKA_04262019.gff) > /home/oboforty/out/count139/count25.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align20.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka20/PROKKA_04262019.gff) > /home/oboforty/out/count139/count20.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align10.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka10/PROKKA_04262019.gff) > /home/oboforty/out/count139/count10.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align9.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka9/PROKKA_04262019.gff) > /home/oboforty/out/count139/count9.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align2.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka2/PROKKA_04262019.gff) > /home/oboforty/out/count139/count2.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align24.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka24/PROKKA_04262019.gff) > /home/oboforty/out/count139/count24.out
htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align17.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka17/PROKKA_04262019.gff) > /home/oboforty/out/count139/count17.out

#htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align16.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka16/PROKKA_04262019.gff) > /home/oboforty/out/count139/count16.out
#htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align6.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka6/PROKKA_04262019.gff) > /home/oboforty/out/count139/count6.out
#htseq-count -f bam -r pos -t CDS -i ID --stranded=no /home/oboforty/out/mapping139/align7.sorted.bam <(sed '/##FASTA/Q' /home/oboforty/data/prokka_annotations/prokka7/PROKKA_04262019.gff) > /home/oboforty/out/count139/count7.out
