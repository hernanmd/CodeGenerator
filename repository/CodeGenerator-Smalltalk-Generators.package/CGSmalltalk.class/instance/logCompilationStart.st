logging
logCompilationStart
	" Private - Inform start of compilation "

	| currentSelector |
	(currentSelector := self targetSelector)
		ifNil: [ currentSelector := self sourceString lines first ].
	self
		logInfo:
			'Start compiling ' , (self classFor: self targetClass) name , '>>'
				, currentSelector