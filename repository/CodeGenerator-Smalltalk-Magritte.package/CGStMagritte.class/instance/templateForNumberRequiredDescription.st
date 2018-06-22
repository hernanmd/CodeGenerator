meta-templates
templateForNumberRequiredDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MANumberDescription new
		accessor: {2};
		label: {3};
		priority: {4};		
		beRequired;
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority }