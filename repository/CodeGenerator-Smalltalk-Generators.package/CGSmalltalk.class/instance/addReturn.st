code-generation
addReturn
	" Add return character to the receiver's stream "

	self codeStream
		nextPut: $^;
		space