code-generation
generateMethodBody
	" Private - Write the method body into the code stream "

	self codeStream
		nextPutAll: '^ ''';
		nextPutAll: (self validateString: self sourceString)