accessing - csv
addColumnCounter
	" Answer a <String> which counts columns from receiver's filenameId "
	
	self codeStream 
		nextPutAll: 'echo -n "Countig columns. (Using ';
		nextPutAll: self fieldSeparator;
		nextPutAll: ' as Field Separator)..."
columnCount=`head -n 1 ';
		nextPutAll: self filenameId;
		nextPutAll: ' | awk ''BEGIN {FS="';
		nextPutAll: self fieldSeparator;
		nextPutAll: '"};{print NF}''`
echo ": $columnCount"
'
