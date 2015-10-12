code-generation
buildMessageSignature: aSymbol repeat: paramNumber
	" Answer a <String> with the signature aSymbol appended paramNumber times "
	
	^ (self generateJoin: ' with: para' repeat: paramNumber) allButFirst

	