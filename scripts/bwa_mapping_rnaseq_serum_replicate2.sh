#!/bin/bash

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 8:00:00
#SBATCH -J bwa_rna_serum_rep2
#SBATCH --mail-type=ALL
#SBATCH --mail-user Mohammad.Al-Jaff.5978@student.uu.se

module load bioinfo-tools
module load bwa
module load samtools

# cd to relevant place
cd /home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/serum_condition/mapped_replicate_2

# copy ref genome
cp /home/mohamma/genome_analysis/GenomeAnalysisProject/generated_data/canu_pacbio_assembly_relevant_output/efaecium.contigs.fasta .

# index the ref genome
bwa index efaecium.contigs.fasta
# run bwa mapping
bwa mem efaecium.contigs.fasta /home/mohamma/genome_analysis/GenomeAnalysisProject/data_links/rna_trimmed_reads/rnaseq_reads/serum_condition/replicate_2/trim_paired_ERR1797973_pass_1.fastq.gz /home/mohamma/genome_analysis/GenomeAnalysisProject/data_links/rna_trimmed_reads/rnaseq_reads/serum_condition/replicate_2/trim_paired_ERR1797973_pass_2.fastq.gz | samtools sort -O BAM -@ 2 -o bwa_rna_serum_rep2_.bam -
