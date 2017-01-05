accessing - utilities
doSomethingElse
	" Answer a <String> for doing something in the receiver code stream "

	^ doSomethingElse
		ifNil: [ doSomethingElse := self defaultDoSomething ]
