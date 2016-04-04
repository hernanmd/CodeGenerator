accessing - utilities
addTimestampedFilename
	" Add a template fragment to set outputFile to a time stamped filename "

	self codeStream nextPutAll: '# Get timestamp
timestamp=`date -d "today" +"%Y%m%d%H%M%S"`
# Setup output file name
outputFile="$timestamp"
'