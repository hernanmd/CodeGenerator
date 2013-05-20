code-logging
disableCompilationLogging

	( self targetClass class canUnderstand: #acceptsLoggingOfCompilation )
		ifTrue: [ self targetClass class
						compile: 'acceptsLoggingOfCompilation
	^ false'
						classified: 'compiling' ]