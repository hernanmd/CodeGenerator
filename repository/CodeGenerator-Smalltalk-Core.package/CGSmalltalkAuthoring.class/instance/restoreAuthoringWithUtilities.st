authoring
restoreAuthoringWithUtilities
	"Private - Restore the remembered author identity via the live Utilities class API. A
	 no-op when no Utilities class is present."

	| authorClass |
	(Smalltalk hasClassNamed: #Utilities) ifFalse: [ ^ self ].
	authorClass := Smalltalk at: #Utilities.
	(authorClass respondsTo: #fullName:) ifFalse: [ ^ self ].
	(identity isNil or: [ authorClass fullName = identity ]) ifFalse: [
		authorClass fullName: identity ]