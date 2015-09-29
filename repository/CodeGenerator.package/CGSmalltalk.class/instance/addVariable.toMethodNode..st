code-generation-rb
addVariable: var toMethodNode: methodNode
	" Comprobar si está como variable temporal "
	
	(methodNode hasTemporaryNamed: var name)
		ifFalse: [ methodNode body addTemporaryNamed: var name ].