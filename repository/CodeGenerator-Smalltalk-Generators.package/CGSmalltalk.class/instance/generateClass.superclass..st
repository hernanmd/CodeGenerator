code-generation
generateClass: aClassName superclass: aSuperclassName
	" Create the class aClassName as subclass of aSuperclassName and set the target class to aClassName for future method compilations"

	self generateClassNamed: aClassName superclass: aSuperclassName.
	self targetClass: (self classFor: aClassName)