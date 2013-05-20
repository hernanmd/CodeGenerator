configuration
commentNewMethod
	" Answer <true> if each new compiled method will include a generic method comment about its creation "
	
	^ commentNewMethod
		ifNil: [ commentNewMethod := true ]