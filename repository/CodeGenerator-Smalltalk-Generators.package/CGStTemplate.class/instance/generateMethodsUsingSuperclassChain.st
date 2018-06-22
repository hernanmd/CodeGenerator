code-generation
generateMethodsUsingSuperclassChain
	" Private - Generate target instance and class methods, and perform do-its selectors "
	
	self generateMethodsFromInstanceTemplates.
	self generateMethodsFromClassTemplates.
	self doItsSelectors do: [ : sel | self perform: sel ]		