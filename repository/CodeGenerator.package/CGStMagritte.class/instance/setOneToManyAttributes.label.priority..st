code-configuration-lists
setOneToManyAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForOneToManyDescription.
	self generateMethod.	