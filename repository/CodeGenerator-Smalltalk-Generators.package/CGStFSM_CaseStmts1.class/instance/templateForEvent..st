accessing
templateForEvent: evt
	" Answer a <String> with the basic family part instantiation template "

	^ '	currentState = #{1} ifTrue: [ ].
' format: { evt }