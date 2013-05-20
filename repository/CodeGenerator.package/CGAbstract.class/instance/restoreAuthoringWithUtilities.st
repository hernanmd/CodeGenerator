code-authoring
restoreAuthoringWithUtilities
	" Private - This is suitable for Squeak "

	| authorClass |
	
	authorClass := Smalltalk at: #Utilities. 
	( identity isNil or: [ authorClass fullName = identity ] )
		ifFalse: [ authorClass fullName: identity ]