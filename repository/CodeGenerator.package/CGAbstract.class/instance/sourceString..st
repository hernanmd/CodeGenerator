accessing
sourceString: aString
	" Reset and configure the receiver's source to aString "

	self codeStream 
		reset;
		nextPutAll: aString