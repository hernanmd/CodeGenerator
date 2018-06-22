code-configuration
setAttributes: aString default: defaultValue label: labelString priority: anInteger 

	self 
		attributeName: aString capitalized;
		attributeAccessor: '#' , aString;
		attributeLabel: labelString surroundedBySingleQuotes;
		attributePriority: anInteger;
		attributeDefault: defaultValue.