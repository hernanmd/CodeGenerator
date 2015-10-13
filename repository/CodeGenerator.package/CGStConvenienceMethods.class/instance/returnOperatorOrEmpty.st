private
returnOperatorOrEmpty
	" Answer the return operator <String> if set "

	^ addReturn 
		ifTrue: [ '^' ]
		ifFalse: [ String empty ]