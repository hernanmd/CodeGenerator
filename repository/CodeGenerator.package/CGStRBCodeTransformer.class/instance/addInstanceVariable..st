code-generation
addInstanceVariable: iVarName

	| model className theClass |

	className := self targetClass name.
	model := RBNamespace new classNamed: className; yourself.
	theClass := (RBClass existingNamed: className)
				model: model;
				yourself.	
	[(RBAddInstanceVariableRefactoring 
			model: model
			variable: iVarName
			class: theClass) execute.]
	on: RBRefactoringError 
	do: [ : ex | (ex messageText includesSubstring: 'its subclasses defines variable')
			ifFalse: [ self halt ] ]