*codegenerator
asSourceCode
	" Answer a String with a suitable representation of the receiver as source code.
	  Depends on InstanceEncoder package "
	
	^ String streamContents: [ : contents |
			contents
				nextPutAll: 	self asEncodedString;
				nextPutAll: ''' reconstituteObject' ]
	
