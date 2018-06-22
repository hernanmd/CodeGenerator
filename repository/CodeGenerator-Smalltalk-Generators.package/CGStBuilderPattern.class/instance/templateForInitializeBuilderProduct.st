code-templates
templateForInitializeBuilderProduct
	" Answer a <String> with the basic family part instantiation template "

	self halt.
	^ 'initialize
	
	^ self product: {1} new' format: { self concreteClassNamePattern }