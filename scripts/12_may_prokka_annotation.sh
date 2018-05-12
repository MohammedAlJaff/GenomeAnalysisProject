#!/bin/bash
module load bioinfo-tools
module load prokka

prokka --outdir /home/mohamma/genome_analysis/genome_analysis_project_data/prokka_annotation_raw_output --prefix efaecium /home/mohamma/genome_analysis/GenomeAnalysisProject/generated_data/canu_pacbio_assembly_relevant_output/efaecium.contigs.fasta
