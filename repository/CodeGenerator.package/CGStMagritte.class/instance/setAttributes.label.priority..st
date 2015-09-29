code-configuration
setAttributes: aString label: labelString priority: anInteger 

	self 
		attributeName: aString capitalized;
		attributeAccessor: '#' , aString;
		attributeLabel: labelString surroundedBySingleQuotes;
		attributePriority: anInteger