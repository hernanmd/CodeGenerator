code-generation
generateClassNamed: aClassName superclass: aSuperclassName
	(self classFor: aSuperclassName)
		subclass: aClassName asSymbol
		instanceVariableNames: String empty
		classVariableNames: self classVarNames
		poolDictionaries: String empty
		category: self targetClassCategory