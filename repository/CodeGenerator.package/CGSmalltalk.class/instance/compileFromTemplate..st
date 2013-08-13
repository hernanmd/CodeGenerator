code-generation
compileFromTemplate: aSelector
	" Private - Compile aSelector in the receiver's configured target class "
	
	self setSourceAsCode.
	self compile: (self sourceCodeAt: aSelector)
