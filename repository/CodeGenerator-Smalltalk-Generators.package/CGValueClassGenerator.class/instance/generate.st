generation
generate
	"Generate the value class by composing a CGGenerationSession (no engine subclassing):
	 create the target class, add a typed instance variable with accessors per field, and
	 generate a #fieldCount method via the fail-fast method-build lifecycle. Answer the
	 generated class."

	| session |
	session := context newSession.
	session targetClass: className.
	self fields keysAndValuesDo: [ :name :type |
		session addInstanceVariable: name type: type ].
	session
		generateMethod: 'fieldCount'
		body: '^ ' , self fields size printString.
	^ session currentClass