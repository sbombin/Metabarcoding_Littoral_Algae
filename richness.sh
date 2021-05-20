for file in $(ls *.txt) 
do
	line=$(cat $file | cut -f4 | grep 'f:' | wc -l) 
	echo "$file\t$line"
done
# end of script
