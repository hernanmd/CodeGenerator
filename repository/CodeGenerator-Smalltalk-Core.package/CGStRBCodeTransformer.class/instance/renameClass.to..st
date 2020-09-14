accessing
renameClass: oldName to: newName 

	(RBRenameClassRefactoring new 
		className: oldName 
		newName: newName) execute