code generation
dumpToFile: fileName contents: aString
	" See superimplementor's comment "
	
	fileName asFileReference writeStream
		nextPutAll: aString; 
		close