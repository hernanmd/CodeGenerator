accessing - utilities
doSomething
	" Answer a <String> for doing something in the receiver code stream "

	^ doSomething
		ifNil: [ doSomething := self defaultDoSomething ]
