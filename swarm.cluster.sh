#!/bin/bash -l
for file in $(ls *.uniq-v-sw_*  | rev | cut -c 7- | rev | uniq) 
do
~/Desktop/Soft/swarm ${file}.fasta -t 4 -f -z  -o ${file}.otu-sw.txt -w ${file}.otu-sw.fasta -s ${file}.stats-sw.txt
done
# end of script
