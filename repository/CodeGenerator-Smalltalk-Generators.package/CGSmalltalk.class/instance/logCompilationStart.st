logging
logCompilationStart
	" Private - Inform start of compilation "
	
	| currentSelector |
	
	(currentSelector := self targetSelector) isNil
		ifTrue: [ currentSelector := self sourceString lines first ].

	self logInfo: 'Start compiling ' , 
		(self classFor: self targetClass) name , 
		'>>' , 
		currentSelector.