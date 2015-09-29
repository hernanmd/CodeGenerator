code-generation
generateMethodBody
	" Private - Write the method body into the code stream "

	self codeStream nextPutAll: self sourceString
