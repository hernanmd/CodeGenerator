naming
validateClassName: aString
	"Answer aString as a valid capitalized class-name fragment: capitalize, camelCase
	 underscores, and remove hyphens and spaces."

	| name |
	name := (ZnUtils isCapitalizedString: aString)
		        ifTrue: [ aString ]
		        ifFalse: [ aString capitalized ].
	name := self camelCaseUnderscores: name.
	(name includes: $-) ifTrue: [ name := name copyWithoutAll: '-' ].
	(name includes: Character space) ifTrue: [
		name := name copyWithoutAll: ' ' ].
	^ name