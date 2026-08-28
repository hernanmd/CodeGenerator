private
createClassNamed: aName superclass: aSuperclass category: aCategory
	"Create a class named aName with no class variables. See the classVariables: variant."

	^ self
		  createClassNamed: aName
		  superclass: aSuperclass
		  category: aCategory
		  classVariables: ''