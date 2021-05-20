#!/bin/bash -l
for file in $(ls *.relabeled.fastq | rev | cut -c 7- | rev | uniq) 
do
usearch11.0.667_i86osx32 -fastq_filter ${file}.fastq -fastq_minlen 145  -fastaout ${file}.l-145.fasta
done
# end of script
