accessing
resolveTemplates
	" Answer a <FileReference> in the receiver. If the receiver contains many templates, ask the user to resolve which one to use "

	| availTemplates |
	
	^ (availTemplates := self location children) size > 1
		ifTrue: [ self selectTemplate 
			ifNil: [ availTemplates anyOne ]
			ifNotNil: [ : selection | selection ] ]
		ifFalse: [ 
			availTemplates isEmpty 
				ifFalse: [ availTemplates anyOne ] 
				ifTrue: [ FileLocator temp / ('tmp-' , UUIDGenerator next asString , '.txt') ] ]