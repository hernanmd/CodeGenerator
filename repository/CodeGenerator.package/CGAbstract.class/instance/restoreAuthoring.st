code-authoring
restoreAuthoring
	" Private - Restore authoring information "

	self hasAuthoringBehavior
		ifTrue: [
			self isAuthoringWithAuthor
				ifTrue: [ self restoreAuthoringWithAuthor ]
				ifFalse: [ self isAuthoringWithUtilities
							ifTrue: [ self restoreAuthoringWithUtilities ]	
				] 
		]
