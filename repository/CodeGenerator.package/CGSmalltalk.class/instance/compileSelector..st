code-generation-compilation
compileSelector: selectorString
	" Private - Compile the selectorString in the receiver's targetClass "

	self compileSource: selectorString trimBoth.