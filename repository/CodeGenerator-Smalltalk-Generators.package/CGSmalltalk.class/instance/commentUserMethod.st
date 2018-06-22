configuration
commentUserMethod
	" Answer <true> if each new compiled method will include a generic method comment about its creation "
	
	^ userCommentNewMethod
		ifNil: [ userCommentNewMethod := true ]