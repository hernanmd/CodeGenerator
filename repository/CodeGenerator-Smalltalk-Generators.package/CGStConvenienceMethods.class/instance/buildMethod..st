code-generation
buildMethod: paramNumber
	" Answer a <String> of a convenience method by concatenating the template signature and body paramNumber of times "
	
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: self targetSelector asString;
			nextPutAll: (self messageSignatureBuilder buildMessageSignature: #with: repeat: paramNumber);
			cr; crtab;
			nextPutAll: self returnOperatorOrEmpty;
			nextPutAll: ' self ';
			nextPutAll: self targetSelector asString;
			nextPutAll: (self messageSendBuilder buildMessageSend: #with: repeat: paramNumber + 1)
		]