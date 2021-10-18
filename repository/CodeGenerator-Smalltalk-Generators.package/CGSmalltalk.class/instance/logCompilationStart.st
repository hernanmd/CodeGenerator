logging
logCompilationStart
	" Private - Inform start of compilation "

	| currentSelector |
	
	currentSelector := '(selector to be specified in source code)'.
	(self targetSelector isNil and: [ self sourceString notEmpty ])
		ifTrue: [ currentSelector := self sourceString lines first ].
	self
		logInfo:
			'Start compiling ' , (self classFor: self targetClass) name , '>>'
				, currentSelector