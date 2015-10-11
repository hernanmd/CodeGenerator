accessing
sourceString: aString
	" Set the receiver's source to aString "

	self codeStream 
		reset;
		nextPutAll: aString