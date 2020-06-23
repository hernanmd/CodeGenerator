initialization
initialize
	" Private - Initialize receiver's settings "
	
	super initialize.
	parserClass := self defaultParserClass.	
	self initializeCodeStream.
	self setSourceAsText.	
	shouldCleanTarget := false.
	shouldCleanAllTargetMethods := false.