meta-templates
templateForOneToOneDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MAToOneRelationDescription new
		accessor: {2};
		label: {3};
		priority: {4};
		classes: {5};
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority .
			self attributeClasses }