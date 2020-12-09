accessing
sourceString 
	" Answer a <String> with the receiver's contents for the end user "
	
	^ (MustacheTemplate on: super sourceString) value: self readmeContext.
