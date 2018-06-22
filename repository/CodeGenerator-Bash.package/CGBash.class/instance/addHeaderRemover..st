accessing - csv
addHeaderRemover: lineCount
	" Answer a <String> which removes lineCount header lines from receiver's filenameId "
	
	self codeStream 
		nextPutAll: 'echo -n "Removing header..."
tail -n +';
		nextPutAll: lineCount asString;
		nextPutAll: ' "' , self filenameId , '" > "$outputFile.t1"
echo "ok"
'
