testing
canConfigPath: fullPathString
	" Private - Check and set the current path to fullPathString,
	Answer <true> if fullPathString is a valid path and can be set "

	fullPath := fullPathString
		ifNil: [ self promptDirectory ]
		ifNotNil: [ fullPathString asFileReference ].
	^ fullPath isNotNil and: [ fullPath asFileReference isDirectory ]