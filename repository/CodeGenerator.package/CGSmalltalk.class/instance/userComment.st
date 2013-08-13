accessing
userComment
	" Answer a String with the method comment configured by the user "

	^ userComment
		ifNotNil: [ :arg | 
			String
				streamContents: [ :stream | 
					stream
						nextPutAll: userComment between: $" -> $";
						nextPut: Character cr;
						nextPut: Character cr;
						tab ] ]
		ifNil: [ String empty ]