accessing - csv
addHeaderRemover: lineCount
	" Answer a <String> which removes lineCount header lines from receiver's filenameId "
	
	self codeStream nextPutAll: 'echo -n "Removing header..."
tail -n +' , lineCount asString , ' "' , self filenameId , '" > "$outputFile.t1"
echo "ok"
'
