#!/bin/bash -l

for file in $(ls *.relabeled.fasta | rev | cut -c 7- | rev | uniq) 
do
vsearch --usearch_global ${file}.fasta --db Samples.28S_all.4-20.combined.relabeled.filtered.uniq.uniq-v_150.otu.fasta   --id 0.97 --uc ${file}.uniq-v_150.otu.lsu.map.uc   --threads 4
done
# end of script
