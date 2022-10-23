#!/usr/bin/bash
./minimap2/minimap2 -d ./minimap2-results/ref.mmi ./data/GCF_000005845.2_ASM584v2_genomic.fna
./minimap2/minimap2 -a ./minimap2-results/ref.mmi ./data/SRR12717711.fastq > ./minimap2-results/alignment.sam

./samtools-1.16.1/samtools view -S -b -o ./samtools-results/alignment.bam ./minimap2-results/alignment.sam
./samtools-1.16.1/samtools flagstat ./samtools-results/alignment.bam > ./samtools-results/flagstat.txt

./parse.py ./samtools-results/flagstat.txt

