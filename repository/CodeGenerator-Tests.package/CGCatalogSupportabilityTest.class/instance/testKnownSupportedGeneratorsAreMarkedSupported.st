tests
testKnownSupportedGeneratorsAreMarkedSupported
	"Req 10: the design-pattern/FSM/hierarchy generators that complete a headless smoke path
	 are marked #supported (and answer isSupported)."

	#( #CGStSingleton #CGStAbstractClassPattern #CGStBuilderPattern
	   #CGStCreationalPattern #CGStStateMachine #CGStTHStateMachine
	   #CGStFSM_CaseStmts3 #CGStHierarchyCreator ) do: [ :cn |
			| cls |
			cls := Smalltalk classNamed: cn.
			self assert: cls isSupported.
			self assert: cls supportabilityStatus equals: #supported ]