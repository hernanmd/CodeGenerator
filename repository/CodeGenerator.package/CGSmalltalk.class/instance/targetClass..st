accessing
targetClass: aClassOrSymbol
	" Configure aClassOrSymbol as the class where the code will be written "

	| newClassName |
	
	newClassName := aClassOrSymbol.
	(targetClass := self classFor: aClassOrSymbol) isNil
		ifTrue: [ 
			newClassName := self hasTargetClassPrefix 
				ifTrue: [ self targetClassPrefix , aClassOrSymbol ].
			self generateClass: newClassName ].
	targetClass := self classFor: newClassName.
