meta-templates
templateForNumberRequiredDefaultDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MANumberDescription new
		accessor: {2};
		label: {3};
		priority: {4};
		default: {5};
		beRequired;
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority .
			self attributeDefault }