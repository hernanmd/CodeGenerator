initialize-release
initialize
	" Private - Initialize receiver's settings "
	
	super initialize.
	self initializeCodeStream.
	self setSourceAsText.	
	cleanTarget := false.
