code-configuration-string
setStringAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForStringDescription.
	self generateMethod.	