meta-templates
templateForSymbolDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MASymbolDescription new
		selectorAccessor: {2};
		label: {3};
		priority: {4};		
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority }