authoring
restoreAuthoringWithAuthor
	"Private - Restore the remembered author identity via the live Author class API. A no-op
	 when no Author class is present."

	| authorClass |
	(Smalltalk hasClassNamed: #Author) ifFalse: [ ^ self ].
	authorClass := Smalltalk at: #Author.
	(authorClass respondsTo: #fullName:) ifFalse: [ ^ self ].
	(identity isNil or: [ authorClass fullName = identity ]) ifFalse: [
		authorClass fullName: identity ]