transforming
defineSetterMethod
	| selector definingClass string commentString typeName |
	
	definingClass := self definingClass.
	string := self needsReturnForSetter 
				ifTrue: ['<1s> <4s><r><t><2s><r><r><t>^ <3s> := <4s>']
				ifFalse: ['<1s> <4s><r><t><2s><r><r><t><3s> := <4s>'].
	selector := self safeMethodNameFor: definingClass basedOn: variableName asString , ':'.
	commentString := self buildSetterComment: selector.
	typeName := self buildTypeName: type.
	definingClass 
		compile: (string 
			expandMacrosWith: selector 
			with: commentString 
			with: variableName 
			with: typeName)
		classified: #accessing.
	^selector