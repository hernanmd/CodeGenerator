code-configuration-string
setPasswordAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForPasswordDescription.
	self generateMethod.	