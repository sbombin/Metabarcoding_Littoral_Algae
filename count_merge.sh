while read line
do
	content=$(grep -A 10 ${line} merg.wind.4-15.nohup.txt | grep -E 'Pairs|Merged' | sed 's/^[ ]*//'g | cut -d ' ' -f 1)
	echo $line'\t'$content | tr ' ' \\t 
done 
