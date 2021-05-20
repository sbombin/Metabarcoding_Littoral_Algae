#!/bin/bash -l

for file in $(ls *.filtr_n1.biom  | rev | cut -c 6- | rev | uniq) 
do
normalize_table.py -i ${file}.biom -a CSS -o ${file}.norml_css.biom
done
# end of script
