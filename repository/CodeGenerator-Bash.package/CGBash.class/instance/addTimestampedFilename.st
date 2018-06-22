accessing - utilities
addTimestampedFilename
	" Add a template fragment to set outputFile to a time stamped filename "

	self codeStream nextPutAll: '# Get timestamp
timestamp=`date +"%Y-%m-%d_%H-%M-%S"`
# Setup output file name
outputFile="$timestamp"
'