#!/bin/bash -l
for file in $(ls *.fasta | rev | cut -c 7- | rev | uniq) 
do
count=$(grep '>' ${file}.fasta | wc -l)
echo "$file,$count" 
done
# end of script
