accessing
importResources
	" Private - See superclass implementor "

	self filesInPath
		do: [ :fName | | text  |
			text := self fileContents: fName.
			self targetSelector: (self asSelector: fName asFileReference basename).
			self generateFor: text ].
