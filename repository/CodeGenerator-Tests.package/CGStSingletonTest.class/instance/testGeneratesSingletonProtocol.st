tests
testGeneratesSingletonProtocol
	"CGStSingleton generateMethods installs the singleton class-side protocol and the
	 UniqueInstance class variable on the target class (regression that the template
	 machinery works under Pharo 13)."

	| cls |
	CGStSingleton new
		targetClassPrefix: 'CGTst';
		targetClassCategory: 'CGGeneratedCode-Core';
		targetClass: #Config;
		generateMethods.
	cls := Smalltalk classNamed: 'CGTstConfig'.
	self assert: cls notNil.
	self assert: (cls class includesSelector: #uniqueInstance).
	self assert: (cls class includesSelector: #new).
	self assert: (cls class includesSelector: #resetUniqueInstance).
	self assert:
		(cls classVarNames anySatisfy: [ :n | n asString = 'UniqueInstance' ])