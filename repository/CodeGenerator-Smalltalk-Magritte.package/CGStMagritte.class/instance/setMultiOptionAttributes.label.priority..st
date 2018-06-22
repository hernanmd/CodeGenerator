code-configuration-lists
setMultiOptionAttributes: aString label: labelString priority: anInteger 

	self 
		setAttributes: aString 
		label: labelString 
		priority: anInteger.
	self attributeOptions: Array empty.
	self sourceString: self templateForMultipleOptionDescription.
	self generateMethod	