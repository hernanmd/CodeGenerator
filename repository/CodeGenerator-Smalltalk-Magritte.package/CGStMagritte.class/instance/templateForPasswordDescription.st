meta-templates
templateForPasswordDescription

	^ 'description{1}
	<magitteDescription>
	
	^ MAPasswordDescription new
		beRequired;
		requiredErrorMessage: ''You need to input a password'';		
		accessor: {2};
		label: {3};
		priority: {4};
		group: {5};
		yourself	
	' format: { 
			self attributeName .
			self attributeAccessor .
			self attributeLabel .
			self attributePriority .
			self attributeGroup }