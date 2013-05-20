accessing
defaultParserClass
	" Private - See superimplementor's comment "

	^ (Smalltalk hasClassNamed: #RBParser)
		ifTrue: [ self classFor: #RBParser ]
		ifFalse: [ self classFor: #Parser ]