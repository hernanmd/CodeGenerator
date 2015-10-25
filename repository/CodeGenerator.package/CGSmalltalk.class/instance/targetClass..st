accessing
targetClass: aClassOrSymbol
	" Configure aClass as the class where the code will be written "

	(targetClass := self classFor: aClassOrSymbol) isNil
		ifTrue: [ self generateClass: aClassOrSymbol ].
	targetClass := self classFor: aClassOrSymbol.