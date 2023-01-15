accessing
renameClass: oldName to: newName 

	| renameSuccess |
	
	renameSuccess := true.
	[ 	
		| literalOldName literalNewName |
		literalOldName := oldName isLiteral 
			ifFalse: [ oldName name ]
			ifTrue: [ oldName ].
		literalNewName := newName isLiteral
			ifFalse: [ newName name ]
			ifTrue: [ newName ].
		(RBRenameClassRefactoring new 
			className: literalOldName
			newName: literalNewName) execute ]
	on: RBRefactoringFailure 
	do: [ : ex | 
		self inform: ex messageText.
		renameSuccess := false ].
	^ renameSuccess