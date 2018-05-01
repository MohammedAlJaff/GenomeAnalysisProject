#!/bin/bash

#SBATCH -A g2018003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 7:00:00
#SBATCH -J pacbio_genome_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user Mohammad.Al-Jaff.5978@student.uu.se

module load bioinfo-tools
module load canu

canu -p e_faecium -d /home/mohamma/genome_analysis/GenomeAnalysisProject/generated_data/pacbio_assembly genomeSize=3.5m -pacbio-raw /home/mohamma/genome_analysis/GenomeAnalysisProject/data_links/dna_raw_data/PacBio/m131023_233432_42174_c100519312550000001823081209281335_s1_X0.*.subreads.fastq.gz -pacbio-raw /home/mohamma/genome_analysis/GenomeAnalysisProject/data_links/dna_raw_data/PacBiom131024_200535_42174_c100563672550000001823084212221342_s1_p0.*.subreads.fastq.gz
