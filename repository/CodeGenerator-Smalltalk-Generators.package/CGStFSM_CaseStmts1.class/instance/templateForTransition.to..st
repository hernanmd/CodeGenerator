accessing
templateForTransition: src to: dst
	" Answer a <String> with the basic family part instantiation template "

	^ '	currentState = #{1} ifTrue: [ currentState := #{2} ].
' format: { src . dst }