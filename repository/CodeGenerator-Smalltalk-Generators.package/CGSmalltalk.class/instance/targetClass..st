accessing
targetClass: aClassOrSymbol
	" Configure aClassOrSymbol as the class where the code will be written.
	Fix : If aClassOrSymbol already exists and is valid class, then targetClassPrefix is not prefixed and class is not created "

	| newClassName |
	newClassName := aClassOrSymbol.
	(targetClass := self classFor: aClassOrSymbol)
		ifNil: [ newClassName := self hasTargetClassPrefix
				ifTrue: [ self targetClassPrefix , aClassOrSymbol ]
				ifFalse: [ aClassOrSymbol ].
			self generateClass: newClassName ].
	targetClass := self classFor: newClassName