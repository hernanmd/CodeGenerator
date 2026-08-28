running
tearDown

	(Smalltalk globals keys select: [ :k |
		 k asString beginsWith: 'CGTst' ]) do: [ :k |
		Smalltalk removeClassNamed: k ].
	super tearDown