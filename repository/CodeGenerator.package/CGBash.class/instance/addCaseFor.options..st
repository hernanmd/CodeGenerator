accessing - utilities
addCaseFor: varName options: aCollection
	" Generate a shell case template on varName with aCollection as options "
	
	self codeStream nextPutAll: (String streamContents: [ : stream | 
			stream
				nextPutAll: 'case "$' , varName , '" in';
				nextPutAll: (self shCaseOptionGenerator: aCollection);
				nextPutAll: '			
	*)
		printf "%s" "0" >> "$outputFile" 2>&1
	esac
' ])
