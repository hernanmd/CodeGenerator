code-generation
generateMethodBody
	" Private - Write the method body into the code stream "

	self halt.
	self codeStream
		nextPutAll: '^ ''';
		nextPutAll: (self doubleQuote: self sourceString)