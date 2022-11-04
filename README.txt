# Assignment 4

1. Escherichia coli: https://www.ncbi.nlm.nih.gov/sra/SRX9196450

2. bash-script: run.sh

3. samtools flagstat res: samtools-results/GCF_000005845.2_ASM584v2_genomic_SRR12717711.txt

4. python parser script: parser.py

5. all temporary files in *-results/ folders

6.
## Snakemake Setup

to install & run:
1) install python3
2) install pip3
3) pip3 install snakemake
4) write your Snakemake file according to https://snakemake.readthedocs.io/en/stable/tutorial/basics.html
5) python3 -m snakemake -c1 {your_goal}

## Snakemake Run

cd snakemake-files
./runit.sh

7. snakemake-files/Snakemake
8. Report generated with pipeline: GCF_000005845.2_ASM584v2_genomic_SRR12717711_report.txt (obsolete, now in console)

10. snakemake-files/Snakemake
11. Report generated with pipeline: GCF_000005845.2_ASM584v2_genomic_SRR12717711_report.txt (obsolete, now in console)
12. snakemake-files/.snakemake/log (pick latest one)

13. full_dag.svg, qc_report_dag.svg

14. command for generating those file can be found in ./snakemake-files/runit.sh

full_dag.svg differs slightly from one in Assignment 4, cause "if-statement" is implemented by hand:
parse_flagstat_result rule calls ./parse.py, which will log parsed result and, if it is > 90%, will
write special file *.ok. This file is a dependency for samtools_sort rule. If parsed results was < 90%,
samtools_sort won't be executed.

also QC-report generation is fully separated and can be use as a standalone goal (see ./snakemake-files/runit.sh)



