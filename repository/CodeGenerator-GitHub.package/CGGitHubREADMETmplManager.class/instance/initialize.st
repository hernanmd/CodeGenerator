initialization
initialize
	" Private - See superimplementor's comment "
	
	super initialize.
	self templateLocationToUse isDirectory 
		ifFalse: [ self class initializeTemplatesDir: self templatesDir ]

