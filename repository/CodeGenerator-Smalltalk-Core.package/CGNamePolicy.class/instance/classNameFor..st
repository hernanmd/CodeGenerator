naming
classNameFor: aString
	"Answer a <String> valid, prefixed, singularized Smalltalk class name derived from
	 aString (a property/definition name). Collision rule: last-wins (pure function of input)."

	^ self prefix , (self singularize: (self validateClassName: aString))