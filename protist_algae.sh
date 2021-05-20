#!/bin/bash -l

for file in $(ls Taxonomy_*sw_150.*.txt   | rev | cut -c 5- | rev | uniq) 
do
line=$(awk -F'+' '{print $2}' ${file}.txt | awk -F"," '$1=$1' OFS="\t" | grep -e 'Rhodophyta' -e 'Bacillariophyta' -e 'Cercozoa' -e 'Charophyceae' -e 'Chlorarachniophyceae' -e 'Chlorokybophyceae' -e 'Chlorophyta' -e 'Chrysophyceae' -e 'Ciliophora' -e 'Coleochaetales' -e 'Coleochaetophyceae' -e 'Cryptophyta' -e 'Cyanobacteria' -e 'Dictyochophyceae' -e 'Dinophyceae' -e 'Euglenida' -e 'Eustigmatophyceae' -e 'Haptophyceae' -e 'Haptophyta' -e 'Klebsormidiophyceae' -e 'Mesostigmatophyceae' -e 'Mesotaeniaceae' -e 'Oomycetes' -e 'Pelagophyceae' -e 'Phaeophyceae' -e 'Phaeothamniophyceae' -e 'PX_clade' -e 'Raphidophyceae' -e 'Xanthophyceae' -e 'Zygnematophyceae' | wc -l)
echo $file'\t'$line 
done
# end of script
