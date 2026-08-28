naming
instVarNameFor: aString
	"Answer a <String> valid instance-variable name derived from aString: camelCase
	 underscores, strip spaces, lowercase the initial. Answer aString unchanged when empty."

	| name |
	name := self camelCaseUnderscores: aString.
	(name includes: Character space) ifTrue: [
		name := name copyWithoutAll: ' ' ].
	name isEmpty ifTrue: [ ^ name ].
	^ name first asLowercase asString , name allButFirst