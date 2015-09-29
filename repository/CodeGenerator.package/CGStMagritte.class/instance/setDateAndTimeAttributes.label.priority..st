code-configuration-date
setDateAndTimeAttributes: aString label: labelString priority: anInteger 

	self 
		setAttributes: aString 
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForDateAndTimeDescription.
	self generateMethod