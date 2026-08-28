normalizing
normalizeInstVarName: instVarName
	"Answer a <String> valid instance-variable name from instVarName (an <Association>
	 property-name -> schema). Underscores are removed and the following letter upper-cased
	 (camelCase). Self-contained so it does not depend on removeUnderscores:, which is not in
	 this class's hierarchy (fixes defect F11)."

	| name out upperNext |
	name := instVarName key.
	(name includes: $_) ifFalse: [ ^ name ].
	out := WriteStream on: String new.
	upperNext := false.
	name do: [ :ch |
			ch = $_
				ifTrue: [ upperNext := true ]
				ifFalse: [
						out nextPut: (upperNext
								 ifTrue: [ ch asUppercase ]
								 ifFalse: [ ch ]).
						upperNext := false ] ].
	^ out contents