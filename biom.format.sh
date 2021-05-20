#!/bin/bash -l

for file in $(ls *.map.format.uc   | rev | cut -c 4- | rev | uniq) 
do
biom from-uc -i ${file}.uc -o ${file}.biom 
done
# end of script
