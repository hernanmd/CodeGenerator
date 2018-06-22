code-generation
generateMethod
	" Private - Write the code "

	self preGenerateMethod.
	self compileCodeStream.
	self postGenerateMethod.