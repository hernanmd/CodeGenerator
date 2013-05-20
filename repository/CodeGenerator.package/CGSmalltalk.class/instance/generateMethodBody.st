code-generation
generateMethodBody
	" Private - Write the method body into the code stream "

	codeStream
		nextPutAll: '^ ''';
		nextPutAll: ( self validateString: self sourceString )