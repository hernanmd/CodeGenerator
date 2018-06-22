testing
canConfigPath: fullPathString
	" Private - Check and set the current path to fullPathString,
	Answer <true> if fullPathString is a valid path and can be set "
	
	fullPath := fullPathString isNil
			ifTrue: [ self promptDirectory ]
			ifFalse: [ fullPathString asFileReference ].
	^ (fullPath notNil and: [ fullPath asFileReference isDirectory ])
			