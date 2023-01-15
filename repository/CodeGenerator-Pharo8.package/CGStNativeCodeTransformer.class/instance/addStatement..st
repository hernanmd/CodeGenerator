code-generation
addStatement: aString
	" Adds a statement aString to the receiver's source String "
	
	self codeStream nextPutAll: aString