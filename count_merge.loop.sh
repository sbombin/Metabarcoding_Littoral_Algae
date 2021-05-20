for file in $(ls *nohup*.txt)
do
	while read line
	do
		content=$(grep -A 5 ${line} ${file} | grep -E 'Pairs|Merged' | sed 's/^[ ]*//'g | cut -d ' ' -f 1)
		echo $line'\t'$content | tr ' ' \\t >> Count_merge.${file} 
	done < ID_Samples.txt 
done

