defaults
defaultTargetTestCategory
	"Answer a <String> 'PackageName-Tests' derived from the input class's package, using the
	 current Package>>name API (Pharo 13 removed systemCategoryPrefix). Falls back to
	 'Generated-Tests' when no input class is configured."

	| base |
	base := (self inputClass notNil and: [ self inputClass isBehavior ])
		ifTrue: [ self inputClass package name ]
		ifFalse: [ 'Generated' ].
	^ base , '-Tests'