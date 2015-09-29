meta-templates
templateForSingleOptionDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MASingleOptionDescription new
		accessor: {2};
		label: {3};
		priority: {4};
		options: {5};
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority .
			self attributeOptions }