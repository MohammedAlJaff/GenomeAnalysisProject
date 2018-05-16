#!/bin/bash

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 9:00:00
#SBATCH -J htseq_bhi123_serum23
#SBATCH --mail-type=ALL
#SBATCH --mail-user Mohammad.Al-Jaff.5978@student.uu.se

module load bioinfo-tools
module load htseq

cd /home/mohamma/genome_analysis/genome_analysis_project_data/htseq_bhi123_serum23_raw


python -m HTSeq.scripts.count -f bam -r pos -i ID -t CDS /home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/bhi_condition/mapped_replicate_1/bwa_rna_bhi_rep1_.bam /home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/bhi_condition/mapped_replicate_2/bwa_rna_bhi_rep2_.bam home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/bhi_condition/mapped_replicate_3/bwa_rna_bhi_rep3_.bam /home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/serum_condition/mapped_replicate_2/bwa_rna_serum_rep2_.bam /home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/serum_condition/mapped_replicate_3/bwa_rna_serum_rep3_.bam /home/mohamma/genome_analysis/GenomeAnalysisProject/generated_data/prokka_annotation_relevant_output/efaecium_wo_nt_seqs.gff > htseq_bhi123_serum23.txt
