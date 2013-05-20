code-authoring
restoreAuthoringWithAuthor
	" Private - This is suitable for Pharo "

	| authorClass |
	
	authorClass := Smalltalk at: #Author. 
	( identity isNil or: [ authorClass fullName = identity ] )
		ifFalse: [ authorClass fullName: identity ]

