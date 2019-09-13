code-generation
dumpToBATFile: contents
	" Write contents to receiver's product file "

	| fileName |
	
	fileName := self product , '.bat'.
	fileName asFileReference writeStream
		nextPutAll: contents; 
		close