*CodeGenerator
withoutUnderscores
	" Assume the receiver to be a Smalltalk selector. Remove invalid Characters from the receiver, for example : $_ , and capitalize next character occurrences "
	
	| writeStream upperCaseNext |
	
	upperCaseNext := false.
	writeStream := WriteStream on: (self new: 10).
	self pairsDo: [ : a : b |
		a = $_ 
			ifTrue: [ writeStream nextPut: b asUppercase  ]
			ifFalse: [ 
				upperCaseNext 
					ifFalse: [ writeStream nextPut: a ]
					ifTrue: [ writeStream nextPut: a asUppercase ].
				upperCaseNext := false.
				b = $_
					ifFalse: [ writeStream nextPut: b ]
					ifTrue: [ upperCaseNext := true ] ] ].
	writeStream contents size = (self size - (self occurrencesOf: $_))
		ifFalse: [ writeStream nextPut: self last ].
	^ writeStream contents