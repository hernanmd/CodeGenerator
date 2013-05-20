code-logging
enableCompilationLogging

	( self targetClass class canUnderstand: #acceptsLoggingOfCompilation )
		ifTrue: [ self targetClass class
						compile: 'acceptsLoggingOfCompilation
	^ true'
						classified: 'compiling' ]