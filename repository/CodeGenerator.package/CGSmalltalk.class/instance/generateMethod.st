code-generation
generateMethod
	" Write the code "

	self preGenerate.
	self compile.
	self postGenerate.