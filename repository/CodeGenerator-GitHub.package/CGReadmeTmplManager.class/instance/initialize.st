initialization
initialize
	" Private - See superimplementor's comment "
	
	super initialize.
	self defaultTemplateLocation isDirectory 
		ifFalse: [ self class initializeTemplatesDir: self templatesDir ]

