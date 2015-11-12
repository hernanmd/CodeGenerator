code-cleaning
targetClassRB

	| className model theClass |
	
	className := self targetClass name.
	model := RBNamespace new classNamed: className; yourself.
	theClass := (RBClass existingNamed: className)
				model: model;
				yourself.	
	^ theClass