accessing
buildTransitionsCode

	self transitions associations 
		do: [ : assoc | self addStatement: (self templateForTransition: assoc key to: assoc value) ]
		displayingProgress: 'Generating transition code'.