accessing - utilities
shValidateInputFile
	" If input file is the first parameter, answer a <String> to check is a file "

	^ 'echo -n "Check input file is a file..."
inputFile=$1
if [ ! -f "$inputFile" ]; then
	echo "ERROR"
	echo "$inputFile not a file"
	exit 2
fi
echo "ok" 
'