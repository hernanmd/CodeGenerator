accessing - csv
shTimestampedFilename

	^ '# Get timestamp
timestamp=`date -d "today" +"%Y%m%d%H%M%S"`
# Setup output file name
outputFile="$timestamp"
'