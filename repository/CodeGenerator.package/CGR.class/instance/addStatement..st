accessing - appending functions
addStatement: aString
	" Append aString to receiver's code stream "
	
	self codeStream 
		nextPutAll: aString.
	self nextPutTerminator.
