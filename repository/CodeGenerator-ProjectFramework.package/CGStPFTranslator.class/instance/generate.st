accessing
generate

	self buildMethodHeader.
	self addStatement: '^ (self translatorClass forLanguage: #EN) translationMap '.
	(self inputClass class selectors select: #isUnary) do: [ : selector |
		| userMessage |
		 (userMessage := self inputClass perform: selector) isString 
		ifTrue: [
			self addStatement: (self generateTranslation: selector value: userMessage) ] ].
	self addStatement: 'yourself.'.
	self generateMethod.
	^ self sourceString inspect.