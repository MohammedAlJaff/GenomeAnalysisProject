

module load bioinfo-tools
module load htseq


python -m HTSeq.scripts.count -f bam -r pos -i ID -t CDS /home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/bhi_condition/mapped_replicate_1/bwa_rna_bhi_rep1_.bam /home/mohamma/genome_analysis/GenomeAnalysisProject/generated_data/prokka_annotation_relevant_output/efaecium_wo_nt_seqs.gff > test_rep1.txt
