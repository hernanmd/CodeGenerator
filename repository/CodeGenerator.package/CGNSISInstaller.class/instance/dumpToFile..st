code-generation
dumpToFile: contents
	" Write contents to receiver's product file "

	| fileName |
	
	fileName := self product , '.nsi'.
	fileName asFileReference writeStream
		nextPutAll: contents; 
		close