initialize-release
createApplicationClass

	(self applicationClassName isNil or: [ self applicationClassName isEmpty ])
		ifTrue: [ ^ self inform: 'Missing application class setting' ].
	self 
		generateClassNamed: self applicationClassName 
		superclass: self targetApplicationSuperclass