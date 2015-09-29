code-generation-compilation
compileCodeStream
	" Private - Compile receiver's code stream in configured target class "

	self compileSource: self codeStream contents.

