
python -m HTSeq.scripts.count -f bam -r pos -i ID

/home/mohamma/genome_analysis/genome_analysis_project_data/bwa_rnaseq_raw_output/bhi_condition/mapped_replicate_1/bwa_rna_bhi_rep1_.bam

<gff_file> > test_rep1.


htseq-count -f =bam --ida ID  --type=CDS --order=pos --idattr=Name ${sample}.bam Trinity_all_X.gff3 > ${sample}_htseq_counts.txt >
