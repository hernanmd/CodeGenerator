code-logging
disableCompilationLogging
	" Private - Disable the logging of compilation in the target class "
	
	| meta |

	meta := self targetClass class.
	(meta canUnderstand: #acceptsLoggingOfCompilation)
		ifTrue: [ meta compile: 'acceptsLoggingOfCompilation
	^ false'
						classified: 'compiling' ]