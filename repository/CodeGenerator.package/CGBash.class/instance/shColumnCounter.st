accessing - csv
shColumnCounter
	" Answer a <String> which counts columns from receiver's filenameId "
	
	^ 'echo -n "Countig columns. (Using ' , self fieldSeparator , ' as Field Separator)..."
columnCount=`head -n 1 ' , 
	self filenameId , 
	' | awk ''BEGIN {FS="' , 
	self fieldSeparator , 
	'"};{print NF}''`
echo ": $columnCount"
'
