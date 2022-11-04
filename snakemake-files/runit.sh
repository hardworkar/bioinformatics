### to clean
python3 -m snakemake -c1

### to generate FastQC report
python3 -m snakemake -c1 --dag ../SRR12717711_qc_report.html | dot -Tsvg > ../qc_report_dag.svg

### to generate FastQC report
python3 -m snakemake -c1 ../SRR12717711_qc_report.html

### to draw dag of full pipeline
python3 -m snakemake -c1 --dag ../GCF_000005845.2_ASM584v2_genomic_SRR12717711.vcf | dot -Tsvg > ../full_dag.svg

### to actually run full pipeline
python3 -m snakemake -c1 ../GCF_000005845.2_ASM584v2_genomic_SRR12717711.vcf
