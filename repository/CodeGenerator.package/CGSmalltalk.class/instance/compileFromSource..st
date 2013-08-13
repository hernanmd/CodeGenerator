code-generation
compileFromSource: srcString
	" Private - Compile aSelector in the receiver's configured target class "
	
	self compile: (self validateSource: srcString)