code-generation
generateMethod
	" Private - Write the code "

	self preGenerate.
	self compileCodeStream.
	self postGenerate.