code-getters
sourceCodeAt: aSelector
	" Private - Answer a String with the source code of aSelector "

	^ ( self methodNodeAt: aSelector ) newSource.