printing
printOn: aStream
	" See superimplementor's comment "
	
	aStream 	
		nextPutAll: badgeName asString
		between: $( and: $) 