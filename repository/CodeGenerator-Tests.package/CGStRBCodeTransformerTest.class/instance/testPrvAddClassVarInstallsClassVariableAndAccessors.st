tests - class variables
testPrvAddClassVarInstallsClassVariableAndAccessors
	"prvAddClassVar:withAccessorsIn: installs a class variable (capitalized) and its class-side
	 accessors via the modern #execute API (regression for primitiveExecute and #asClass)."

	| engine cls |
	engine := self newEngineWithTargetClass: 'Widget'.
	engine codeTransformer
		prvAddClassVar: 'registry'
		withAccessorsIn: 'CGTstWidget'.
	cls := Smalltalk classNamed: 'CGTstWidget'.
	self assert:
		(cls classVarNames anySatisfy: [ :n | n asString = 'Registry' ]).
	self assert: (cls class includesSelector: #registry)