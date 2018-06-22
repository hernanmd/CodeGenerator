code-configuration-number
setNumberAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForNumberDescription.
	self generateMethod.	