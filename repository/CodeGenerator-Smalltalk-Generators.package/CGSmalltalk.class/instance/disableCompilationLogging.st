code-logging
disableCompilationLogging
	" Private - Disable the logging of compilation in the target class "
	
	| meta |

	meta := self targetClass isMeta 
		ifFalse: [ (self classFor: self targetClass) class ]
		ifTrue: [ self classFor: self targetClass ].
	(meta canUnderstand: #acceptsLoggingOfCompilation)
		ifTrue: [ meta 
			compile: 'acceptsLoggingOfCompilation
	^ false'
			classified: 'compiling' ]