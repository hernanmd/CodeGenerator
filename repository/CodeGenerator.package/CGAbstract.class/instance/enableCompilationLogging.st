code-logging
enableCompilationLogging
	" Private - Enable the logging of compilation in the target class "

	| meta |
	meta := self targetClass class.
	(meta canUnderstand: #acceptsLoggingOfCompilation)
		ifTrue: [ meta
						compile: 'acceptsLoggingOfCompilation
	^ true'
						classified: 'compiling' ]