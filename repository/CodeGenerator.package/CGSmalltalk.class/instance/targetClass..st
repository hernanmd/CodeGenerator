accessing
targetClass: aClass
	" Configure aClass as the class where the code will be written "

	(targetClass := self classFor: aClass) isNil
		ifTrue: [ self generateClass: aClass ].
	targetClass := self classFor: aClass.