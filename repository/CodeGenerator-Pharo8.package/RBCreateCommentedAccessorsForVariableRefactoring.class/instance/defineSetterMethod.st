transforming
defineSetterMethod
	| selector definingClass string commentString |
	
	definingClass := self definingClass.
	string := self needsReturnForSetter 
				ifTrue: ['<1s> anObject<r><t><2s><r><r><t>^ <3s> := anObject']
				ifFalse: ['<1s> anObject<r><t><2s><r><r><t><3s> := anObject'].
	selector := self safeMethodNameFor: definingClass
				basedOn: variableName asString , ':'.
	commentString := self buildSetterComment: selector.
	definingClass 
		compile: (string expandMacrosWith: selector with: commentString with: variableName)
		classified: #accessing.
	^selector