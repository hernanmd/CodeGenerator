code-generation
generateMethods
	" Private - Generate target methods from receiver's selectors "
	
	| abstractBuilderClass |
	
	abstractBuilderClass := self targetClass.
	abstractBuilderClass allSubclassesDo: [ : builderClass |
		self targetClass: builderClass.
		1 to: self productPartsPerFamilyCount do: [ : clsIndex | 
			self sourceString: (self templateForCreateFamilyPart: clsIndex).
			self generateMethod ] ]