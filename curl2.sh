while read line
do
	content=$(curl "https://taxonomy.jgi-psf.org/tax/simple/sc/accession/${line}")
	echo "$line,tax=$content"'\n'  
done 
