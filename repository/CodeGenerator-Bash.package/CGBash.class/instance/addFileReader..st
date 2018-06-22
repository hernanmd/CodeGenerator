accessing - utilities
addFileReader: fileName
	" Add a code fragment to read fileName by line "

	self codeStream nextPutAll: 'while IFS='' read -r line || [[ -n "$line" ]]; do
    hw=`echo "$line"`
done < "$' , fileName , '"
'