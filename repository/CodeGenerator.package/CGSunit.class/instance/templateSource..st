code-generation
templateSource: selector
	" Answer a <String> "

	^ String streamContents: [ : stream |
			stream
				nextPutAll: 'self assert: (self instance ';
				nextPutAll: (self messageSendBuilder buildMessageSend: selector); 
				nextPutAll: ').';
				cr. ]