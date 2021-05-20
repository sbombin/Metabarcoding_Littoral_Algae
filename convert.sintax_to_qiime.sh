#!/bin/bash -l

for file in $(ls *aligned.fasta | rev | cut -c 7- | rev | uniq) 
do
grep '>' ${file}.fasta | tr ';' '\t' | sed 's/tax=//g' | sed 's/,/;/g' | sed 's/:/,/g'| sed 's/>//g' |  cut -f 1,2  > Taxonomy.${file}.qiime_format.txt
cat ${file}.fasta | cut -d ';' -f1  > ${file}.qiime_format.fasta
done
# end of script
