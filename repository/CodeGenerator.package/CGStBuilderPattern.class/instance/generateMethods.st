code-generation
generateMethods
	" Private - Generate target methods from receiver's selectors "
	
	| abstractBuilderClass |
	
	self halt.
	abstractBuilderClass := self targetClass.
	abstractBuilderClass withAllSubclassesDo: [ : builderClass |
		self targetClass: builderClass.
		super generateMethods. ]