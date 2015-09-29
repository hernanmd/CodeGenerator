code-configuration-number
setNumberRequiredAttributes: aString default: defaultValue label: labelString priority: anInteger 

	self setAttributes: aString default: defaultValue label: labelString priority: anInteger.
	self sourceString: self templateForNumberRequiredDefaultDescription.
	self generateMethod.	