accessing
importResources
	" Private - See superimplementor's comment "
	
	self filesInPath do: [ : fName | 
		| picture selector |
		picture := ImageReadWriter formFromStream: (FileStream readOnlyFileNamed: fName) binary.
		selector := self asSelector: fName asFileReference basename.
		self generateFor: picture selector: selector ].
