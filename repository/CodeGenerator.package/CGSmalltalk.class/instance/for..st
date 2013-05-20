accessing
for: anObject

	anObject isForm
		ifTrue: [ self setSourceAsText ]
		ifFalse: [ self setSourceAsCode ]
