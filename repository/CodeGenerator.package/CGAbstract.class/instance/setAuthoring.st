code-authoring
setAuthoring
	" If we open this tool for the first time in another computer then Squeak/Pharo 
	will ask for initials on code generation... then use this guard "

	self hasAuthoringBehavior
		ifTrue: [ 
			self isAuthoringWithAuthor
				ifTrue: [ self setAnonymousWithAuthor ]
				ifFalse: [ self isAuthoringWithUtilities
							ifTrue: [ self setAnonymousWithUtilities ] ] ]