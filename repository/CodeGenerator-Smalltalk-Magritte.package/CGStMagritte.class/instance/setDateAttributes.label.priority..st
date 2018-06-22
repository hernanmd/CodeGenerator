code-configuration-date
setDateAttributes: aString label: labelString priority: anInteger 
	
	self 
		setAttributes: aString 
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForDateDescription.
	self generateMethod.
		