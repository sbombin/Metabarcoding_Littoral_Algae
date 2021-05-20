#!/bin/bash 
while read line
do
	esearch -db nuccore -query "$line" < /dev/null  | efetch  -format fasta
done < 28S_ids.txt 
