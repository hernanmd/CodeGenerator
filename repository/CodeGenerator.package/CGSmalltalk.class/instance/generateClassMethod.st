code-generation
generateClassMethod
	" Write the code "

	self preGenerate.
	self compileInClass.
	self postGenerate.