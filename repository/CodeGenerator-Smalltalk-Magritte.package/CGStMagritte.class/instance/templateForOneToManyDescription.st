meta-templates
templateForOneToManyDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MAToManyRelationDescription new
		accessor: {2};
		label: {3};
		priority: {4};
		classes: {5};
		ordered: true;
		componentClass: {6};
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority .
			self attributeClasses .
			self attributeComponentClass }