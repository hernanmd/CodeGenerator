code-authoring
restoreAuthoring
	" Private - Restore authoring information "

	(self useAuthoring and: [ self hasAuthoringBehavior ])
		ifTrue: [ self isAuthoringWithAuthor
				ifTrue: [ self restoreAuthoringWithAuthor ]
				ifFalse: [ self isAuthoringWithUtilities
							ifTrue: [ self restoreAuthoringWithUtilities ] ] ]
