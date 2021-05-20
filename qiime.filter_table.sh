#!/bin/bash -l

for file in $(ls *.biom  | rev | cut -c 6- | rev | uniq) 
do
filter_otus_from_otu_table.py -i ${file}.biom -o ${file}.filtr_n1.biom -n1
done
# end of script
