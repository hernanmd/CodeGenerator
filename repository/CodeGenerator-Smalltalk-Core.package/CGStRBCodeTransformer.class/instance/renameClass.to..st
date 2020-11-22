accessing
renameClass: oldName to: newName 

	| renameSuccess |
	
	renameSuccess := true.
	[ (RBRenameClassRefactoring new 
		className: oldName 
		newName: newName) execute ]
	on: RBRefactoringFailure 
	do: [ : ex | 
		self inform: ex messageText.
		renameSuccess := false ].
	^ renameSuccess