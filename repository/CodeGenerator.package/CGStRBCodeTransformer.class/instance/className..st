accessing
className: anObject

	className := anObject.
	model := RBNamespace new classNamed: className; yourself.
	theClass := (RBClass existingNamed: className asSymbol)
				model: model;
				yourself.	
