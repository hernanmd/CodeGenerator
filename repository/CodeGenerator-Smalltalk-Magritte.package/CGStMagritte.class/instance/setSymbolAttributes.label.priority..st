code-configuration-string
setSymbolAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForSymbolDescription.
	self generateMethod.	