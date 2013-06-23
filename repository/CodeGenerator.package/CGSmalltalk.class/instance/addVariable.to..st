code-generation
addVariable: var to: methodNode
	" Comprobar si está como variable temporal "
	
	(methodNode hasTemporaryNamed: var name)
		ifFalse: [  "Agregar la temporal a methodNode" 
			methodNode body addTemporaryNamed: var name ].