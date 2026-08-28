generation
compileInClass
	"Private - Compile the current sourceString into the metaclass of the target class,
	 under the target method category. Uses the Grease platform when one is registered,
	 otherwise compiles directly (Pharo 13 images may have no GRPlatform current)."

	| metaclass |
	self logCompilationStart.
	metaclass := (self classFor: self targetClass) class.
	[
		self platform
			ifNil: [
					metaclass
						compile: self sourceString
						classified: self targetMethodCategory ]
			ifNotNil: [ :p |
					p
						compile: self sourceString
						into: metaclass
						classified: self targetMethodCategory ] ]
		on: OCUndeclaredVariableWarning , Warning
		do: [ :ex | self logCompilationWarn: ex ].
	self logCompilationEnd