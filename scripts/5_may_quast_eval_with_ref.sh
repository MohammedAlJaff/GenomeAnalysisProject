#!/usr/bin/env bash

module load bioinfo-tools
module load quast

quast.py -o /home/mohamma/genome_analysis/GenomeAnalysisProject/generated_data/quast_eval_with_ref/ -R /home/mohamma/genome_analysis/GenomeAnalysisProject/ref_genome_zhang/ref_genome.fasta /home/mohamma/genome_analysis/GenomeAnalysisProject/generated_data/pacbio_assembly/e_faecium.contigs.fasta
