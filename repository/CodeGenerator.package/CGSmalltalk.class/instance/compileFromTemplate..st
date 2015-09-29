code-generation-compilation
compileFromTemplate: aSelector
	" Private - Compile aSelector in the receiver's configured target class "
	
	self setSourceAsCode.
	self compileSource: (self sourceCodeAt: aSelector)
