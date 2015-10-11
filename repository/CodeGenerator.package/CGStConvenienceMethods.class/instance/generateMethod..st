accessing
generateMethod: paramNumber
	" Answer a <String> of a convenience method by concatenating the template signature and body paramNumber of times "
	
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: (self generateJoin: ' with: nil' repeat: paramNumber);
			cr; crtab;
			nextPutAll: (self messageSendBuilder buildMessageSend: #with: repeat: paramNumber)
		]