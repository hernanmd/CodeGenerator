code-configuration-string
setStringAttributes: aString default: defaultValue label: labelString priority: anInteger 

	self setAttributes: aString default: defaultValue label: labelString priority: anInteger.
	self sourceString: self templateForStringDefaultDescription.
	self generateMethod.	