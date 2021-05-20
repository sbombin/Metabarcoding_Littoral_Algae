#!/bin/bash -l

for file in $(ls *merged.raw.fastq | rev | cut -c 17- | rev | uniq) 
do
cat  ${file}* > ${file}_raw.combined.fastq 
done
# end of script
