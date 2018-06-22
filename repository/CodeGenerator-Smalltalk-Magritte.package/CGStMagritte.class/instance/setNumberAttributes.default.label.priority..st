code-configuration-number
setNumberAttributes: aString default: defaultValue label: labelString priority: anInteger 

	self setAttributes: aString 
		default: defaultValue 
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForNumberDefaultDescription.
	self generateMethod.	