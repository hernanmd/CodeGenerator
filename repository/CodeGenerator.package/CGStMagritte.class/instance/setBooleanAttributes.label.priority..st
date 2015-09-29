code-configuration-boolean
setBooleanAttributes: aString label: labelString priority: anInteger 
	
	self 
		setAttributes: aString 
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForBooleanDescription.
	self generateMethod