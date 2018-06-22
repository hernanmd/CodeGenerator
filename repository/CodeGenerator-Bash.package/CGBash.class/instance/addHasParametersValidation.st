accessing - utilities
addHasParametersValidation
	" If the script requires parameters, answer a <String> to validate condition "

	self codeStream nextPutAll: 'echo -n "Checking parameter is present..."
if [ $# -eq 0 ]
then
    echo "ERROR"
    echo "Usage: $(basename $0) inputfile.ext"
    exit 1
fi
echo "ok"
'