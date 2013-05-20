testing
hasAuthoringBehavior
	" Private - Answer <true> if the receiver's has facilities
	for setting authoring information "

	^ ( Smalltalk hasClassNamed: #Author ) 
			or: [ Smalltalk hasClassNamed: #Utilities ]