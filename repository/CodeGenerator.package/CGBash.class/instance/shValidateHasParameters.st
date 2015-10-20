accessing - csv
shValidateHasParameters
	" If the script requires arameters, answer a <String> to validate condition "

	^ 'echo -n "Checking parameter is present..."
if [ $# -eq 0 ]
then
    echo "ERROR"
    echo "Usage: $(basename $0) inputfile.ext"
    exit 1
fi
echo "ok"
'