#!/bin/bash -l

for file in $(ls Taxonomy_*.txt  | rev | cut -c 5- | rev | uniq) 
do
cut -f 1,4  ${file}.txt | grep -e 'Rhodophyta' -e 'Bacillariophyta' -e 'Cercozoa' -e 'Charophyceae' -e 'Chlorarachniophyceae' -e 'Chlorokybophyceae' -e 'Chlorophyta' -e 'Chrysophyceae' -e 'Ciliophora' -e 'Coleochaetales' -e 'Coleochaetophyceae' -e 'Cryptophyta' -e 'Cyanobacteria' -e 'Dictyochophyceae' -e 'Dinophyceae' -e 'Euglenida' -e 'Eustigmatophyceae' -e 'Haptophyceae' -e 'Haptophyta' -e 'Klebsormidiophyceae' -e 'Mesostigmatophyceae' -e 'Mesotaeniaceae' -e 'Oomycetes' -e 'Pelagophyceae' -e 'Phaeophyceae' -e 'Phaeothamniophyceae' -e 'PX_clade' -e 'Raphidophyceae' -e 'Xanthophyceae' -e 'Zygnematophyceae' | grep -Eo '.{0,150}s:.{0,100}'  | cut -d_ -f-2  | grep -v '_sp.' |  grep -v '_cf.' | grep -v 'uncultured' | cut -f1 > Species_OTU_ID.${file}.txt
done
# end of script
