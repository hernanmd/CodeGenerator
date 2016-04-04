accessing - utilities
addFileReader
	" Add a code fragment to read a file by line "

	self codeStream nextPutAll: 'while IFS='' read -r line || [[ -n "$line" ]]; do
    hw=`echo "$line"`
done < "$filename"
'