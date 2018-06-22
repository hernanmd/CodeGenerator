code-generation
dumpToFile: contents
	" Write contents to receiver's product file "

	'README.md' asFileReference writeStream
		nextPutAll: contents; 
		close