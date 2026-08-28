tests
testInputAndResourceGeneratorsAreFlaggedNotSupportedSilently
	"Req 10: generators needing domain input or external resources are explicitly flagged
	 (#requiresInput / #requiresResources), not left as silent DNUs, and answer isSupported false."

	#( #CGStConvenienceMethods #CGStFSM_CaseStmts1 #CGStFSM_CaseStmts2 )
		do: [ :cn |
				self
					assert: (Smalltalk classNamed: cn) supportabilityStatus
					equals: #requiresInput ].
	#( #CGStImageImporter #CGStResourceImporter #CGStTextImporter
	   #CGStSpcMenuBuilder ) do: [ :cn |
			self
				assert: (Smalltalk classNamed: cn) supportabilityStatus
				equals: #requiresResources ].
	self deny: CGStResourceImporter isSupported