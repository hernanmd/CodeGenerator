code-generation
dumpToBATFile: contents
	" Write contents to receiver's product file "

	(self product , '.bat') asFileReference writeStream
		nextPutAll: contents; 
		close