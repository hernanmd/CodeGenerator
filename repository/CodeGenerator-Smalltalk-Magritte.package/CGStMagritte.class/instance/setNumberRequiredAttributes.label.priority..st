code-configuration-number
setNumberRequiredAttributes: aString label: labelString priority: anInteger 

	self setAttributes: aString label: labelString priority: anInteger.
	self sourceString: self templateForNumberRequiredDescription.
	self generateMethod.	