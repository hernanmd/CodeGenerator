naming
singularize: aString
	"Answer aString singularized: drop a trailing lowercase 's' unless the lowercase form is
	 in singularizationExceptions; otherwise unchanged."

	(aString notEmpty and: [ aString last asLowercase = $s ]) ifFalse: [
		^ aString ].
	(self singularizationExceptions includes: aString asLowercase)
		ifTrue: [ ^ aString ].
	^ aString allButLast