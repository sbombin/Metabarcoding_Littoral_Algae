#!/bin/bash -l

for file in $(ls *.fastq | rev | cut -c 7- | rev | uniq) 
do
usearch11.0.667_i86osx32 -fastq_filter ${file}.fastq  -fastaout ${file}.fasta 
done
# end of script
