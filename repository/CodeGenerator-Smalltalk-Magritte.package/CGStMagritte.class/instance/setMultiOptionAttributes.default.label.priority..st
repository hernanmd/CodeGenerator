code-configuration-lists
setMultiOptionAttributes: aString default: defaultOptions label: labelString priority: anInteger 

	self 
		setAttributes: aString 
		default: defaultOptions
		label: labelString 
		priority: anInteger.
	self attributeOptions: Array empty.
	self sourceString: self templateForMultipleOptionDefaultDescription.
	self generateMethod	