accessing
importResources
	" Private - See superimplementor's comment "
	
	self filesInPath do: [ : fName | 
		| picture  |
		picture := ImageReadWriter formFromStream: fName asFileReference readStream binary.
		self targetSelector: (self asSelector: fName asFileReference basename).
		self generateFor: picture ].
