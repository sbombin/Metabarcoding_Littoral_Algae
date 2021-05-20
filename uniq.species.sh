#!/bin/bash -l

for file in $(ls *metadata.txt  | rev | cut -c 5- | rev | uniq) 
do
line=$(awk -F";" '$1=$1' OFS="\t"  ${file}.txt | grep -e 'Rhodophyta' -e 'Bacillariophyta' -e 'Cercozoa' -e 'Charophyceae' -e 'Chlorarachniophyceae' -e 'Chlorokybophyceae' -e 'Chlorophyta' -e 'Chrysophyceae' -e 'Ciliophora' -e 'Coleochaetales' -e 'Coleochaetophyceae' -e 'Cryptophyta' -e 'Cyanobacteria' -e 'Dictyochophyceae' -e 'Dinophyceae' -e 'Euglenida' -e 'Eustigmatophyceae' -e 'Haptophyceae' -e 'Haptophyta' -e 'Klebsormidiophyceae' -e 'Mesostigmatophyceae' -e 'Mesotaeniaceae' -e 'Oomycetes' -e 'Pelagophyceae' -e 'Phaeophyceae' -e 'Phaeothamniophyceae' -e 'PX_clade' -e 'Raphidophyceae' -e 'Xanthophyceae' -e 'Zygnematophyceae' | grep -Eo 's:.{0,100}'  | cut -d_ -f-2  | grep -v '_sp.' |  grep -v '_cf.' | grep -v 'uncultured' | sort -u)
echo "$file\n$line" >  ${file}.uniq_species2.txt
done
# end of script
