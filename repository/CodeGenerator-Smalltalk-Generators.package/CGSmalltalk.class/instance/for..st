accessing
for: anObject
	" Private - To review "

	anObject isForm
		ifTrue: [ self setSourceAsText ]
		ifFalse: [ self setSourceAsCode ]
