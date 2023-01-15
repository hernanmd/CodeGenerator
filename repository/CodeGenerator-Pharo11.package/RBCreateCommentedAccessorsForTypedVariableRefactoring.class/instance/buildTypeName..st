transforming
buildTypeName: aString

	| prefix |

	prefix := (aString first isVowel 
		ifTrue: [ 'an' ] 
		ifFalse: [ 'a' ]).
	^ String streamContents: [ : stream | 
			stream 
				nextPutAll: prefix;
				nextPutAll: aString capitalized ]
