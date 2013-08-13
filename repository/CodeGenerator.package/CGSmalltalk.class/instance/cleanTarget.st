code-cleaning
cleanTarget
	" Private - Remove code from a previous generation... "

	shouldCleanTarget
		ifTrue: [ (self classFor: self targetClass) 
					ifNotNilDo: [ : cls | cls removeCategory: self methodCategory ] ]
