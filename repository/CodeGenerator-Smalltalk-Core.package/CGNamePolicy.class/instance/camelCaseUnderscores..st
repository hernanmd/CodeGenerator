private
camelCaseUnderscores: aString
	"Answer aString with underscores removed and each following letter upper-cased."

	| out upperNext |
	(aString includes: $_) ifFalse: [ ^ aString ].
	out := WriteStream on: String new.
	upperNext := false.
	aString do: [ :ch |
			ch = $_
				ifTrue: [ upperNext := true ]
				ifFalse: [
						out nextPut: (upperNext
								 ifTrue: [ ch asUppercase ]
								 ifFalse: [ ch ]).
						upperNext := false ] ].
	^ out contents