initialize-release
createProjectClass

	(self projectClassName isNil or: [ self projectClassName isEmpty ])
		ifTrue: [ ^ self inform: 'Missing project class setting' ].
	self 
		generateClassNamed: self projectClassName 
		superclass: self targetSuperclass