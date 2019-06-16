initialization
initialize
	" Private - See superimplementor's comment "
	
	super initialize.
	self templatesDir asFileReference isDirectory 
		ifFalse: [ self class initializeTemplatesDir: self templatesDir ]

