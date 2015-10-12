code-generation
templateSource: selector
	" Answer a <String> with generated method body "

	^ String streamContents: [ : stream |
			stream
				nextPutAll: 'self assert: (self instance ';
				nextPutAll: (self messageSendBuilder buildMessageSend: selector); 
				nextPutAll: ').';
				cr. ]