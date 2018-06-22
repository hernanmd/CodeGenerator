visiting
validateClassName: aString
	" Answer a <String> normalized according valid Smalltalk class name "
	
	| validClassName |
	
	validClassName := (ZnUtils isCapitalizedString: aString)
		ifFalse: [ aString capitalized ]
		ifTrue: [ aString ].
	(validClassName includes: $_)
		ifTrue: [ validClassName := validClassName withoutUnderscores ].
	(validClassName includes: $-)
		ifTrue: [ validClassName := validClassName copyWithoutAll: '-' ].
	(validClassName includes: Character space)
		ifTrue: [ validClassName := validClassName copyWithoutAll: ' ' ].
	^ validClassName

	