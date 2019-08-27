accessing
targetClass
	" See comment in owner's targetClass method "

	className := self owner targetClass.
	model := RBNamespace new classNamed: className name; yourself.
	theClass := (RBClass existingNamed: className name)
				model: model;
				yourself.	
	^ theClass