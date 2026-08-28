tests - instance variables
testPrvAddIVarWithAccessorsInstallsIvarAndAccessors
	"prvAddIVarWithAccessors: installs an untyped instance variable and its accessors on the
	 target class via the modern #execute API (regression for primitiveExecute)."

	| engine cls |
	engine := self newEngineWithTargetClass: 'Widget'.
	engine codeTransformer prvAddIVarWithAccessors: 'color'.
	cls := Smalltalk classNamed: 'CGTstWidget'.
	self assert: (cls instVarNames includes: 'color').
	self assert: (cls includesSelector: #color).
	self assert: (cls includesSelector: #color:)