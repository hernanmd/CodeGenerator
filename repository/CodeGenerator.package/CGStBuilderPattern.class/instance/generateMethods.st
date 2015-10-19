code-generation
generateMethods
	" Private - Generate target methods from receiver's selectors "
	
	| abstractBuilderClass |
	
	abstractBuilderClass := self targetClass.
	abstractBuilderClass withAllSubclassesDo: [ : builderClass |
		self targetClass: builderClass.
		1 to: self productClassesCount do: [ : clsIndex | 
			self sourceString: (self templateForAddFamilyPart: clsIndex).
			self generateMethod ] ]