#!/bin/bash -l
for file in $(ls *.fasta  | rev | cut -c 7- | rev | uniq) 
do
usearch11.0.667_i86osx32 -fastx_info ${file}.fasta  -output ${file}.info.txt 
done
# end of script
