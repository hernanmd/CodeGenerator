running
tearDown
	"Remove any classes generated during a test (prefix 'CGTst') so the suite is idempotent."

	(Smalltalk globals keys select: [ :k |
		 k asString beginsWith: 'CGTst' ]) do: [ :k |
		Smalltalk removeClassNamed: k ].
	super tearDown