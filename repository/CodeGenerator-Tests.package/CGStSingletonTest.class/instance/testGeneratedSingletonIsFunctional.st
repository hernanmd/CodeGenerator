tests
testGeneratedSingletonIsFunctional
	"The generated uniqueInstance lazily creates and caches a single instance."

	| cls a b |
	CGStSingleton new
		targetClassPrefix: 'CGTst';
		targetClassCategory: 'CGGeneratedCode-Core';
		targetClass: #Config;
		generateMethods.
	cls := Smalltalk classNamed: 'CGTstConfig'.
	a := cls uniqueInstance.
	b := cls uniqueInstance.
	self assert: a notNil.
	self assert: a == b