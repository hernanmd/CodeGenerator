meta-templates
templateForDateAndTimeDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MADateAndTimeDescription new
		accessor: {2};
		label: {3};
		priority: {4};		
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority }