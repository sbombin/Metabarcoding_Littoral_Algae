#!/bin/bash -l

for file in $(ls *.map.uc  | rev | cut -c 4- | rev | uniq) 
do
awk 'BEGIN{FS=OFS="\t"} {gsub(/\./, "_", $9)} 1'  ${file}.uc > ${file}.format.uc 
done
# end of script
