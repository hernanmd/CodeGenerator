code-generation
addMethodBody: aString
	" Append aString to the receiver's code stream. Assumes a selector/comments already has been added to the code stream "
	
	self addReturn.
	self codeStream nextPutAll: aString asSourceCode surroundedBySingleQuotes.
