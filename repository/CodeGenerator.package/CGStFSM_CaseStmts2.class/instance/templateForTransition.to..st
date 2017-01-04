accessing
templateForTransition: src to: dst
	" Answer a <String> with the basic family part instantiation template "

	^ '	currentState = #{1} ifTrue: [ ^ self someMessageSendIn{2} ].
' format: { src . dst }