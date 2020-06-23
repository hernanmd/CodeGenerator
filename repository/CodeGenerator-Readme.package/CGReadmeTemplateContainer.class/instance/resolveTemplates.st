accessing
resolveTemplates
	" Answer a <FileReference> in the receiver. If the receiver contains many templates, ask the user to resolve which one to use "

	| availTemplates |
	^ (availTemplates := self location children) size > 1
		ifTrue:
			[ self selectTemplate ifNil: [ availTemplates anyOne ] ]
		ifFalse: [ availTemplates
				ifEmpty: [ FileLocator temp / ('tmp-' , UUIDGenerator next asString , '.txt') ]
				ifNotEmpty: [ availTemplates anyOne ] ]