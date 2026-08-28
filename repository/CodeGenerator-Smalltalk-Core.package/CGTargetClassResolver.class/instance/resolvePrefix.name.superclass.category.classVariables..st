resolving
resolvePrefix: aPrefix name: aBaseName superclass: aSuperclass category: aCategory classVariables: aClassVarString
	"As #resolvePrefix:name:superclass:category:, but a newly created class also declares the
	 space-separated class variables in aClassVarString (a <String>, may be empty)."

	| hasPrefix name existing |
	hasPrefix := aPrefix notNil and: [ aPrefix isEmpty not ].
	name := hasPrefix
		        ifTrue: [ aPrefix , aBaseName ]
		        ifFalse: [ aBaseName ].
	existing := self classNamed: name.
	existing ifNotNil: [ ^ existing ].
	^ self
		  createClassNamed: name
		  superclass: aSuperclass
		  category: aCategory
		  classVariables: aClassVarString