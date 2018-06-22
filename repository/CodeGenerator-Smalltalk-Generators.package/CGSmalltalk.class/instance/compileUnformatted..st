code-generation-compilation
compileUnformatted: srcString
	" Private - Compile aSelector in the receiver's configured target class "
	
	self compileSource: (self formatSource: srcString).
