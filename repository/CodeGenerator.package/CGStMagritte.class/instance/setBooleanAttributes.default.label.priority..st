code-configuration-boolean
setBooleanAttributes: aString default: defaultValue label: labelString priority: anInteger 
	
	self 
		setAttributes: aString 
		default: defaultValue
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForBooleanDefaultDescription.
	self generateMethod