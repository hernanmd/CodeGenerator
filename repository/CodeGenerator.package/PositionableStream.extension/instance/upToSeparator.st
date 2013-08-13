*codegenerator
upToSeparator
	"Answer a subcollection from position to the occurrence (if any, exclusive) of a separator.
	The stream is left positioned after the separator.
	If no separator is found answer everything."

	| newStream element |
	newStream := WriteStream on: collection class new.
	[ self atEnd ]
		whileFalse: [ 
			element := self next.
			element isSeparator
				ifTrue: [ ^ newStream contents ].
			newStream nextPut: element ].
	^ newStream contents