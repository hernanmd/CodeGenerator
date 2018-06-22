code-generation
generateClassMethod
	" Write the code "

	self preGenerateMethod.
	self compileInClass.
	self postGenerateMethod.