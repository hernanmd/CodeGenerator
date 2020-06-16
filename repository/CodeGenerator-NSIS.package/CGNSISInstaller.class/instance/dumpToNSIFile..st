code-generation
dumpToNSIFile: contents
	" Write contents to receiver's product file "

	'InstallerScript.nsi' asFileReference writeStream
		"wantsLineEndConversion: true;"
		nextPutAll: contents; 
		close