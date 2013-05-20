code-generation
compileFromSource: sourceString
	" Private - Compile aSelector in the receiver's configured target class "
	
	self compile: ( self validateSource: sourceString )