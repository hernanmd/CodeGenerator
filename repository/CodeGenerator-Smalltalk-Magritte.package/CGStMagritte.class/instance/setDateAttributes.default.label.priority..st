code-configuration-date
setDateAttributes: aString default: defaultDate label: labelString priority: anInteger 
	
	self 
		setAttributes: aString 
		default: defaultDate asString surroundedBySingleQuotes , ' asDate'
		label: labelString 
		priority: anInteger.
	self sourceString: self templateForDateDefaultDescription.
	self generateMethod.
		