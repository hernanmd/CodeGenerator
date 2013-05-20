code-cleaning
cleanTarget
	" Private - Remove code from a previous generation... "

	| theClass |
	cleanTarget
		ifTrue: [ ( theClass := self classFor: self targetClass ) 
					ifNotNil: [ theClass removeCategory: self methodCategory ] ]
