accessing
userComment
	" Answer a <String> with the method comment configured by the user "

	^ userComment
		ifNotNil: [ :arg | 
			String
				streamContents: [ :stream | 
					stream
						nextPut: $";
						nextPutAll: userComment;
						nextPut: $";
						nextPut: Character cr;
						nextPut: Character cr;
						tab ] ]
		ifNil: [ String empty ]