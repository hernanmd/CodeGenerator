accessing
userComment
	" Answer a String with the method comment configured by the user "
	
	^ userComment 
		ifNotNil: [ 
			String streamContents: [: stream | 
				stream 
					nextPutAll: userComment between: $" -> $";
					cr; cr; tab ] ]
		ifNil: [ String empty ]