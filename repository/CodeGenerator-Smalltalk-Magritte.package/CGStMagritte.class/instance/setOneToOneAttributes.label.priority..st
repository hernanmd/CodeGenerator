code-configuration-lists
setOneToOneAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForOneToOneDescription.
	self generateMethod.	