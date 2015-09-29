accessing
importResources
	" Private - See superclass implementor "

	self filesInPath
		do: [ :fName | | text selector |
			text := self fileContents: fName.
			selector := self asSelector: fName asFileReference basename.
		self generateFor: text selector: selector ].
